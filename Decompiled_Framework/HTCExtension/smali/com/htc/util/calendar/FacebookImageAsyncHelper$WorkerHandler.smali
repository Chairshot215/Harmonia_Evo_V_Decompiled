.class Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "FacebookImageAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/calendar/FacebookImageAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/calendar/FacebookImageAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/htc/util/calendar/FacebookImageAsyncHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerHandler;->this$0:Lcom/htc/util/calendar/FacebookImageAsyncHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;

    iget v6, p1, Landroid/os/Message;->arg1:I

    packed-switch v6, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    iget-object v6, p0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerHandler;->this$0:Lcom/htc/util/calendar/FacebookImageAsyncHelper;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->arg1:I

    iput v6, v4, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_0
    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Lcom/htc/graphics/drawable/UrlDrawable;

    iget-object v6, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    iget-object v7, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->url:Ljava/lang/String;

    invoke-static {}, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->access$000()Lcom/htc/graphics/drawable/UrlDrawable$Options;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/htc/graphics/drawable/UrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_1

    if-nez v5, :cond_0

    iput-object v9, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    const-string v6, "FacebookImageAsyncHelper"

    const-string v7, "loadContactThumbnail is null..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "FacebookImageAsyncHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadContactThumbnail exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iput-object v5, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v9, v0, Lcom/htc/util/calendar/FacebookImageAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    const-string v6, "FacebookImageAsyncHelper"

    const-string v7, "loadContactThumbnail fail..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
