FROM ruby:3.0

# `apt-get install yarn`とするとエラーになる
# プロジェクトに必要なツールをインストール
# &&で繋げてコマンドを実行することによりレイヤーを1つとする
#apt-get update と apt-get installは同一RUN上で行う(分けると最新版を使用できない)
#RUNはイメージの作成次に実行(CMDはコンテナ起動時に実行)
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -qq && apt-get install -y nodejs postgresql-client vim && \
    apt-get install -y yarn

# ディレクトリの作成
RUN mkdir /myapp

# 作業ディレクトリの指定
#RUN ,  COPY,  ADD 命令のみレイヤを作成するためWORKDIRは気にしなくて良い
# 絶対パスとする
WORKDIR /myapp

# Gemfileが更新された時のみ、レイヤを再構築
#先にプロジェクト全体をコピーしないのはレイヤーを分けるため
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
# ライブラリの依存関係をインストール
RUN gem install bundler:2.1.2
RUN bundle install
RUN yarn install
# プロジェクト全体をコピー(Gemfile/Gemfile.lockはコピーされない)
COPY . /myapp

#コンテナを起動する毎に実行されるスクリプトを追加


#コンテナの公開ポート番号の指定
EXPOSE 3000

#指定しなければコンテナ起動時にデフォルトで実行する処理
#Dockerfile では CMD 命令を 1 つしか記述できない
#ENTRYPOINT 命令に対するデフォルト引数としてCMDを使用可能
CMD ["rails", "server", "-b", "0.0.0.0"]