.class Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;
.super Ljava/lang/Object;
.source "VoiceInputMethodService.java"

# interfaces
.implements Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->onCreateInputView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #calls: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->backToPreviousIme()V
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$400(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V

    .line 380
    return-void
.end method

.method public onDisplayLanguageSelectionPopup()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #calls: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->stopRecording()V
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$500(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V

    .line 386
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #calls: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->stopDictation()V
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$600(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V

    .line 387
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #getter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$200(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->displayAudioNotInitialized()V

    .line 388
    return-void
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #getter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceRecognitionDelegate:Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$100(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/VoiceRecognitionDelegate;->notifyAudioEndpointed()V

    .line 373
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #getter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mVoiceInputViewHelper:Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$200(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/view/VoiceInputViewHelper;->displayWorking()V

    .line 374
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #getter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mImeLoggerHelper:Lcom/google/android/voicesearch/ime/ImeLoggerHelper;
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$300(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)Lcom/google/android/voicesearch/ime/ImeLoggerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/ime/ImeLoggerHelper;->onDone()V

    .line 375
    return-void
.end method

.method public onUpdateLanguage(Lcom/google/android/voicesearch/VoiceRecognitionLocale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/VoiceRecognitionLocale;->toBcp47Format()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->mDictationLanguage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$702(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #calls: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->startDictation()V
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$800(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V

    .line 395
    return-void
.end method
