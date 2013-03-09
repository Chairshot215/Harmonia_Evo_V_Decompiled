.class Lcom/android/phone/BluetoothHandsfree$36;
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
    .line 4120
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$36;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x6

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 4124
    array-length v3, p1

    if-ne v3, v0, :cond_0

    aget-object v3, p1, v4

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 4125
    :cond_0
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4143
    :goto_0
    return-object v3

    .line 4127
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$36;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 4128
    .local v1, maxGain:I
    aget-object v3, p1, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4129
    .local v2, scoGain:I
    const-string v3, "Bluetooth HS/HF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+VGS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$36;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 4131
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 4133
    :cond_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$36;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    if-ge v3, v2, :cond_3

    const/16 v3, 0xe

    if-lt v2, v3, :cond_3

    move v2, v1

    .line 4134
    :cond_3
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$36;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    if-ne v3, v1, :cond_4

    if-nez v2, :cond_4

    .line 4135
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$36;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->sendScoGainUpdate(I)V

    .line 4140
    :goto_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$36;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4142
    .local v0, flag:I
    :goto_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$36;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$36;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v5

    invoke-virtual {v3, v7, v5, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4143
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 4137
    .end local v0           #flag:I
    :cond_4
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$36;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothHandsfree;->access$8102(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_1

    :cond_5
    move v0, v4

    .line 4140
    goto :goto_2
.end method
