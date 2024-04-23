# Import CSV file to R
filecsv <- read.csv("musicstreaming.csv")

# Find mean and standard deviation
PE1 <- filecsv$Do.you.find.using.Digital.Music.Streaming.Platform.useful.in.discovering.new.music..
length(PE1)
PE1_Mean <- mean(PE1)
PE1_SD <- sd(PE1)

PE2 <- filecsv$Does.Digital.Music.Streaming.Platform.enable.you.to.easily.create.and.share.playlists.
length(PE2)
PE2_Mean <- mean(PE2)
PE2_SD <- sd(PE2)

PE3 <- filecsv$Do.you.believe.that.using.Digital.Music.Streaming.Platform.will.enhance.your.overall.music.listening.experience.
length(PE3)
PE3_Mean <- mean(PE3)
PE3_SD <- sd(PE3)

PE4 <- filecsv$Do.you.think.using.Digital.Music.Streaming.Platform.will.increase.your.engagement.with.music.related.content.
length(PE4)
PE4_Mean <- mean(PE4)
PE4_SD <- sd(PE4)

EE1 <- filecsv$Do.you.find.navigating.through.Digital.Music.Streaming.Platform.clear.and.understandable.
length(EE1)
EE1_Mean <- mean(EE1)
EE1_SD <- sd(EE1)

EE2 <- filecsv$Do.you.find.Digital.Music.Streaming.Platform.easy.to.use.in.terms.of.searching.for.and.playing.music.
length(EE2)
EE2_Mean <- mean(EE2)
EE2_SD <- sd(EE2)

EE3 <- filecsv$Do.you.believe.it.would.be.easy.for.you.to.become.skilled.in.using.Digital.Music.Streaming.Platform.
length(EE3)
EE3_Mean <- mean(EE3)
EE3_SD <- sd(EE3)


EE4 <- filecsv$Do.you.find.learning.to.use.Digital.Music.Streaming.Platform.easy.
length(EE4)
EE4_Mean <- mean(EE4)
EE4_SD <- sd(EE4)

# Factor the responses
A1 <- factor(filecsv$Do.you.think.using.Digital.Music.Streaming.Platform.is.a.good.way.to.discover.and.enjoy.music., levels = c("Yes", "No", "Neutral"))
A2 <- factor(filecsv$Does.Digital.Music.Streaming.Platform.make.exploring.new.music.interesting.for.you., levels = c("Yes", "No", "Neutral"))
A3 <- factor(filecsv$Do.you.find.using.Digital.Music.Streaming.Platform.enjoyable., levels = c("Yes", "No", "Neutral"))
A4 <- factor(filecsv$Do.you.like.using.Digital.Music.Streaming.Platform.as.your.primary.music.streaming.service., levels = c("Yes", "No", "Neutral"))

SI1 <- factor(filecsv$Do.people.who.share.similar.music.interests.as.you.think.that.you.should.use.Digital.Music.Streaming.Platform., levels = c("Yes", "No", "Neutral"))
SI2 <- factor(filecsv$Do.people.whose.music.taste.you.respect.think.that.you.should.use.Digital.Music.Streaming.Platform., levels = c("Yes", "No", "Neutral"))
SI3 <- factor(filecsv$Has.the.endorsement.of.musicians.or.influencers.influenced.your.decision.to.use.Digital.Music.Streaming.Platform., levels = c("Yes", "No", "Neutral"))

