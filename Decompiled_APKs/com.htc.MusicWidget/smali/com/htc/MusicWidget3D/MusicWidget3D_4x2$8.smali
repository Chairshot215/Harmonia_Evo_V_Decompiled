.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;
.super Landroid/content/BroadcastReceiver;
.source "MusicWidget3D_4x2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;


# direct methods
.method constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V
    .locals 0
    .parameter

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1471
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v3, v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_0

    .line 1473
    const-string v3, "[MusicWidget3D]"

    const-string v4, "mSDCardScanStatusReceiver, mMediaPlaybackService is null!"

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    :goto_0
    return-void

    .line 1477
    :cond_0
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v3, v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mErrorStr:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v3, :cond_1

    .line 1478
    const-string v3, "[MusicWidget3D]"

    const-string v4, "mSDCardScanStatusReceiver, mErrorStr is null!"

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1482
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1483
    .local v0, action:Ljava/lang/String;
    const-string v3, "[MusicWidget3D]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSDCardScanStatusReceiver, action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1488
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iput-boolean v7, v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHaveSongsInSD:Z

    .line 1519
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->setErrorText()V

    goto :goto_0

    .line 1490
    :cond_3
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v3, v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/htc/MusicWidget3D/MusicUtils;->getTrackCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1491
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 1492
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iput-boolean v6, v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHaveSongsInSD:Z

    .line 1507
    :cond_4
    :goto_2
    if-eqz v1, :cond_2

    .line 1508
    if-eqz v1, :cond_2

    .line 1510
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1512
    :catch_0
    move-exception v2

    .line 1513
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "[MusicWidget3D]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSDCardScanStatusReceiver, e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1494
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    if-eqz v1, :cond_6

    .line 1495
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iput-boolean v7, v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHaveSongsInSD:Z

    .line 1496
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1497
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->isServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-boolean v3, v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsNoMusic:Z

    if-ne v3, v7, :cond_4

    .line 1498
    const-string v3, "[MusicWidget3D]"

    const-string v4, "ACTION_MEDIA_SCANNER_FINISHED, update music info delay."

    invoke-static {v3, v4}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v3, v6, v8}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->sendUpdateMusicInfoMessage(ILandroid/os/Bundle;)V

    goto :goto_2

    .line 1504
    :cond_6
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$8;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iput-boolean v6, v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mHaveSongsInSD:Z

    goto :goto_2
.end method
