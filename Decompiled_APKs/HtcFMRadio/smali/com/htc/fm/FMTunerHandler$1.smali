.class Lcom/htc/fm/FMTunerHandler$1;
.super Landroid/os/Handler;
.source "FMTunerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMTunerHandler;->start_stop_notify(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMTunerHandler;

.field final synthetic val$act:I


# direct methods
.method constructor <init>(Lcom/htc/fm/FMTunerHandler;Landroid/os/Looper;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/fm/FMTunerHandler$1;->this$0:Lcom/htc/fm/FMTunerHandler;

    iput p3, p0, Lcom/htc/fm/FMTunerHandler$1;->val$act:I

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 198
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 200
    .local v0, actThread:Landroid/app/ActivityThread;
    if-nez v0, :cond_0

    .line 201
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "FMRadio.start_stop_notify, no activity thread!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 205
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .line 206
    const-string v2, "HtcDeviceInfoManager"

    const-string v3, "FMRadio.start_stop_notify, no context!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_1
    iget v2, p0, Lcom/htc/fm/FMTunerHandler$1;->val$act:I

    #calls: Lcom/htc/fm/FMTunerHandler;->sendMediaBroadcast(Landroid/content/Context;I)V
    invoke-static {v1, v2}, Lcom/htc/fm/FMTunerHandler;->access$000(Landroid/content/Context;I)V

    goto :goto_0
.end method
