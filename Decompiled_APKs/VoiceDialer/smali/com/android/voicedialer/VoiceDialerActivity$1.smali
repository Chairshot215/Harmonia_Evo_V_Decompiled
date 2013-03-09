.class Lcom/android/voicedialer/VoiceDialerActivity$1;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .parameter "profile"
    .parameter "proxy"

    .prologue
    const/4 v5, 0x0

    .line 465
    const-string v2, "VoiceDialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2, p2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2002(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 468
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2000(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 469
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const-string v2, "VoiceDialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceList.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 472
    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2102(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 473
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2000(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2100(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 474
    .local v1, state:I
    const-string v2, "VoiceDialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "headset status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v3, 0x1

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->updateBluetoothParameters(Z)V
    invoke-static {v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2200(Lcom/android/voicedialer/VoiceDialerActivity;Z)V

    .line 485
    .end local v1           #state:I
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->updateBluetoothParameters(Z)V
    invoke-static {v2, v5}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2200(Lcom/android/voicedialer/VoiceDialerActivity;Z)V

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 489
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2002(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 491
    return-void
.end method
