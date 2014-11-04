$(".demo").mambo({
percentage: 100,    // The percentage represented by the badge.
image: none,    // If an image path is specified label will not be considered. The image will be scaled to the maximum size that fits the badge.
label: none,    // The label show in the badge; due to technical limitations the max length i 3 chars. If neither label and image are not set the badge will show the percentage.
labelColor: '#FFF',   // Let you choose the text color. The color will be applied also to the value if showed.
displayValue: true, // Indicates if the value should be displayed or not above the text. If the label is not specified the scripts automatically shows the value.
circleColor: '#F2AC29',   // The color used to fill the internal circle.
circleBorder: '#FFF', // The color used for the internal circle border.
ringStyle: percentage,  // If "percentage" the external ring will be drawn proportionally to the value of the percentage; e.g.: 100% will draw a full circle around the badge, 50% half a circle and so on. If "full" a complete ring is drawn, regardeless of the percentage value.
ringColor: '#F2762E', // The color used for the external ring.
ringBackground: '#CCC',   // If you chose to draw a complete ring using ringstyle: "full", the remaining part of the circle will be filled with this color.
drawShadow: false   // Draw a little shadow on the edge of the badge.
});