.class Lcom/android/mms/ui/AllMessageListActivity$UIHandler;
.super Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;
.source "AllMessageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AllMessageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AllMessageListActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/AllMessageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/mms/ui/AllMessageListActivity$UIHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/AllMessageListActivity;Lcom/android/mms/ui/AllMessageListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AllMessageListActivity$UIHandler;-><init>(Lcom/android/mms/ui/AllMessageListActivity;)V

    return-void
.end method


# virtual methods
.method public childHandleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 778
    const-string v0, "AllMessageListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler:childHandleMessage> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 797
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->childHandleMessage(Landroid/os/Message;)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 781
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity$UIHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity$UIHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/AllMessageListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/mms/ui/AllMessageListActivity$UIHandler;->this$0:Lcom/android/mms/ui/AllMessageListActivity;

    iget-object v0, v0, Lcom/android/mms/ui/AllMessageListActivity;->mListAdapter:Lcom/android/mms/ui/AllMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/AllMessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
