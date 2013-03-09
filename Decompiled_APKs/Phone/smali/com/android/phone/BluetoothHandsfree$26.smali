.class Lcom/android/phone/BluetoothHandsfree$26;
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
    .line 3923
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 6
    .parameter "args"

    .prologue
    const/4 v5, 0x1

    .line 3926
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+BIA args.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    :cond_0
    array-length v2, p1

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3928
    .local v1, ind_num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 3929
    if-lt v0, v5, :cond_2

    const/4 v2, 0x3

    if-gt v0, v2, :cond_2

    .line 3928
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3931
    :cond_2
    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 3932
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4100(Lcom/android/phone/BluetoothHandsfree;)[I

    move-result-object v3

    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v0

    .line 3933
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Bluetooth HS/HF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBiaArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$26;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBiaArray:[I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$4100(Lcom/android/phone/BluetoothHandsfree;)[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3934
    :cond_3
    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3935
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "no change"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3939
    :cond_4
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3942
    :goto_2
    return-object v2

    :cond_5
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_2
.end method
