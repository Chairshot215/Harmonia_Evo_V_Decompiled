.class Lcom/htc/music/ScanningProgressActivity$1;
.super Landroid/os/Handler;
.source "ScanningProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/ScanningProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/ScanningProgressActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/ScanningProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/ScanningProgressActivity$1;->this$0:Lcom/htc/music/ScanningProgressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v0, "mounted"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/ScanningProgressActivity$1;->this$0:Lcom/htc/music/ScanningProgressActivity;

    invoke-virtual {v0}, Lcom/htc/music/ScanningProgressActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/ScanningProgressActivity$1;->this$0:Lcom/htc/music/ScanningProgressActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/htc/music/ScanningProgressActivity$1;->this$0:Lcom/htc/music/ScanningProgressActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/ScanningProgressActivity;->setResult(I)V

    iget-object v0, p0, Lcom/htc/music/ScanningProgressActivity$1;->this$0:Lcom/htc/music/ScanningProgressActivity;

    invoke-virtual {v0}, Lcom/htc/music/ScanningProgressActivity;->finish()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/ScanningProgressActivity$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v7, v0, v1}, Lcom/htc/music/ScanningProgressActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
