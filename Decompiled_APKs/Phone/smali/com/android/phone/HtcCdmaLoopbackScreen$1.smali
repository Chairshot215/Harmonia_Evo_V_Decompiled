.class Lcom/android/phone/HtcCdmaLoopbackScreen$1;
.super Landroid/os/Handler;
.source "HtcCdmaLoopbackScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaLoopbackScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaLoopbackScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 100
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 103
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    #calls: Lcom/android/phone/HtcCdmaLoopbackScreen;->initLoopbackScreen()V
    invoke-static {v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$000(Lcom/android/phone/HtcCdmaLoopbackScreen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    #setter for: Lcom/android/phone/HtcCdmaLoopbackScreen;->mTimerRunning:Z
    invoke-static {v1, v2}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$102(Lcom/android/phone/HtcCdmaLoopbackScreen;Z)Z

    .line 110
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    #calls: Lcom/android/phone/HtcCdmaLoopbackScreen;->periodicUpdateTimer()V
    invoke-static {v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$200(Lcom/android/phone/HtcCdmaLoopbackScreen;)V

    goto :goto_0

    .line 113
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCdmaLoopbackScreen$1;->removeMessages(I)V

    .line 114
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    #setter for: Lcom/android/phone/HtcCdmaLoopbackScreen;->mTimerRunning:Z
    invoke-static {v1, v2}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$102(Lcom/android/phone/HtcCdmaLoopbackScreen;Z)Z

    .line 115
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$1;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    invoke-virtual {v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->finish()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
