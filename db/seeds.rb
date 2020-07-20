user1 = User.create!(
  password:"hogehoge",
  name: "焼肉太郎",
  email: "yakiniku@example.com",
  delete_flug:1)

user2 = User.create!(
  password:"hogehoge",
  name: "焼肉次郎",
  email: "yakiniku2@example.com",
  delete_flug:1)

quest1 = Quest.create!(
  user: user1,
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
  user: user1,
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
  user: user2,
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

 UserQuest.create!(
    [
      {
      user_id: 1,
      quest_id: 3},
      {
      user_id: 2,
      quest_id: 1}
    ]
  )
UserSubQuest.create!(
    [
      {
      user_id: 1,
      subquest_id: 5},
      {
      user_id: 2,
      subquest_id: 1}
    ]
  )
