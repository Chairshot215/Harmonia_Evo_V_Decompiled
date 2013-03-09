.class Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/RecognitionDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/RecognitionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognitionDialogListener"
.end annotation


# instance fields
.field private mTryAgainResendsAudio:Z

.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->mTryAgainResendsAudio:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/RecognitionActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;-><init>(Lcom/google/android/voicesearch/RecognitionActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->cancel()V

    .line 456
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1200(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    .line 457
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1800(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/speechservice/RecognitionController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mCallback:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1700(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->cancel(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V

    .line 458
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 459
    return-void
.end method

.method public onHelp(Z)V
    .locals 1
    .parameter "hintBubbleVisible"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->helpButtonUsed(Z)V

    .line 464
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->startHelpActivity()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1900(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 465
    return-void
.end method

.method public onSettings()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->launchSettings()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2200(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 483
    return-void
.end method

.method public onTryAgain()V
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->mTryAgainResendsAudio:Z

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->retryReplay()V

    .line 472
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showWorking()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$000(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 473
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->replayLastRecognition()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2000(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 477
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->retry()V

    .line 478
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->initAndStart()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2100(Lcom/google/android/voicesearch/RecognitionActivity;)V

    goto :goto_0
.end method

.method public setTryAgainResendsAudio(Z)V
    .locals 0
    .parameter "tryAgainResends"

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$RecognitionDialogListener;->mTryAgainResendsAudio:Z

    .line 451
    return-void
.end method
