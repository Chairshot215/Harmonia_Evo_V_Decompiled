.class Lcom/htc/android/locationpicker/LocationAgent$3;
.super Landroid/os/Handler;
.source "LocationAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/LocationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationAgent;


# direct methods
.method constructor <init>(Lcom/htc/android/locationpicker/LocationAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationAgent$3;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 432
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 450
    :goto_0
    :pswitch_0
    return-void

    .line 435
    :pswitch_1
    const-string v0, "LocationAgent"

    const-string v1, "HANDLER_UPDATE_STATUS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 440
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$3;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    const/16 v1, 0xc

    #setter for: Lcom/htc/android/locationpicker/LocationAgent;->mCurMode:I
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationAgent;->access$102(Lcom/htc/android/locationpicker/LocationAgent;I)I

    .line 442
    const-string v0, "LocationAgent"

    const-string v1, "HANDLER_TRACKING_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$3;->this$0:Lcom/htc/android/locationpicker/LocationAgent;

    #calls: Lcom/htc/android/locationpicker/LocationAgent;->notifyClient()V
    invoke-static {v0}, Lcom/htc/android/locationpicker/LocationAgent;->access$800(Lcom/htc/android/locationpicker/LocationAgent;)V

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
