.class Lcom/android/phone/EmergencyDialer$2;
.super Landroid/os/Handler;
.source "EmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 897
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 908
    :goto_0
    return-void

    .line 899
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$000(Lcom/android/phone/EmergencyDialer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 901
    const-string v0, "EmergencyDialer"

    const-string v2, "mToneStopper: mToneGenerator == null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 903
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$2;->this$0:Lcom/android/phone/EmergencyDialer;

    #getter for: Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
