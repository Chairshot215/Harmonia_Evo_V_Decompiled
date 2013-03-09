.class Lcom/android/phone/BluetoothHandsfree$7;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHeadsetAtParser()V
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
    .line 3232
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 7
    .parameter "args"

    .prologue
    const/4 v6, 0x6

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 3236
    array-length v3, p1

    if-ne v3, v0, :cond_0

    aget-object v3, p1, v4

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 3237
    :cond_0
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3254
    :goto_0
    return-object v3

    .line 3239
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 3240
    .local v1, maxGain:I
    aget-object v3, p1, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3241
    .local v2, scoGain:I
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 3242
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 3244
    :cond_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    if-ge v3, v2, :cond_3

    const/16 v3, 0xe

    if-lt v2, v3, :cond_3

    move v2, v1

    .line 3246
    :cond_3
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    if-ne v3, v1, :cond_4

    if-nez v2, :cond_4

    .line 3247
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->sendScoGainUpdate(I)V

    .line 3252
    :goto_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3253
    .local v0, flag:I
    :goto_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$8100(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v5

    invoke-virtual {v3, v6, v5, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3254
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 3249
    .end local v0           #flag:I
    :cond_4
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$7;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothHandsfree;->access$8102(Lcom/android/phone/BluetoothHandsfree;I)I

    goto :goto_1

    :cond_5
    move v0, v4

    .line 3252
    goto :goto_2
.end method
