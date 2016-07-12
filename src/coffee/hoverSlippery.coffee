###
	HoverSlippery - The jQuery plugin for doing cool hovers on inline navigations
	by Mogeli lortkipanidze (lortkipanidzemogeli@gmail.com)
	
	Licensed under WTFPL. xD
###

(($, window) ->

	$.fn.hoverSlippery = (options) ->
		defaults =
			bgColor 		: '#394264'
			speed 			: 300,
			radius 			: '5px',
			border			: false,
			borderColor 	: '#efefef',
			borderTop 		: 0,
			borderStyle 	: 'solid',
			borderWidth 	: '1px', 
			borderTopLine 	: false,
			twiceBorder 	: false

		options = $.extend(defaults, options);

		this.each ->
			$this = $(this)
			$defaultsBorderOptions = defaults.borderWidth + ' ' + defaults.borderStyle + ' ' + defaults.borderColor;

			$this.find('ul').append("<li class='slippery'></li>");

			$active = $('.active')
			$slippery = $this.find('.slippery')
			$actionElement = $this.find('a')
			$this.css({
				'position' 	: 'relative'
				'display'	:  'table'
			})

			$this.find('li *').css({
				'position' 		: 'relative'
				'z-index'		: '2'
			});

			$slippery
				.width($active.width())
				.height($this.height())
				.attr('heir__left', $active.find("a").position().left)
				.attr('heir__width', $active.width())
				.css({
					'position'			: 'absolute',
					top					: 0,
					left 				: $active.find('a').position().left,
					'border-radius'		: defaults.radius
				});

			if !defaults.border
				$slippery.css({ backgroundColor : defaults.bgColor });
			else if defaults.twiceBorder
				$slippery.css({
					'border-radius' : 0,
					'border-top' : $defaultsBorderOptions,
					'border-bottom' : $defaultsBorderOptions
				})
			else if defaults.underline
				$slippery.css({
					'border-radius' : 0,
					'border-bottom' : $defaultsBorderOptions
				})
			else if defaults.overline
				$slippery.css({
					'border-radius' : 0,
					'border-top' : $defaultsBorderOptions
				})
			else
				$slippery.css({
					backgroundColor 	: 'none',
					'border-bottom'		: $defaultsBorderOptions,
					top					: defaults.borderTop,
					borderRadius 		: 0
				})

			$actionElement.click ->
				$thisEl = $(this)
				$thisElParent = $thisEl.parents('li')
				$thisElParentPosLeft = $thisElParent.position().left

				if $thisElParentPosLeft isnt $slippery.attr('heir__left')
					$this.find('li').each ->
						$(this).removeClass('active')
						$thisElParent.addClass('active')
					$slippery
						.attr('heir__left', $thisElParentPosLeft)
						.attr('heir__width', $thisElParent.width());
				
			$actionElement.hover(
				() ->
					$actionElement = $(this);

					$leftPos = $actionElement.position().left;
					$width = $actionElement.parent().width();
					$slippery.stop().animate({
						left : $leftPos,
						width : $width					
					}, defaults.speed)
				() ->
					$slippery.stop().animate({

						left: $slippery.attr('heir__left'),
						width: $slippery.attr('heir__width')

					}, defaults.speed);
			)
			
) jQuery