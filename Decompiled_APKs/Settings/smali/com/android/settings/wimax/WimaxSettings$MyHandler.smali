.class Lcom/android/settings/wimax/WimaxSettings$MyHandler;
.super Landroid/os/Handler;
.source "WimaxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wimax/WimaxSettings;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings$MyHandler;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    .line 119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$MyHandler;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/net/wimax/WimaxController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$MyHandler;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/net/wimax/WimaxController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxController;->wimaxRescan()I

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxSettings$MyHandler;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxSettings;->access$100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
