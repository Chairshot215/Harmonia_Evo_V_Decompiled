.class Lcom/android/phone/BluetoothHandsfree$3;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
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
    .line 2328
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2331
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2344
    :goto_0
    return-void

    .line 2333
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$7100(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2334
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$7200(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2335
    const-string v0, "Bluetooth HS/HF"

    const-string v2, "mToneStopper: mToneGenerator == null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2337
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$7200(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2338
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$7200(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 2339
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$3;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$7202(Lcom/android/phone/BluetoothHandsfree;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
