.class Lcom/android/mms/ui/BlockListActivity$BlocklistWorkingHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BlockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlocklistWorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BlockListActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BlockListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/mms/ui/BlockListActivity$BlocklistWorkingHandler;->this$0:Lcom/android/mms/ui/BlockListActivity;

    .line 255
    invoke-virtual {p1}, Lcom/android/mms/ui/BlockListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 257
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BlockListActivity$BlocklistWorkingHandler;->this$0:Lcom/android/mms/ui/BlockListActivity;

    #getter for: Lcom/android/mms/ui/BlockListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/BlockListActivity;->access$000(Lcom/android/mms/ui/BlockListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/BlockListActivity$BlocklistWorkingHandler;->this$0:Lcom/android/mms/ui/BlockListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/BlockListActivity;->mAdapter:Lcom/android/mms/ui/BlockListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BlockListActivity$BlocklistWorkingHandler;->this$0:Lcom/android/mms/ui/BlockListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/BlockListActivity;->mAdapter:Lcom/android/mms/ui/BlockListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BlockListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/mms/ui/BlockListActivity$BlocklistWorkingHandler;->this$0:Lcom/android/mms/ui/BlockListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/BlockListActivity;->mAdapter:Lcom/android/mms/ui/BlockListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BlockListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
