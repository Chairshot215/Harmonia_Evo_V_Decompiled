.class Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;
.super Ljava/lang/Object;
.source "VoiceInputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/ime/VoiceInputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultsContainer"
.end annotation


# instance fields
.field final alternates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end field

.field final partialResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;"
        }
    .end annotation
.end field

.field final recognitionId:Ljava/lang/String;

.field final text:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "recognitionId"
    .parameter "text"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p4, alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .local p5, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p2, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->recognitionId:Ljava/lang/String;

    .line 743
    iput-object p3, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->text:Ljava/lang/String;

    .line 744
    iput-object p4, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->alternates:Ljava/util/List;

    .line 745
    iput-object p5, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;->partialResults:Ljava/util/List;

    .line 746
    return-void
.end method
