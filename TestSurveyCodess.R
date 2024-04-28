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

FC2 <- factor(filecsv$Do.you.have.a.stable.internet.connection.to.use.Digital.Music.Streaming.Platform.without.interruptions., levels = c("Yes", "No", "Neutral"))
FC3 <- factor(filecsv$Do.you.find.Digital.Music.Streaming.Platform.compatible.with.other.devices.or.platforms.you.use.for.listening.to.music., levels = c("Yes", "No", "Neutral"))
FCO1 <- factor(filecsv$Is.there.a.dedicated.support.team.available.for.assistance.with.any.issues.you.encounter.on.different.Digital.Music.Platform., levels = c("Yes", "No", "Neutral"))

SE1 <- factor(filecsv$Have.you.ever.discover.new.music.effectively.using.Digital.Music.Streaming.Platform.without.external.assistance., levels = c("Yes", "No", "Maybe"))
SE2 <- factor(filecsv$Have.you.ever.troubleshoot.and.resolve.any.technical.issues.you.encounter.on.Digital.Music.Streaming.Platform.by.yourself., levels = c("Yes", "No", "Maybe"))
SE3 <- factor(filecsv$Have.you.ever.effectively.curate.and.manage.your.music.library.on.Digital.Music.Streaming.Platform.independently., levels = c("Yes", "No", "Maybe"))

AX1 <- factor(filecsv$Do.you.feel.anxious.about.missing.out.on.new.music.releases.if.you.don.t.use.Digital.Music.Streaming.Platform., levels = c("Yes", "No", "Neutral"))
AX2 <- factor(filecsv$Does.the.thought.of.accidentally.deleting.your.playlists.or.favorite.tracks.on.Digital.Music.Streaming.Platform.make.you.feel.uneasy., levels = c("Yes", "No", "Neutral"))
AX3 <- factor(filecsv$Since.Digital.Music.Streaming.Platform.offers.features.like.playlist.backup..do.you.feel.less.anxious.about.losing.your.music.collection., levels = c("Yes", "No", "Neutral"))

BI1 <- factor(filecsv$Do.you.intend.to.continue.using.Digital.Music.Streaming.Platform.as.your.primary.music.streaming.service.in.the.next.3.months., levels = c("Yes", "No", "Maybe"))
BI2 <- factor(filecsv$Do.you.predict.you.would.explore.and.use.new.features.introduced.on.Digital.Music.Streaming.Platform.in.the.next.3.months., levels = c("Yes", "No", "Maybe"))
BI3 <- factor(filecsv$Do.you.plan.to.recommend.Digital.Music.Streaming.Platform.to.friends.or.family.members.in.the.next.3.months., levels = c("Yes", "No", "Maybe"))

# Merge responses to dataframe
mergeData <- data.frame(
  ID = c("PE1", "PE2", "PE3", "PE4", "EE1", "EE2", "EE3", "EE4"),
  Strongly_Disagree = c(sum(PE1 == 1), sum(PE2 == 1), sum(PE3 == 1), sum(PE4 == 1), sum(EE1 == 1), sum(EE2 == 1), sum(EE3 == 1), sum(EE4 == 1)),
  Disagree = c(sum(PE1 == 2), sum(PE2 == 2), sum(PE3 == 2), sum(PE4 == 2), sum(EE1 == 2), sum(EE2 == 2), sum(EE3 == 2), sum(EE4 == 2)),
  Neutral = c(sum(PE1 == 3), sum(PE2 == 3), sum(PE3 == 3), sum(PE4 == 3), sum(EE1 == 3), sum(EE2 == 3), sum(EE3 == 3), sum(EE4 == 3)),
  Agree = c(sum(PE1 == 4), sum(PE2 == 4), sum(PE3 == 4), sum(PE4 == 4), sum(EE1 == 4), sum(EE2 == 4), sum(EE3 == 4), sum(EE4 == 4)),
  Strongly_Agree = c(sum(PE1 == 5), sum(PE2 == 5), sum(PE3 == 5), sum(PE4 == 5), sum(EE1 == 5), sum(EE2 == 5), sum(EE3 == 5), sum(EE4 == 5)),
  Mean = c(PE1_Mean, PE2_Mean, PE3_Mean, PE4_Mean, EE1_Mean, EE2_Mean, EE3_Mean, EE4_Mean),
  SD = c(PE1_SD, PE2_SD, PE3_SD, PE4_SD, EE1_SD, EE2_SD, EE3_SD, EE4_SD)
)

mergeData2 <- data.frame(
  ID = c("A1", "A2", "A3", "A4", "SI1", "SI2", "SI3", "FC2", "FC3", "FCO1", "SE1", "SE2", "SE3", "AX1", "AX2", "AX3", "BI1", "BI2", "BI3"),
  Yes = c(sum(A1 == "Yes"), sum(A2 == "Yes"), sum(A3 == "Yes"), sum(A4 == "Yes"), sum(SI1 == "Yes"), sum(SI2 == "Yes"), sum(SI3 == "Yes"), sum(FC2 == "Yes"), sum(FC3 == "Yes"), sum(FCO1 == "Yes"), sum(SE1 == "Yes"), sum(SE2 == "Yes"), sum(SE3 == "Yes"), sum(AX1 == "Yes"), sum(AX2 == "Yes"), sum(AX3 == "Yes"), sum(BI1 == "Yes"), sum(BI2 == "Yes"), sum(BI3 == "Yes")),
  No = c(sum(A1 == "No"), sum(A2 == "No"), sum(A3 == "No"), sum(A4 == "No"), sum(SI1 == "No"), sum(SI2 == "No"), sum(SI3 == "No"), sum(FC2 == "No"), sum(FC3 == "No"), sum(FCO1 == "No"), sum(SE1 == "No"), sum(SE2 == "No"), sum(SE3 == "No"), sum(AX1 == "No"), sum(AX2 == "No"), sum(AX3 == "No"), sum(BI1 == "No"), sum(BI2 == "No"), sum(BI3 == "No")),
  Neutral = c(sum(A1 == "Neutral"), sum(A2 == "Neutral"), sum(A3 == "Neutral"), sum(A4 == "Neutral"), sum(SI1 == "Neutral"), sum(SI2 == "Neutral"), sum(SI3 == "Neutral"), sum(FC2 == "Neutral"), sum(FC3 == "Neutral"), sum(FCO1 == "Neutral"), sum(SE1 == "Maybe"), sum(SE2 == "Maybe"), sum(SE3 == "Maybe"), sum(AX1 == "Neutral"), sum(AX2 == "Neutral"), sum(AX3 == "Neutral"), sum(BI1 == "Maybe"), sum(BI2 == "Maybe"), sum(BI3 == "Maybe"))
)

# Write CSV file
write.csv(mergeData, file = "Survey Data (PE1-EE4).csv", row.names = FALSE)
write.csv(mergeData2, file = "Survey Data (A1-BI3).csv", row.names = FALSE)

