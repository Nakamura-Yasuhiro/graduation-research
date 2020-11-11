$(function () {
  $(".flash:not(:animated)").fadeIn("slow", function () {
    $(this).delay(2000).fadeOut("slow");
  });
});


$(function () {
  var setupSpMenuTrigger = function () {
    $('.menu-trigger').on('click', function () {
      $(this).toggleClass('active');
      var headerNavContainer = $('.header-nav-container');
      if ($(this).hasClass('active')) {
        headerNavContainer.css('right', 0);
      } else {
        headerNavContainer.css('right', '-100%');
      }
    });
  };
  
  
  setupSpMenuTrigger();
  // カレントメニューを設定する。
  setupCurrentMenu = function (name) {
    var targetLink = $('.menu-' + name + '-container a');
    targetLink.addClass('current');
    var targetIndex = targetLink.data('switch-target');
    var showTarget = $('.switch-fade-in-target-' + targetIndex);
    showTarget.stop();
    showTarget.fadeIn();
  };
  
  
  $('.switch-fade-trigger').hover(function () {
    var width = $(window).width();
    if (width <= 1024) {
      return;
    }
    if ($(this).hasClass('current')) {
      return;
    }
    var targetIndex = $(this).data('switch-target');
    var showTarget = $('.switch-fade-in-target-' + targetIndex);
    showTarget.stop();
    showTarget.fadeIn();
  }, function () {
    var width = $(window).width();
    if (width <= 1024) {
      return;
    }
    if ($(this).hasClass('current')) {
      return;
    }
    var targetIndex = $(this).data('switch-target');
    var showTarget = $('.switch-fade-in-target-' + targetIndex);
    showTarget.stop();
    showTarget.fadeOut();
  });
});


$(function () {
  var TopBtn = $('.page_top');
  TopBtn.hide();
  // スクロール位置が100でボタンを表示
  $(window).scroll(function () {
    if ($(this).scrollTop() > 1) {
      TopBtn.fadeIn();
    } else {
      TopBtn.fadeOut();
    }
  });
});