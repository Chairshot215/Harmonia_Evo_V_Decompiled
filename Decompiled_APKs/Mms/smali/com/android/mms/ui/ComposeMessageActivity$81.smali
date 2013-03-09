.class Lcom/android/mms/ui/ComposeMessageActivity$81;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initMediaAttachment(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 14461
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaPicked(Lcom/android/mms/model/MediaModel;)V
    .locals 5
    .parameter "media"

    .prologue
    .line 14466
    const/4 v0, 0x0

    .line 14467
    .local v0, delay_time:I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa8

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14470
    const/16 v0, 0x3e8

    .line 14472
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$81$1;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$81$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$81;Lcom/android/mms/model/MediaModel;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14482
    return-void
.end method

.method public onSlideshowPicked(Landroid/net/Uri;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 14486
    const-string v0, "ComposeMessageActivity"

    const-string v1, "onSlideshowPicked() shouldn\'t been called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14487
    return-void
.end method
