.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;
.super Landroid/os/Handler;
.source "ContactPhoneEmailDataPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v3, 0x7f0a0223

    .line 354
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 356
    :sswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->_ErrorHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;
    invoke-static {v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->_ErrorHandler:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;
    invoke-static {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$100(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;

    move-result-object v2

    iget v2, v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_500_SERVER_ERROR:I

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->getDetailErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showMessage(ILjava/lang/String;)V
    invoke-static {v0, v3, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;ILjava/lang/String;)V

    goto :goto_0

    .line 366
    :sswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showQueryProgress()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$300(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    goto :goto_0

    .line 373
    :sswitch_2
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->dismissQueryProgress()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$400(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V

    goto :goto_0

    .line 381
    :sswitch_3
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const v2, 0x7f0a0320

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showMessage(ILjava/lang/String;)V
    invoke-static {v0, v3, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;ILjava/lang/String;)V

    goto :goto_0

    .line 389
    :sswitch_4
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    const v2, 0x7f0a0321

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->showMessage(ILjava/lang/String;)V
    invoke-static {v0, v3, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :sswitch_5
    const/16 v0, 0x500f

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;->removeMessages(I)V

    .line 399
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1$1;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$1;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto/16 :goto_0

    .line 354
    nop

    :sswitch_data_0
    .sparse-switch
        0x5001 -> :sswitch_0
        0x5005 -> :sswitch_1
        0x5006 -> :sswitch_2
        0x5009 -> :sswitch_3
        0x500a -> :sswitch_4
        0x500f -> :sswitch_5
    .end sparse-switch
.end method
