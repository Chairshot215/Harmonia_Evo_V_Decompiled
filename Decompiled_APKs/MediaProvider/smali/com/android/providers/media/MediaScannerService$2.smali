.class Lcom/android/providers/media/MediaScannerService$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$2;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "data"

    .prologue
    .line 1192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.content.Intent.ACTION_BACKGROUND_OP_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1194
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$2;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaScannerService;->pauseScan()V

    .line 1202
    :goto_0
    return-void

    .line 1196
    :cond_0
    const-string v1, "com.htc.content.Intent.ACTION_BACKGROUND_OP_GO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1197
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$2;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaScannerService;->resumeScan()V

    goto :goto_0

    .line 1200
    :cond_1
    const-string v1, "MediaScannerService"

    const-string v2, "yellow light???"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
