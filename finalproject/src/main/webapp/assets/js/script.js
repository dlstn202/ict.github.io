// glamping-N4 [SOLtwPHpw5]
(function() {
  $(function() {
    $(".glamping-N4").each(function() {
      const $block = $(this);
      // Swiper
      const swiper = new Swiper(".glamping-N4 .contents-swiper", {
        slidesPerView: 1,
        spaceBetween: 0,
        allowTouchMove: false,
        loop: true,
        autoplay: {
          delay: 5000,
        },
        pagination: {
          el: ".glamping-N4 .swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".glamping-N4 .swiper-button-next",
          prevEl: ".glamping-N4 .swiper-button-prev",
        },
      });
      // Swiper Play, Pause Button
      const pauseButton = $block.find('.swiper-button-pause');
      const playButton = $block.find('.swiper-button-play');
      playButton.hide();
      pauseButton.show();
      pauseButton.on('click', function() {
        swiper.autoplay.stop();
        playButton.show();
        pauseButton.hide();
      });
      playButton.on('click', function() {
        swiper.autoplay.start();
        playButton.hide();
        pauseButton.show();
      });
    });
  });
})();
// glamping-N7 [EKltWPhQgB]
(function() {
  $(function() {
    $(".glamping-N7").each(function() {
      const $block = $(this);
      // Swiper
      const swiper = new Swiper(".glamping-N7 .contents-swiper", {
        slidesPerView: 'auto',
        spaceBetween: 0,
        allowTouchMove: false,
        loop: true,
        pagination: {
          el: ".glamping-N7 .swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".glamping-N7 .swiper-button-next",
          prevEl: ".glamping-N7 .swiper-button-prev",
        },
      });
    });
  });
})();
// glamping-N9 [FllTwPhQTo]
// (function() {
//   $(function() {
//     $(".glamping-N9").each(function() {
//       const $block = $(this);
//       // Swiper
//       const swiper = new Swiper(".glamping-N9 .contents-swiper", {
//         slidesPerView: 'auto',
//         spaceBetween: 0,
//         allowTouchMove: false,
//         loop: true,
//         autoplay: {
//           delay: 3000,
//         },
//         navigation: {
//           nextEl: ".glamping-N9 .swiper-button-next",
//           prevEl: ".glamping-N9 .swiper-button-prev",
//         },
//       });
//     });
//   });
// })();
// glamping-N33 [vfLtWpiFmM]
(function() {
  $(function() {
    $(".glamping-N33").each(function() {
      const $block = $(this);
      const $calendar = $block.find(".contents-date")
      // Date Range Picker
      $calendar.dateRangePicker({
        container: '.glamping-N33 .contents-top',
        // language:'ko',
        language: 'custom',
        inline: true,
        alwaysOpen: true,
      }).bind('datepicker-first-date-selected', function(event, obj) {
        console.log(obj);
      }).bind('datepicker-change', function(event, obj) {
        console.log(obj);
      });
      // Amount Count Button Click Event
      $block.find(".contents-amount").each(function() {
        const $this = $(this);
        const $amountNumElement = $this.find(".contents-amount-num span");
        $this.on("click", ".btn-minus", function() {
          let amountNum = parseInt($amountNumElement.text());
          if (amountNum > 1) {
            amountNum--;
          }
          $amountNumElement.text(amountNum);
        });
        $this.on("click", ".btn-plus", function() {
          let amountNum = parseInt($amountNumElement.text());
          amountNum++;
          $amountNumElement.text(amountNum);
        });
      });
    });
  });
})();