.class Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;)V
    .locals 0
    .parameter

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 1556
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1557
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1568
    :goto_0
    return-void

    .line 1559
    :pswitch_0
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "UNBLOCK_PIN_COMPLETE - SIM PUK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;

    monitor-enter v2

    .line 1561
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    :goto_1
    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mResult:Z
    invoke-static {v3, v1}, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->access$1402(Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;Z)Z

    .line 1562
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;->access$1502(Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;Z)Z

    .line 1563
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1564
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$UnBlockSimPin$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 1565
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1561
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1557
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
