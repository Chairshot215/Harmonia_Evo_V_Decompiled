.class Lcom/htc/launcher/WallpaperManager$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mAction:Ljava/lang/Runnable;

.field private mWorker:Landroid/os/Handler;

.field final synthetic this$0:Lcom/htc/launcher/WallpaperManager;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/WallpaperManager;)V
    .locals 3
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->this$0:Lcom/htc/launcher/WallpaperManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 317
    new-instance v1, Lcom/htc/launcher/WallpaperManager$Receiver$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/launcher/WallpaperManager$Receiver$1;-><init>(Lcom/htc/launcher/WallpaperManager$Receiver;Lcom/htc/launcher/WallpaperManager;)V

    iput-object v1, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->mAction:Ljava/lang/Runnable;

    .line 325
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Local Wallpaper Manager:receive"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 326
    .local v0, t:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 327
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->mWorker:Landroid/os/Handler;

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/WallpaperManager;Lcom/htc/launcher/WallpaperManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/htc/launcher/WallpaperManager$Receiver;-><init>(Lcom/htc/launcher/WallpaperManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/launcher/WallpaperManager$Receiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/htc/launcher/WallpaperManager$Receiver;->stop()V

    return-void
.end method

.method private stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->mWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->mAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 333
    iput-object v2, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->mWorker:Landroid/os/Handler;

    .line 334
    iput-object v2, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->mAction:Ljava/lang/Runnable;

    .line 335
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 339
    const-string v0, "Local Wallpaper Manager"

    const-string v1, "WallpaperManager$Receiver.onReceive()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->mWorker:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->mAction:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->mWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/launcher/WallpaperManager$Receiver;->mAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
