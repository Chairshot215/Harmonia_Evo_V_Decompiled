.class public final Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "QsbLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private experiment_:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

.field private hasExperiment:Z

.field private hasLatency:Z

.field private hasRelativeTimestampMs:Z

.field private hasSearch:Z

.field private hasSearchResultsLatency:Z

.field private hasStart:Z

.field private hasSuggestion:Z

.field private hasVoiceSearch:Z

.field private latency_:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

.field private relativeTimestampMs_:J

.field private searchResultsLatency_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;

.field private search_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

.field private start_:Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

.field private suggestion_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

.field private voiceSearch_:Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1265
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1270
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->latency_:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    .line 1290
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->start_:Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    .line 1310
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->search_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    .line 1330
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->suggestion_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 1350
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->voiceSearch_:Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    .line 1370
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->searchResultsLatency_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;

    .line 1390
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->experiment_:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    .line 1410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->relativeTimestampMs_:J

    .line 1484
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->cachedSize:I

    .line 1265
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1486
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->cachedSize:I

    if-gez v0, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSerializedSize()I

    .line 1490
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->cachedSize:I

    return v0
.end method

.method public getExperiment()Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->experiment_:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    return-object v0
.end method

.method public getLatency()Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->latency_:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    return-object v0
.end method

.method public getRelativeTimestampMs()J
    .locals 2

    .prologue
    .line 1411
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->relativeTimestampMs_:J

    return-wide v0
.end method

.method public getSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->search_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    return-object v0
.end method

.method public getSearchResultsLatency()Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->searchResultsLatency_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1494
    const/4 v0, 0x0

    .line 1495
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasLatency()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1496
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getLatency()Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1499
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1500
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getStart()Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1503
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1504
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1507
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSuggestion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1508
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1511
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasVoiceSearch()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1512
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1515
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSearchResultsLatency()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1516
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSearchResultsLatency()Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1519
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasExperiment()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1520
    const/16 v1, 0x32

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getExperiment()Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1523
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasRelativeTimestampMs()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1524
    const/16 v1, 0x33

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getRelativeTimestampMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1527
    :cond_7
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->cachedSize:I

    .line 1528
    return v0
.end method

.method public getStart()Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->start_:Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    return-object v0
.end method

.method public getSuggestion()Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->suggestion_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    return-object v0
.end method

.method public getVoiceSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->voiceSearch_:Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    return-object v0
.end method

.method public hasExperiment()Z
    .locals 1

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasExperiment:Z

    return v0
.end method

.method public hasLatency()Z
    .locals 1

    .prologue
    .line 1271
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasLatency:Z

    return v0
.end method

.method public hasRelativeTimestampMs()Z
    .locals 1

    .prologue
    .line 1412
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasRelativeTimestampMs:Z

    return v0
.end method

.method public hasSearch()Z
    .locals 1

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSearch:Z

    return v0
.end method

.method public hasSearchResultsLatency()Z
    .locals 1

    .prologue
    .line 1371
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSearchResultsLatency:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 1291
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasStart:Z

    return v0
.end method

.method public hasSuggestion()Z
    .locals 1

    .prologue
    .line 1331
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSuggestion:Z

    return v0
.end method

.method public hasVoiceSearch()Z
    .locals 1

    .prologue
    .line 1351
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasVoiceSearch:Z

    return v0
.end method

.method public setExperiment(Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1394
    if-nez p1, :cond_0

    .line 1395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1397
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasExperiment:Z

    .line 1398
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->experiment_:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    .line 1399
    return-object p0
.end method

.method public setLatency(Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1274
    if-nez p1, :cond_0

    .line 1275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1277
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasLatency:Z

    .line 1278
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->latency_:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    .line 1279
    return-object p0
.end method

.method public setRelativeTimestampMs(J)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasRelativeTimestampMs:Z

    .line 1415
    iput-wide p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->relativeTimestampMs_:J

    .line 1416
    return-object p0
.end method

.method public setSearch(Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1314
    if-nez p1, :cond_0

    .line 1315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1317
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSearch:Z

    .line 1318
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->search_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    .line 1319
    return-object p0
.end method

.method public setStart(Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1294
    if-nez p1, :cond_0

    .line 1295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1297
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasStart:Z

    .line 1298
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->start_:Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    .line 1299
    return-object p0
.end method

.method public setSuggestion(Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1334
    if-nez p1, :cond_0

    .line 1335
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1337
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSuggestion:Z

    .line 1338
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->suggestion_:Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 1339
    return-object p0
.end method

.method public setVoiceSearch(Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 1354
    if-nez p1, :cond_0

    .line 1355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1357
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasVoiceSearch:Z

    .line 1358
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->voiceSearch_:Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    .line 1359
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasLatency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getLatency()Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1461
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getStart()Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1464
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSearch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1465
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1467
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSuggestion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1468
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1470
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasVoiceSearch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1471
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1473
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasSearchResultsLatency()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1474
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getSearchResultsLatency()Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchResultsPageLatency;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1476
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasExperiment()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1477
    const/16 v0, 0x32

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getExperiment()Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1479
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->hasRelativeTimestampMs()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1480
    const/16 v0, 0x33

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->getRelativeTimestampMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1482
    :cond_7
    return-void
.end method
