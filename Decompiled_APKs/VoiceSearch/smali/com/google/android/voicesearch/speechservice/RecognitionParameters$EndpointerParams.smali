.class public Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;
.super Ljava/lang/Object;
.source "RecognitionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EndpointerParams"
.end annotation


# instance fields
.field private mSpeechInputCompleteSilenceLengthMillis:J

.field private mSpeechInputMinimumLengthMillis:J

.field private mSpeechInputPossiblyCompleteSilenceLengthMillis:J

.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const-wide/16 v1, -0x1

    .line 691
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->this$0:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-wide v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->mSpeechInputMinimumLengthMillis:J

    .line 683
    iput-wide v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->mSpeechInputCompleteSilenceLengthMillis:J

    .line 689
    iput-wide v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->mSpeechInputPossiblyCompleteSilenceLengthMillis:J

    .line 692
    invoke-static {p2}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    .line 695
    .local v0, gserviceHelper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getEndpointerCompleteSilenceMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->mSpeechInputCompleteSilenceLengthMillis:J

    .line 697
    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getEndpointerPossiblyCompleteSilenceMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->mSpeechInputPossiblyCompleteSilenceLengthMillis:J

    .line 699
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v2, -0x1

    .line 702
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Landroid/content/Context;)V

    .line 703
    const-string v0, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->mSpeechInputMinimumLengthMillis:J

    .line 705
    const-string v0, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->mSpeechInputCompleteSilenceLengthMillis:J

    .line 707
    const-string v0, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->mSpeechInputPossiblyCompleteSilenceLengthMillis:J

    .line 710
    return-void
.end method


# virtual methods
.method public getSpeechInputCompleteSilenceLengthMillis()J
    .locals 2

    .prologue
    .line 717
    iget-wide v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->mSpeechInputCompleteSilenceLengthMillis:J

    return-wide v0
.end method

.method public getSpeechInputMinimumLengthMillis()J
    .locals 2

    .prologue
    .line 713
    iget-wide v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->mSpeechInputMinimumLengthMillis:J

    return-wide v0
.end method

.method public getSpeechInputPossiblyCompleteSilenceLengthMillis()J
    .locals 2

    .prologue
    .line 721
    iget-wide v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;->mSpeechInputPossiblyCompleteSilenceLengthMillis:J

    return-wide v0
.end method
