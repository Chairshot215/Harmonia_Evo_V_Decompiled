.class Lcom/android/phone/HtcCdmaLoopbackUtils$1;
.super Landroid/os/Handler;
.source "HtcCdmaLoopbackUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaLoopbackUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaLoopbackUtils;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaLoopbackUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 126
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/HtcCdmaLoopbackUtils$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackUtils;

    iget-boolean v4, v4, Lcom/android/phone/HtcCdmaLoopbackUtils;->inLoopbackMode:Z

    if-eqz v4, :cond_0

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 130
    .local v2, now:J
    iget-object v4, p0, Lcom/android/phone/HtcCdmaLoopbackUtils$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackUtils;

    #getter for: Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayInterval:J
    invoke-static {v4}, Lcom/android/phone/HtcCdmaLoopbackUtils;->access$000(Lcom/android/phone/HtcCdmaLoopbackUtils;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 131
    .local v0, lastTime:J
    :goto_1
    iget-object v4, p0, Lcom/android/phone/HtcCdmaLoopbackUtils$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackUtils;

    #getter for: Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayingTime:J
    invoke-static {v4}, Lcom/android/phone/HtcCdmaLoopbackUtils;->access$100(Lcom/android/phone/HtcCdmaLoopbackUtils;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    .line 132
    iget-object v4, p0, Lcom/android/phone/HtcCdmaLoopbackUtils$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackUtils;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaLoopbackUtils$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackUtils;

    #getter for: Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayInterval:J
    invoke-static {v5}, Lcom/android/phone/HtcCdmaLoopbackUtils;->access$000(Lcom/android/phone/HtcCdmaLoopbackUtils;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/phone/HtcCdmaLoopbackUtils;->access$114(Lcom/android/phone/HtcCdmaLoopbackUtils;J)J

    goto :goto_1

    .line 134
    :cond_1
    iget-object v4, p0, Lcom/android/phone/HtcCdmaLoopbackUtils$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackUtils;

    #calls: Lcom/android/phone/HtcCdmaLoopbackUtils;->triggerLoopbackModeTimer()V
    invoke-static {v4}, Lcom/android/phone/HtcCdmaLoopbackUtils;->access$200(Lcom/android/phone/HtcCdmaLoopbackUtils;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
