.class Lcom/htc/dockmode/music/MusicView$3;
.super Landroid/content/BroadcastReceiver;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/music/MusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/music/MusicView;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/music/MusicView;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/dockmode/music/MusicView$3;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 303
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView$3;->this$0:Lcom/htc/dockmode/music/MusicView;

    iget-object v4, v4, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView$3;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;
    invoke-static {v4}, Lcom/htc/dockmode/music/MusicView;->access$200(Lcom/htc/dockmode/music/MusicView;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a000d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 308
    .local v3, noMusic:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 310
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 313
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView$3;->this$0:Lcom/htc/dockmode/music/MusicView;

    iput-boolean v7, v4, Lcom/htc/dockmode/music/MusicView;->mHaveSongsInSD:Z

    .line 314
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView$3;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-virtual {v4, v3}, Lcom/htc/dockmode/music/MusicView;->setErrorText(Landroid/widget/TextView;)V

    goto :goto_0

    .line 318
    :cond_2
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView$3;->this$0:Lcom/htc/dockmode/music/MusicView;

    const/4 v5, 0x0

    #calls: Lcom/htc/dockmode/music/MusicView;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v4, v5}, Lcom/htc/dockmode/music/MusicView;->access$400(Lcom/htc/dockmode/music/MusicView;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 319
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 320
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView$3;->this$0:Lcom/htc/dockmode/music/MusicView;

    iput-boolean v6, v4, Lcom/htc/dockmode/music/MusicView;->mHaveSongsInSD:Z

    .line 328
    :goto_1
    if-eqz v1, :cond_3

    .line 330
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView$3;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-virtual {v4, v3}, Lcom/htc/dockmode/music/MusicView;->setErrorText(Landroid/widget/TextView;)V

    goto :goto_0

    .line 322
    :cond_4
    if-eqz v1, :cond_5

    .line 323
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView$3;->this$0:Lcom/htc/dockmode/music/MusicView;

    iput-boolean v7, v4, Lcom/htc/dockmode/music/MusicView;->mHaveSongsInSD:Z

    goto :goto_1

    .line 325
    :cond_5
    iget-object v4, p0, Lcom/htc/dockmode/music/MusicView$3;->this$0:Lcom/htc/dockmode/music/MusicView;

    iput-boolean v6, v4, Lcom/htc/dockmode/music/MusicView;->mHaveSongsInSD:Z

    goto :goto_1

    .line 331
    :catch_0
    move-exception v2

    .line 332
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/dockmode/music/MusicView;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSDCardScanStatusReceiver, e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
