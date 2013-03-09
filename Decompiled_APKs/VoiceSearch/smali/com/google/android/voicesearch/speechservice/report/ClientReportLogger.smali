.class public Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;
.super Ljava/lang/Object;
.source "ClientReportLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;,
        Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEditDistance:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

.field private final mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private final mPendingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSegmentHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSegmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->DEBUG:Z

    .line 64
    const-string v0, "ClientReportLogger"

    sput-object v0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mContext:Landroid/content/Context;

    .line 140
    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSuggestionMap:Landroid/util/SparseArray;

    .line 141
    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSuggestionHistory:Ljava/util/Queue;

    .line 142
    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSegmentMap:Ljava/util/Map;

    .line 143
    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSegmentHistory:Ljava/util/Queue;

    .line 144
    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mPendingMessages:Ljava/util/List;

    .line 145
    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)V
    .locals 3
    .parameter "context"
    .parameter "gservicesHelper"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSuggestionMap:Landroid/util/SparseArray;

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSuggestionHistory:Ljava/util/Queue;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSegmentMap:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSegmentHistory:Ljava/util/Queue;

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mPendingMessages:Ljava/util/List;

    .line 120
    new-instance v0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getImeEditDistanceMaxContiguousChars()I

    move-result v1

    int-to-byte v1, v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/GservicesHelper;->getImeEditDistanceMaxNewCharsPerc()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;-><init>(BB)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mEditDistance:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    .line 124
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getObservable()Ljava/util/Observable;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$1;-><init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;)V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 132
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)Lcom/google/android/voicesearch/ime/EditDistanceCalculator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mEditDistance:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;)Lcom/google/android/voicesearch/GservicesHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addSuggestion(Ljava/lang/String;III)V
    .locals 2
    .parameter "segmentId"
    .parameter "suggestionId"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSegmentMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;

    .line 177
    .local v0, segmentEntry:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->addSuggestion(III)V

    .line 180
    :cond_0
    return-void
.end method

.method private createRequestMessage(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 2
    .parameter "messageHeader"
    .parameter "selectedAlternateSpans"

    .prologue
    .line 311
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    .line 312
    .local v0, clientReportBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->addSelectedAlternateSpans(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setRecognitionQualityInfo(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 315
    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeClientReportRequest(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    return-object v1
.end method

.method private createRequestMessageSegmentChanged(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 3
    .parameter "messageHeader"

    .prologue
    .line 331
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    .line 332
    .local v0, clientReportBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->TOO_MANY_USER_CORRECTIONS:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->setCorrectResultStatus(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setRecognitionQualityInfo(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 335
    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeClientReportRequest(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    return-object v1
.end method

.method private createRequestMessageSegmentChanged(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 3
    .parameter "messageHeader"
    .parameter "newText"

    .prologue
    .line 323
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    .line 324
    .local v0, clientReportBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->setCorrectResult(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->OK:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->setCorrectResultStatus(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setRecognitionQualityInfo(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 327
    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeClientReportRequest(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized requeue(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, pendingClientReports:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mPendingMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 293
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->resizePendingMessages()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resizePendingMessages()V
    .locals 2

    .prologue
    .line 301
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mPendingMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mPendingMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addSegment(Ljava/lang/String;Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/String;)V
    .locals 3
    .parameter "segmentId"
    .parameter "messageHeader"
    .parameter "text"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSegmentMap:Ljava/util/Map;

    new-instance v1, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;-><init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/String;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSegmentHistory:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSegmentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSegmentHistory:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 198
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addSuggestion(Ljava/lang/String;ILcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;II)V
    .locals 7
    .parameter "segmentId"
    .parameter "suggestionId"
    .parameter "messageHeader"
    .parameter "selectedAlternateSpan"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSuggestionMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;-><init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Ljava/lang/String;Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$1;)V

    invoke-virtual {v6, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSuggestionHistory:Ljava/util/Queue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->addSuggestion(Ljava/lang/String;III)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSuggestionHistory:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSuggestionMap:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSuggestionHistory:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getPendingClientReports()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mPendingMessages:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 277
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mPendingMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-object v0

    .line 276
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasPendingMessage()Z
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mPendingMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyPossibleSegmentChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "segmentId"
    .parameter "newSegmentText"

    .prologue
    const/4 v2, 0x0

    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSegmentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;

    .line 242
    .local v1, segmentEntry:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;
    if-eqz v1, :cond_1

    .line 243
    sget-boolean v3, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 244
    sget-object v3, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#notifySegmentChanges "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->access$700(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->access$700(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 254
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mEditDistance:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mText:Landroid/text/SpannableStringBuilder;
    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->access$700(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->isDistanceAcceptable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mMessageHeader:Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->access$800(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->createRequestMessageSegmentChanged(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    .line 260
    .local v0, requestMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    :goto_1
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mPendingMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/voicesearch/logging/LoggingService;->createFlushIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 263
    const/4 v2, 0x1

    goto :goto_0

    .line 258
    .end local v0           #requestMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    :cond_3
    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->mMessageHeader:Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->access$800(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->createRequestMessageSegmentChanged(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0       #requestMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    goto :goto_1

    .line 241
    .end local v0           #requestMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .end local v1           #segmentEntry:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized notifySuggestionSelection(ILjava/lang/String;)V
    .locals 7
    .parameter "suggestionId"
    .parameter "selectedText"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 208
    sget-object v4, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#notify "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSuggestionMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;

    .line 212
    .local v3, suggestionEntry:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;
    if-eqz v3, :cond_1

    .line 213
    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->mSelectedAlternateSpan:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    invoke-static {v3}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->access$500(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setSelectedText(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v4

    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->mSegmentId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->access$400(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setSegmentUtteranceId(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v2

    .line 218
    .local v2, selectedAlternateSpans:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->mMessageHeader:Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    invoke-static {v3}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->access$600(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->createRequestMessage(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    .line 220
    .local v0, requestMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mPendingMessages:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/voicesearch/logging/LoggingService;->createFlushIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 224
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mSegmentMap:Ljava/util/Map;

    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->mSegmentId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->access$400(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;

    .line 226
    .local v1, segmentEntry:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;
    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {v1, p1, p2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;->updateSuggestion(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v0           #requestMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .end local v1           #segmentEntry:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SegmentEntry;
    .end local v2           #selectedAlternateSpans:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    :cond_1
    monitor-exit p0

    return-void

    .line 207
    .end local v3           #suggestionEntry:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public sendPendingClientReports()V
    .locals 6

    .prologue
    .line 344
    sget-boolean v4, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 345
    sget-object v4, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->TAG:Ljava/lang/String;

    const-string v5, "#sendPendingClientReports - start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/voicesearch/GservicesHelper;->getSsfeUrl()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, ssfeURl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->getPendingClientReports()Ljava/util/List;

    move-result-object v2

    .line 353
    .local v2, pendingClientReports:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$RequestMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 378
    :goto_0
    return-void

    .line 358
    :cond_1
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeCreateSessionRequestForClientReport(Landroid/content/Context;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 361
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeDestroySessionRequestForClientReport()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v1, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;-><init>(Landroid/content/Context;)V

    .line 365
    .local v1, httpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;
    :try_start_0
    invoke-virtual {v1, v3, v2}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->post(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 366
    sget-boolean v4, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 367
    sget-object v4, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->TAG:Ljava/lang/String;

    const-string v5, "#sendPendingClientReports - done"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/voicesearch/speechservice/connection/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->close()V

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
    :try_start_1
    sget-boolean v4, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 372
    sget-object v4, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->TAG:Ljava/lang/String;

    const-string v5, "#sendPendingClientReports - error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->requeue(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->close()V

    goto :goto_0

    .end local v0           #e:Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->close()V

    throw v4
.end method
