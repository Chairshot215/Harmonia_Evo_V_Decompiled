.class public Lcom/google/android/googlequicksearchbox/DropBoxLogger;
.super Ljava/lang/Object;
.source "DropBoxLogger.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/Logger;


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mDropboxManager:Landroid/os/DropBoxManager;

.field private final mHandler:Landroid/os/Handler;

.field private mLogEntries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

.field private final mRandom:Ljava/util/Random;

.field private final mVersionCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mRandom:Ljava/util/Random;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mVersionCode:I

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mHandler:Landroid/os/Handler;

    .line 70
    const-string v0, "dropbox"

    invoke-virtual {p1, v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mDropboxManager:Landroid/os/DropBoxManager;

    .line 71
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->createEntrySet()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mLogEntries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/DropBoxLogger;)Landroid/os/DropBoxManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mDropboxManager:Landroid/os/DropBoxManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/DropBoxLogger;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->maybeFlushLogs(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/DropBoxLogger;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mLogEntries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    return-object v0
.end method

.method private addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/googlequicksearchbox/DropBoxLogger$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/googlequicksearchbox/DropBoxLogger$2;-><init>(Lcom/google/android/googlequicksearchbox/DropBoxLogger;Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method

.method private static addSuggestions(Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 6
    .parameter "entry"
    .parameter "list"

    .prologue
    .line 226
    if-eqz p1, :cond_2

    .line 227
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 228
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    new-instance v3, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;

    invoke-direct {v3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;-><init>()V

    .line 230
    .local v3, suggestion:Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v2

    .line 231
    .local v2, src:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v2, :cond_0

    .line 232
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->setSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;

    .line 236
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionLogType()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 238
    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->setLogType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;

    .line 242
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;->setIsShortcut(Z)Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;

    .line 244
    invoke-virtual {p0, v3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->addSuggestion(Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    goto :goto_0

    .line 247
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    .end local v2           #src:Lcom/google/android/googlequicksearchbox/Source;
    .end local v3           #suggestion:Lcom/google/android/googlequicksearchbox/QsbLogProto$Suggestion;
    .end local v4           #type:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private createEntrySet()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;-><init>()V

    .line 286
    .local v0, entries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;
    iget v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mVersionCode:I

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->setVersion(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    .line 288
    return-object v0
.end method

.method private createLatencyEntry(II)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    .locals 2
    .parameter "type"
    .parameter "latency"

    .prologue
    .line 213
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;-><init>()V

    .line 214
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->setType(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->setLatency(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    .line 216
    return-object v0
.end method

.method private logLatency(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "query"
    .parameter "latency"
    .parameter "sourceName"

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->shouldLogLatency()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 195
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->createLatencyEntry(II)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v1

    .line 197
    .local v1, latencyEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->setNumChars(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    .line 199
    if-eqz p3, :cond_2

    .line 200
    invoke-virtual {v1, p3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;->setSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    .line 203
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setLatency(Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 204
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    goto :goto_0
.end method

.method private maybeFlushLogs(Z)V
    .locals 3
    .parameter "force"

    .prologue
    .line 254
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 256
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mLogEntries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    .line 260
    .local v0, entries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->getLogItemCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->getLogItemCount()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    if-eqz p1, :cond_0

    .line 267
    :cond_2
    new-instance v1, Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;-><init>(Lcom/google/android/googlequicksearchbox/DropBoxLogger;Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 280
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->createEntrySet()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mLogEntries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    goto :goto_0
.end method

.method private newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    .locals 7

    .prologue
    .line 296
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;-><init>()V

    .line 298
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setRelativeTimestampMs(J)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 300
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/Config;->getExperimentIds()Ljava/util/Set;

    move-result-object v3

    .line 301
    .local v3, experimentIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 302
    new-instance v1, Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    invoke-direct {v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;-><init>()V

    .line 303
    .local v1, experimentEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    .local v2, experimentId:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;->addExperimentId(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;

    goto :goto_0

    .line 306
    .end local v2           #experimentId:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setExperiment(Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 309
    .end local v1           #experimentEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$ExperimentEntry;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method private shouldLogLatency()Z
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getLatencyLogFrequency()I

    move-result v0

    .line 221
    .local v0, freq:I
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mRandom:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public flushLogs()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->maybeFlushLogs(Z)V

    .line 210
    return-void
.end method

.method public logGservicesCacheWait(I)V
    .locals 2
    .parameter "latency"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 113
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->createLatencyEntry(II)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setLatency(Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 114
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    goto :goto_0
.end method

.method public logLatency(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 178
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->wasRequestMade()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getLatency()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->logLatency(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public logSearch(II)V
    .locals 3
    .parameter "startMethod"
    .parameter "numChars"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 155
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    new-instance v1, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    invoke-direct {v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;-><init>()V

    .line 156
    .local v1, searchEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;
    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->setMethod(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    .line 157
    invoke-virtual {v1, p2}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->setNumChars(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setSearch(Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 160
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    goto :goto_0
.end method

.method public logStart(IILjava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V
    .locals 5
    .parameter "onCreateLatency"
    .parameter "latency"
    .parameter "intentSource"
    .parameter
    .parameter "webSource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p4, orderedSources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 84
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    new-instance v3, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    invoke-direct {v3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;-><init>()V

    .line 85
    .local v3, startEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;
    if-eqz p5, :cond_1

    .line 86
    invoke-interface {p5}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->addEnabledSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    .line 88
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Source;

    .line 89
    .local v2, source:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v2, :cond_2

    .line 90
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;->addEnabledSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;

    goto :goto_1

    .line 93
    .end local v2           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setStart(Lcom/google/android/googlequicksearchbox/QsbLogProto$StartEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 94
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    .line 97
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 98
    const/4 v4, 0x0

    invoke-direct {p0, v4, p2}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->createLatencyEntry(II)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setLatency(Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 99
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 103
    const/4 v4, 0x1

    invoke-direct {p0, v4, p1}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->createLatencyEntry(II)Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setLatency(Lcom/google/android/googlequicksearchbox/QsbLogProto$LatencyEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 104
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    goto :goto_0
.end method

.method public logSuggestionClick(JLcom/google/android/googlequicksearchbox/SuggestionList;Ljava/util/Set;Lcom/google/android/googlequicksearchbox/google/GoogleSource;I)V
    .locals 5
    .parameter "clickPosition"
    .parameter "suggestionList"
    .parameter
    .parameter "queriedWebSource"
    .parameter "clickType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p4, queriedSources:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v1

    .line 126
    .local v1, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    new-instance v0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;-><init>()V

    .line 127
    .local v0, clickEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->setClickPosition(J)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 128
    invoke-virtual {v0, p6}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->setClickType(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 131
    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->setNumChars(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 133
    invoke-static {v0, p3}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addSuggestions(Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 135
    if-eqz p5, :cond_1

    .line 136
    invoke-interface {p5}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->getSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->addResultSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    .line 138
    :cond_1
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    .local v3, sourceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v0, v3}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;->addResultSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;

    goto :goto_1

    .line 143
    .end local v3           #sourceName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setSuggestion(Lcom/google/android/googlequicksearchbox/QsbLogProto$SuggestionClickEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 144
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    goto :goto_0
.end method

.method public logVoiceSearch(Z)V
    .locals 3
    .parameter "voiceSearchInstalled"

    .prologue
    .line 165
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->isDropBoxLoggingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->newLogEntry()Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    move-result-object v0

    .line 170
    .local v0, entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    new-instance v1, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    invoke-direct {v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;-><init>()V

    .line 171
    .local v1, voiceSearchEntry:Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;
    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->setVoiceSearchInstalled(Z)Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;

    .line 172
    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;->setVoiceSearch(Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 173
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V

    goto :goto_0
.end method
