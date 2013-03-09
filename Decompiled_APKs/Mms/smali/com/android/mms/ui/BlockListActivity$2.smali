.class Lcom/android/mms/ui/BlockListActivity$2;
.super Lcom/android/mms/ui/MessagingListener;
.source "BlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BlockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BlockListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BlockListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/mms/ui/BlockListActivity$2;->this$0:Lcom/android/mms/ui/BlockListActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConatctInfoChange()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 245
    sget-object v1, Lcom/android/mms/ui/BlockListActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onConatctInfoChange>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/android/mms/ui/BlockListActivity$2;->this$0:Lcom/android/mms/ui/BlockListActivity;

    #getter for: Lcom/android/mms/ui/BlockListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/BlockListActivity;->access$000(Lcom/android/mms/ui/BlockListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v1, p0, Lcom/android/mms/ui/BlockListActivity$2;->this$0:Lcom/android/mms/ui/BlockListActivity;

    #getter for: Lcom/android/mms/ui/BlockListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/BlockListActivity;->access$000(Lcom/android/mms/ui/BlockListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/BlockListActivity$2;->this$0:Lcom/android/mms/ui/BlockListActivity;

    #getter for: Lcom/android/mms/ui/BlockListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/BlockListActivity;->access$000(Lcom/android/mms/ui/BlockListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    return-void
.end method
