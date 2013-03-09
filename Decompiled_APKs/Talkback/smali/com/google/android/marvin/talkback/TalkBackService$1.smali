.class Lcom/google/android/marvin/talkback/TalkBackService$1;
.super Ljava/lang/Object;
.source "TalkBackService.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/CursorController$CursorControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/TalkBackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/TalkBackService;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/TalkBackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/TalkBackService$1;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionPerformed(I)V
    .locals 1
    .parameter "action"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService$1;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    #getter for: Lcom/google/android/marvin/talkback/TalkBackService;->mProcessorFollowFocus:Lcom/google/android/marvin/talkback/ProcessorFollowFocus;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/TalkBackService;->access$1(Lcom/google/android/marvin/talkback/TalkBackService;)Lcom/google/android/marvin/talkback/ProcessorFollowFocus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService$1;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    #getter for: Lcom/google/android/marvin/talkback/TalkBackService;->mProcessorFollowFocus:Lcom/google/android/marvin/talkback/ProcessorFollowFocus;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/TalkBackService;->access$1(Lcom/google/android/marvin/talkback/TalkBackService;)Lcom/google/android/marvin/talkback/ProcessorFollowFocus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->onActionPerformed(I)V

    .line 854
    :cond_0
    return-void
.end method

.method public onGranularityChanged(Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;Z)V
    .locals 5
    .parameter "granularity"
    .parameter "fromUser"

    .prologue
    .line 837
    iget v2, p1, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->resId:I

    .line 838
    .local v2, resId:I
    iget-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService$1;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    invoke-virtual {v3, v2}, Lcom/google/android/marvin/talkback/TalkBackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, name:Ljava/lang/String;
    if-eqz p2, :cond_0

    sget-object v1, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->INTERRUPT:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    .line 844
    .local v1, queuingMode:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;
    :goto_0
    iget-object v3, p0, Lcom/google/android/marvin/talkback/TalkBackService$1;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    #getter for: Lcom/google/android/marvin/talkback/TalkBackService;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;
    invoke-static {v3}, Lcom/google/android/marvin/talkback/TalkBackService;->access$0(Lcom/google/android/marvin/talkback/TalkBackService;)Lcom/google/android/marvin/talkback/SpeechController;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;)V

    .line 845
    return-void

    .line 842
    .end local v1           #queuingMode:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;
    :cond_0
    sget-object v1, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->QUEUE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    goto :goto_0
.end method
