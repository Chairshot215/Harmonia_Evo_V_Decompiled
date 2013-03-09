.class Lcom/google/android/voicesearch/RecognitionActivity$5;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/EditorDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/RecognitionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$5;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$5;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 605
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$5;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1200(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    .line 606
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$5;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2800(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/EditorDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->dismiss()V

    .line 607
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$5;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 608
    return-void
.end method

.method public onGo(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 598
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->shouldWaitForActivityResult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$5;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2800(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/EditorDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/EditorDialog;->dismiss()V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$5;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v1, 0x1

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->startAction(Lcom/google/android/voicesearch/actions/VoiceAction;Z)V
    invoke-static {v0, p1, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2900(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Z)V

    .line 600
    return-void
.end method
