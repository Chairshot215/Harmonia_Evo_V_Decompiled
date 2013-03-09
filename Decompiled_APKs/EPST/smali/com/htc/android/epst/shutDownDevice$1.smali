.class Lcom/htc/android/epst/shutDownDevice$1;
.super Landroid/os/Handler;
.source "shutDownDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/shutDownDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/shutDownDevice;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/shutDownDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/android/epst/shutDownDevice$1;->this$0:Lcom/htc/android/epst/shutDownDevice;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/epst/shutDownDevice$1;->this$0:Lcom/htc/android/epst/shutDownDevice;

    #calls: Lcom/htc/android/epst/shutDownDevice;->initOTADialog()V
    invoke-static {v0}, Lcom/htc/android/epst/shutDownDevice;->access$000(Lcom/htc/android/epst/shutDownDevice;)V

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-static {}, Lcom/htc/android/epst/shutDownDevice;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "shutDownDevice"

    const-string v1, "EVENT_HTC_CDMA_OTA_REBOOT IN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/shutDownDevice$1;->this$0:Lcom/htc/android/epst/shutDownDevice;

    #calls: Lcom/htc/android/epst/shutDownDevice;->shutdownDevice()V
    invoke-static {v0}, Lcom/htc/android/epst/shutDownDevice;->access$200(Lcom/htc/android/epst/shutDownDevice;)V

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-static {}, Lcom/htc/android/epst/shutDownDevice;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shutDownDevice"

    const-string v1, "EVENT_HTC_REFRESH_DIALOG IN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/htc/android/epst/shutDownDevice$1;->this$0:Lcom/htc/android/epst/shutDownDevice;

    #calls: Lcom/htc/android/epst/shutDownDevice;->refreshRebootDialog()V
    invoke-static {v0}, Lcom/htc/android/epst/shutDownDevice;->access$300(Lcom/htc/android/epst/shutDownDevice;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
