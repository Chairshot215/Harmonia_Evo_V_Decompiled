.class Lcom/android/bluetooth/pbap/BluetoothPbapService$2;
.super Landroid/bluetooth/IBluetoothPbap$Stub;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPbap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .locals 5

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    monitor-enter v2

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 755
    :goto_0
    monitor-exit v2

    .line 756
    return-void

    .line 740
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 742
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v3, 0x0

    #setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;
    invoke-static {v1, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1602(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeSocket(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;ZZ)V

    .line 746
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v3, 0x0

    #setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$102(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 750
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v3, 0x0

    const/4 v4, 0x2

    #calls: Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V
    invoke-static {v1, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1800(Lcom/android/bluetooth/pbap/BluetoothPbapService;II)V

    goto :goto_0

    .line 755
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, ex:Ljava/io/IOException;
    :try_start_3
    const-string v1, "BluetoothPbapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught the error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 738
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 716
    const/4 v0, 0x0

    .line 718
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v0

    return v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    #getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
