.class Lcom/htc/csengine/service/CSEngineService$WorkerHandler;
.super Landroid/os/Handler;
.source "CSEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/csengine/service/CSEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field public static final GET_DEVICE_CONFIG:I = 0x3ea

.field public static final GET_DEVICE_MODEL_PROFILE:I = 0x3eb

.field public static final GET_DEVICE_REGIONS:I = 0x3e9

.field public static final PUT_DEVICE_PROFILE:I = 0x3e8

.field public static final STOP_SERVICE:I = 0x3ec


# instance fields
.field final synthetic this$0:Lcom/htc/csengine/service/CSEngineService;


# direct methods
.method public constructor <init>(Lcom/htc/csengine/service/CSEngineService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;->this$0:Lcom/htc/csengine/service/CSEngineService;

    .line 159
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 160
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, endMsg:Landroid/os/Message;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 167
    :pswitch_0
    new-instance v4, Lcom/htc/csengine/service/CSEngineService$PutDeviceProfileRunnable;

    iget-object v5, p0, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-direct {v4, v5, v6}, Lcom/htc/csengine/service/CSEngineService$PutDeviceProfileRunnable;-><init>(Lcom/htc/csengine/service/CSEngineService;Lcom/htc/csengine/service/CSEngineService$1;)V

    .line 168
    .local v4, putDeviceProfile:Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 169
    const/16 v5, 0x3e8

    invoke-virtual {p0, v5}, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;->removeMessages(I)V

    goto :goto_0

    .line 172
    .end local v4           #putDeviceProfile:Ljava/lang/Runnable;
    :pswitch_1
    new-instance v3, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;

    iget-object v5, p0, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-direct {v3, v5, v6}, Lcom/htc/csengine/service/CSEngineService$GetDeviceRegionRunnable;-><init>(Lcom/htc/csengine/service/CSEngineService;Lcom/htc/csengine/service/CSEngineService$1;)V

    .line 173
    .local v3, getDeviceRegion:Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 174
    const/16 v5, 0x3e9

    invoke-virtual {p0, v5}, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;->removeMessages(I)V

    goto :goto_0

    .line 177
    .end local v3           #getDeviceRegion:Ljava/lang/Runnable;
    :pswitch_2
    new-instance v1, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;

    iget-object v5, p0, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-direct {v1, v5, v6}, Lcom/htc/csengine/service/CSEngineService$GetDeviceConfigRunnable;-><init>(Lcom/htc/csengine/service/CSEngineService;Lcom/htc/csengine/service/CSEngineService$1;)V

    .line 178
    .local v1, getDeviceConfig:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 179
    const/16 v5, 0x3ea

    invoke-virtual {p0, v5}, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;->removeMessages(I)V

    goto :goto_0

    .line 182
    .end local v1           #getDeviceConfig:Ljava/lang/Runnable;
    :pswitch_3
    new-instance v2, Lcom/htc/csengine/service/CSEngineService$GetDeviceModelRunnable;

    iget-object v5, p0, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-direct {v2, v5, v6}, Lcom/htc/csengine/service/CSEngineService$GetDeviceModelRunnable;-><init>(Lcom/htc/csengine/service/CSEngineService;Lcom/htc/csengine/service/CSEngineService$1;)V

    .line 183
    .local v2, getDeviceModelProfile:Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 184
    const/16 v5, 0x3eb

    invoke-virtual {p0, v5}, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;->removeMessages(I)V

    goto :goto_0

    .line 187
    .end local v2           #getDeviceModelProfile:Ljava/lang/Runnable;
    :pswitch_4
    const/16 v5, 0x3ec

    invoke-virtual {p0, v5}, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;->removeMessages(I)V

    .line 188
    iget-object v5, p0, Lcom/htc/csengine/service/CSEngineService$WorkerHandler;->this$0:Lcom/htc/csengine/service/CSEngineService;

    invoke-virtual {v5}, Lcom/htc/csengine/service/CSEngineService;->stopSelf()V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
