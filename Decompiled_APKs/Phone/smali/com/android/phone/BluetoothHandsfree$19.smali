.class Lcom/android/phone/BluetoothHandsfree$19;
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
    .line 3582
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private isValidDtmf(C)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 3613
    sparse-switch p1, :sswitch_data_0

    .line 3618
    const/16 v1, 0xe

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3621
    :goto_0
    :sswitch_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3613
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3585
    array-length v1, p1

    if-lt v1, v3, :cond_3

    .line 3587
    aget-object v1, p1, v2

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3588
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3597
    .local v0, c:C
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$19;->isValidDtmf(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3599
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCDMAToneEnabled:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$9200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3600
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendShortDtmfToNetwork(C)V
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHandsfree;->access$9300(Lcom/android/phone/BluetoothHandsfree;C)V

    .line 3605
    :goto_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1, v0}, Lcom/android/phone/BluetoothHandsfree;->playTone(I)V

    .line 3607
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3610
    .end local v0           #c:C
    :goto_2
    return-object v1

    .line 3591
    :cond_0
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3592
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_2

    .line 3594
    :cond_1
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    goto :goto_0

    .line 3602
    :cond_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$19;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->sendDtmf(C)Z

    goto :goto_1

    .line 3610
    .end local v0           #c:C
    :cond_3
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_2
.end method
