.class Lcom/android/phone/BluetoothHandsfree$11;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 3392
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private sendBRSF()Landroid/bluetooth/AtCommandResult;
    .locals 3

    .prologue
    .line 3394
    const-string v0, "Bluetooth HS/HF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+BRSF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+BRSF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 1

    .prologue
    .line 3412
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$11;->sendBRSF()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 1

    .prologue
    .line 3417
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$11;->sendBRSF()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 3402
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3403
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$11;->this$0:Lcom/android/phone/BluetoothHandsfree;

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHandsfree;->access$4702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3407
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$11;->sendBRSF()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0

    .line 3405
    :cond_0
    const-string v0, "Bluetooth HS/HF"

    const-string v1, "HF didn\'t sent BRSF assuming 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
