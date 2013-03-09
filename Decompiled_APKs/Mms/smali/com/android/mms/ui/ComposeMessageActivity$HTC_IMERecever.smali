.class public Lcom/android/mms/ui/ComposeMessageActivity$HTC_IMERecever;
.super Landroid/content/BroadcastReceiver;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HTC_IMERecever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 16741
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$HTC_IMERecever;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16744
    const-string v2, "SIP_VISIBLE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 16752
    .local v1, sipVisible:Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 16753
    .local v0, Orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 16755
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$HTC_IMERecever;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 16756
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$HTC_IMERecever;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTextEditor;->updateCurrentCount2IME()V

    .line 16758
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$HTC_IMERecever;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setLandscapeIMEbutton()V
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 16760
    :cond_1
    return-void
.end method
