quest1 = Quest.create!(
  title: "自宅で出来るうまい焼肉",
  award: 1)

quest1.sub_quests.create!(
     [
      {
       chapter: "chapter1",
       title: "焼肉のひっくり返し方",
       point: 1,
       content: "hogeしてhogeしたらhogeになる",
       image: File.open("#{Rails.root}/db/fixtures/1.jpg")},
      {
       chapter: "chapter2",
       title: "うまいタレの作り方",
       point: 1,
       content: "hogeしてhogeしたらhogeになる",
       image: File.open("#{Rails.root}/db/fixtures/2.jpg")}
     ]
   )


quest2 = Quest.create!(
  title: "寝ながら痩せるダイエット",
  award: 1)

quest2.sub_quests.create!(
     [
       {
        chapter: "chapter1",
        title: "寝ながらスクワット",
        point: 1,
        content: "hogeしてhogeしたらhogeになる",
        image: File.open("#{Rails.root}/db/fixtures/1.jpg")},
       {
        chapter: "chapter2",
        title: "寝ながら腹筋",
        point: 1,
        content: "hogeしてhogeしたらhogeになる",
        image: File.open("#{Rails.root}/db/fixtures/2.jpg")}
     ]
   )


quest3 = Quest.create!(
  title: "ミニ屋台の出し方",
  award: 1)

quest3.sub_quests.create!(
     [
       {
       chapter: "chapter1",
       title: "スーパーボールすくい",
       point: 1,
       content: "hogeしてhogeしたらhogeになる",
       image: File.open("#{Rails.root}/db/fixtures/1.jpg")},
       {
       chapter: "chapter2",
       title: "わたがし屋",
       point: 1,
       content: "hogeしてhogeしたらhogeになる",
       image: File.open("#{Rails.root}/db/fixtures/2.jpg")}
     ]
   )

