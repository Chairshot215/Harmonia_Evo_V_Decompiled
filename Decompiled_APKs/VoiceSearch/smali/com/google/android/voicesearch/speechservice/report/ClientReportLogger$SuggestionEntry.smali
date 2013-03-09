.class Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;
.super Ljava/lang/Object;
.source "ClientReportLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionEntry"
.end annotation


# instance fields
.field private final mMessageHeader:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

.field private final mSegmentId:Ljava/lang/String;

.field private final mSelectedAlternateSpan:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Ljava/lang/String;Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;)V
    .locals 0
    .parameter
    .parameter "segmentId"
    .parameter "messageHeader"
    .parameter "selectedAlternateSpan"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->mSegmentId:Ljava/lang/String;

    .line 395
    iput-object p3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->mMessageHeader:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 396
    iput-object p4, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->mSelectedAlternateSpan:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    .line 397
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Ljava/lang/String;Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 384
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;-><init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Ljava/lang/String;Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->mSegmentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->mSelectedAlternateSpan:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$SuggestionEntry;->mMessageHeader:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    return-object v0
.end method
