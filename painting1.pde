void setup() {
  size(1200, 800);
  background(255); // بوم سفید
  noStroke();
  noLoop();
}

void draw() {
  // رنگ‌ها
  color pink = color(255, 182, 193); // گل بهی
  color red = color(255, 0, 0); // قرمز
  color gray = color(169, 169, 169); // خاکستری

  // پاشیدن رنگ‌ها
  for (int i = 0; i < 5000; i++) {
    float x = random(width); // موقعیت تصادفی x
    float y = random(height); // موقعیت تصادفی y
    float size = random(5, 15); // اندازه تصادفی لکه‌ها

    // انتخاب رنگ تصادفی
    int c = int(random(3)); 
    if (c == 0) {
      fill(pink, random(100, 255)); // پاشیدن رنگ گل بهی با شفافیت تصادفی
    } else if (c == 1) {
      fill(red, random(100, 255)); // پاشیدن رنگ قرمز با شفافیت تصادفی
    } else {
      fill(gray, random(100, 255)); // پاشیدن رنگ خاکستری با شفافیت تصادفی
    }

    // رسم لکه‌ها
    ellipse(x, y, size, size);
  }
}
