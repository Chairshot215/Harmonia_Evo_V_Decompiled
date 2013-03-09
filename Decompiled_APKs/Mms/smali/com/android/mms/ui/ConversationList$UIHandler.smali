.class Lcom/android/mms/ui/ConversationList$UIHandler;
.super Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$UIHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/ConversationList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1486
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList$UIHandler;-><init>(Lcom/android/mms/ui/ConversationList;)V

    return-void
.end method


# virtual methods
.method public childHandleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1489
    const-string v0, "ConversationList"

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

    .line 1490
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1520
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->childHandleMessage(Landroid/os/Message;)V

    .line 1521
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1492
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$UIHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$UIHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$UIHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1501
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$UIHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$UIHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mUnreadCount:I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$700(Lcom/android/mms/ui/ConversationList;)I

    move-result v1

    #calls: Lcom/android/mms/ui/ConversationList;->updateCountText(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;I)V

    goto :goto_0

    .line 1490
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
