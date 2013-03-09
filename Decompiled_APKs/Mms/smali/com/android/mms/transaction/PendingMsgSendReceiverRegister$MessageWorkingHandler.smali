.class Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$MessageWorkingHandler;
.super Landroid/os/Handler;
.source "PendingMsgSendReceiverRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageWorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$MessageWorkingHandler;->this$0:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    .line 125
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->access$000()Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    move-result-object v0

    #getter for: Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->access$300(Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->sendQueuedMessage(Landroid/content/Context;)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
