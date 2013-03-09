.class Lcom/android/mms/ui/MessageViewActivity$11;
.super Lcom/android/mms/ui/MessagingListener;
.source "MessageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2415
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$11;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConatctInfoChange()V
    .locals 3

    .prologue
    .line 2420
    const-string v0, "MessageViewActivity"

    const-string v1, "Contact info change >>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$11;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageViewActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$11;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mIsForeground:Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1400(Lcom/android/mms/ui/MessageViewActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2428
    :cond_0
    :goto_0
    return-void

    .line 2426
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$11;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mContactHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1500(Lcom/android/mms/ui/MessageViewActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2427
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$11;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mContactHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1500(Lcom/android/mms/ui/MessageViewActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity$11;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mContactHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageViewActivity;->access$1500(Lcom/android/mms/ui/MessageViewActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
