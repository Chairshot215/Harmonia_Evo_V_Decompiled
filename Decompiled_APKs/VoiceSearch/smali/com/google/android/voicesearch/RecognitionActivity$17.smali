.class Lcom/google/android/voicesearch/RecognitionActivity$17;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/TimeoutDialog$TimeoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/RecognitionActivity;
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
    .line 1152
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$17;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$17;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$17;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3600(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/actions/VoiceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 1168
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$17;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v1, 0x1

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showDisambig(Z)V
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1500(Lcom/google/android/voicesearch/RecognitionActivity;Z)V

    .line 1169
    return-void
.end method

.method public onGo()V
    .locals 3

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$17;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3000(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/TimeoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->dismiss()V

    .line 1162
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$17;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$17;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3600(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/actions/VoiceAction;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->startAction(Lcom/google/android/voicesearch/actions/VoiceAction;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2900(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Z)V

    .line 1163
    return-void
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$17;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mTimeoutDialog:Lcom/google/android/voicesearch/TimeoutDialog;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3000(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/TimeoutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->dismiss()V

    .line 1156
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$17;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$17;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mTopResult:Lcom/google/android/voicesearch/actions/VoiceAction;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$3600(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/actions/VoiceAction;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->startAction(Lcom/google/android/voicesearch/actions/VoiceAction;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2900(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Z)V

    .line 1157
    return-void
.end method
