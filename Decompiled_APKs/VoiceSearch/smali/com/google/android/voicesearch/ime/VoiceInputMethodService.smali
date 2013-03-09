.class public Lcom/google/android/voicesearch/ime/VoiceInputMethodService;
.super Landroid/inputmethodservice/InputMethodService;
.source "VoiceInputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;,
        Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ResultsContainer;,
        Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;
    }
.end annotation


# instance fields
.field private mDictationLanguage:Ljava/lang/String;

.field private mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

.field private mHandler:Landroid/os/Handler;

.field private mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

.field private mInputViewActive:Z

.field private mPartialResultMinConfidence:F

.field private mScreenStateMonitor:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;

.field private mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

.field private mVoiceLanguageSelector:Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;

.field private mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 755
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->handleInProgressPartialResults(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->handleInProgressResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->handleResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Lcom/google/android/voicesearch/ime/ImeLoggerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->backToPreviousIme()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->stopRecording()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->stopDictation()V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationLanguage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->startDictation()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->handleError(I)V

    return-void
.end method

.method private backToPreviousIme()V
    .locals 3

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->releaseResources()V

    .line 445
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 446
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 447
    .local v1, token:Landroid/os/IBinder;
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->switchToLastInputMethod(Landroid/os/IBinder;)Z

    .line 448
    return-void
.end method

.method private createHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$2;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$2;-><init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V

    return-object v0
.end method

.method private getPartialText(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 492
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 508
    :cond_1
    :goto_0
    return-object v0

    .line 497
    :cond_2
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getStabilityConfidence()D

    move-result-wide v3

    iget v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mPartialResultMinConfidence:F

    float-to-double v5, v1

    cmpg-double v1, v3, v5

    if-gez v1, :cond_3

    move-object v0, v2

    .line 499
    goto :goto_0

    .line 502
    :cond_3
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getTranscript()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    move-object v0, v2

    .line 505
    goto :goto_0
.end method

.method private handleError(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 513
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->handleError()V

    .line 517
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->displayError(I)V

    .line 518
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->onError()V

    .line 519
    return-void
.end method

.method private handleInProgressPartialResults(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    const/4 v3, 0x1

    .line 522
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#onInProgressPartialResults"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    invoke-virtual {v1, v3}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->displayWaitingForResults(Z)V

    .line 525
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    invoke-virtual {v1, v3}, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->setWaitingForResult(Z)V

    .line 527
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->getPartialText(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 530
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->handlePartialRecognitionResult(Ljava/lang/String;)V

    .line 532
    :cond_0
    return-void
.end method

.method private handleInProgressResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 7
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
    .local p3, alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .local p4, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    const/4 v6, 0x0

    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#onInProgressResults"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    invoke-virtual {v0, v6}, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->setWaitingForResult(Z)V

    .line 540
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->getRecognitionParameters()Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    move-result-object v1

    .line 542
    .local v1, recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isAlternatesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    const/4 p3, 0x0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-direct {p0, p4}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->getPartialText(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->handleRecognitionResult(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    invoke-virtual {v0, v6}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->displayWaitingForResults(Z)V

    .line 554
    return-void
.end method

.method private handleResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "recognitionId"
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p3, alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    if-eqz p2, :cond_1

    .line 559
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->getRecognitionParameters()Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isAlternatesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    const/4 p3, 0x0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->getRecognitionParameters()Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->handleRecognitionResult(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->handleStop()V

    .line 570
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->onResults()V

    .line 571
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->backToPreviousIme()V

    .line 572
    return-void
.end method

.method private interruptDictation()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->stopRecording()V

    .line 428
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->backToPreviousIme()V

    .line 430
    :cond_0
    return-void
.end method

.method private isDictationSupported()Z
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->isDictationSupportedByField()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDictationSupportedByField()Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v12

    iget v3, v12, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 209
    .local v3, inputType:I
    and-int/lit16 v8, v3, 0xfff

    .line 211
    .local v8, variation:I
    const/16 v12, 0x81

    if-ne v8, v12, :cond_1

    move v7, v11

    .line 213
    .local v7, passwordInputType:Z
    :goto_0
    const/16 v12, 0xe1

    if-ne v8, v12, :cond_2

    move v9, v11

    .line 215
    .local v9, webPasswordInputType:Z
    :goto_1
    const/16 v12, 0x12

    if-ne v8, v12, :cond_3

    move v5, v11

    .line 218
    .local v5, numberPasswordInputType:Z
    :goto_2
    if-nez v7, :cond_0

    if-nez v9, :cond_0

    if-eqz v5, :cond_4

    .line 219
    :cond_0
    const-string v11, "VoiceInputMethodService"

    const-string v12, "Voice IME is not supported for password input type"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_3
    return v10

    .end local v5           #numberPasswordInputType:Z
    .end local v7           #passwordInputType:Z
    .end local v9           #webPasswordInputType:Z
    :cond_1
    move v7, v10

    .line 211
    goto :goto_0

    .restart local v7       #passwordInputType:Z
    :cond_2
    move v9, v10

    .line 213
    goto :goto_1

    .restart local v9       #webPasswordInputType:Z
    :cond_3
    move v5, v10

    .line 215
    goto :goto_2

    .line 223
    .restart local v5       #numberPasswordInputType:Z
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 224
    .local v1, editorInfo:Landroid/view/inputmethod/EditorInfo;
    if-eqz v1, :cond_7

    iget-object v12, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 225
    iget-object v12, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v4, :cond_7

    aget-object v6, v0, v2

    .line 226
    .local v6, option:Ljava/lang/String;
    const-string v12, "noMicrophoneKey"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "nm"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 228
    :cond_5
    const-string v11, "VoiceInputMethodService"

    const-string v12, "Voice IME has been disabled for this field"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 225
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v6           #option:Ljava/lang/String;
    :cond_7
    move v10, v11

    .line 233
    goto :goto_3
.end method

.method private isScreenOn()Z
    .locals 2

    .prologue
    .line 200
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 203
    .local v0, powerManager:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private releaseResources()V
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mInputViewActive:Z

    .line 286
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mScreenStateMonitor:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;

    invoke-virtual {v0, p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;->unregister(Landroid/content/Context;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->onFinishInput()V

    .line 297
    :goto_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->stopDictation()V

    .line 298
    return-void

    .line 294
    :cond_0
    const-string v0, "VoiceInputMethodService"

    const-string v1, "onFinishInput - mImeLoggerHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startDictation()V
    .locals 4

    .prologue
    .line 240
    const-string v0, "VoiceInputMethodService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#startRecognition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    .line 243
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->init()V

    .line 245
    new-instance v0, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    .line 246
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationLanguage:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceLanguageSelector:Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;

    iget-object v3, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->getSupportedVoiceImeLocales(Ljava/lang/String;)[Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->setLanguages(Ljava/lang/String;[Lcom/google/android/voicesearch/VoiceRecognitionLocale;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->displayAudioNotInitialized()V

    .line 250
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->isPopupEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationLanguage:Ljava/lang/String;

    new-instance v2, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;-><init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->startRecognitionController(Ljava/lang/String;Lcom/google/android/voicesearch/ime/VoiceInputMethodService$DictationListener;)V

    .line 259
    :cond_0
    return-void
.end method

.method private stopDictation()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->onFinishInput()V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->handleStop()V

    .line 313
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->destroy()V

    .line 315
    :cond_0
    return-void

    .line 307
    :cond_1
    const-string v0, "VoiceInputMethodService"

    const-string v1, "onFinishInput - mVoiceRecognitionDelegate is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopRecording()V
    .locals 2

    .prologue
    .line 433
    const-string v0, "VoiceInputMethodService"

    const-string v1, "#stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->stopListening()V

    .line 435
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/DictationResultHandler;->handleStop()V

    .line 436
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->displayWorking()V

    .line 437
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 480
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 482
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 483
    .local v0, p:Landroid/util/Printer;
    const-string v1, "VoiceIME state :"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDictationResultHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationResultHandler:Lcom/google/android/voicesearch/ime/DictationResultHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mImeLoggerHelper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVoiceInputViewHelper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputViewActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mInputViewActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVoiceLanguageSelector="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceLanguageSelector:Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    .line 337
    const-string v0, "VoiceInputMethodService"

    const-string v1, "#hideWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationLanguage:Ljava/lang/String;

    .line 346
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->backToPreviousIme()V

    .line 347
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->onHideWindow()V

    .line 350
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 351
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 274
    const-string v0, "VoiceInputMethodService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onConfigurationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->releaseResources()V

    .line 280
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 281
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "VoiceInputMethodService"

    const-string v1, "#onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 143
    new-instance v0, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    .line 144
    new-instance v0, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    .line 146
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->createHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;-><init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mScreenStateMonitor:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;

    .line 149
    return-void
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    .prologue
    .line 368
    const-string v0, "VoiceInputMethodService"

    const-string v1, "#onCreateInputView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    new-instance v1, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;-><init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->getView(Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 325
    const-string v0, "VoiceInputMethodService"

    const-string v1, "#onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->destroyRecognitionController()V

    .line 332
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 333
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 457
    .local v3, editorInfo:Landroid/view/inputmethod/EditorInfo;
    if-eqz v3, :cond_2

    .line 458
    iget v6, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v7, 0x1000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v5

    .line 461
    :cond_1
    iget v6, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v7, 0x200

    and-int/2addr v6, v7

    if-nez v6, :cond_0

    .line 466
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 467
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 468
    .local v2, dm:Landroid/util/DisplayMetrics;
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v6

    .line 470
    .local v1, displayHeight:F
    const v6, 0x7f09000a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 471
    .local v0, dimen:F
    cmpl-float v6, v1, v0

    if-gtz v6, :cond_0

    .line 474
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v5

    goto :goto_0
.end method

.method public onFinishInput()V
    .locals 3

    .prologue
    .line 265
    const-string v0, "VoiceInputMethodService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onFinishInput "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->releaseResources()V

    .line 269
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 270
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 3
    .parameter "finishingInput"

    .prologue
    .line 319
    const-string v0, "VoiceInputMethodService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onFinishInputView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 321
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 153
    const-string v1, "VoiceInputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#onStartInputView ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mInputViewActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 156
    iget-boolean v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mInputViewActive:Z

    if-nez v1, :cond_2

    .line 157
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->isDictationSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const-string v1, "VoiceInputMethodService"

    const-string v2, "Voice IME cannot be started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->onStartInputView()V

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mInputViewActive:Z

    .line 166
    new-instance v1, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceLanguageSelector:Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;

    .line 168
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationLanguage:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceLanguageSelector:Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->getDictationLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationLanguage:Ljava/lang/String;

    .line 172
    :cond_1
    invoke-static {p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    .line 175
    .local v0, gservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getPartialResultMinConfidence()F

    move-result v1

    iput v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mPartialResultMinConfidence:F

    .line 177
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->startDictation()V

    .line 178
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mScreenStateMonitor:Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;

    invoke-virtual {v1, p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;->register(Landroid/content/Context;)V

    .line 180
    .end local v0           #gservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;
    :cond_2
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 0
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 412
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 414
    if-eq p3, p4, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->interruptDictation()V

    .line 418
    :cond_0
    return-void
.end method

.method public onViewClicked(Z)V
    .locals 3
    .parameter "focusChanged"

    .prologue
    .line 401
    const-string v0, "VoiceInputMethodService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onViewClicked["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-nez p1, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->interruptDictation()V

    .line 407
    :cond_0
    return-void
.end method

.method public showWindow(Z)V
    .locals 3
    .parameter "showInput"

    .prologue
    .line 355
    const-string v0, "VoiceInputMethodService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#showWindow["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->onShowWindow()V

    .line 359
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 360
    return-void
.end method
