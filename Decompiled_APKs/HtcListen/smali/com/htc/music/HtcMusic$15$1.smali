.class Lcom/htc/music/HtcMusic$15$1;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic$15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/HtcMusic$15;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic$15;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$15$1;->this$1:Lcom/htc/music/HtcMusic$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/htc/music/HtcMusic$15$1;->this$1:Lcom/htc/music/HtcMusic$15;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mRewListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$2000(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$15$1;->this$1:Lcom/htc/music/HtcMusic$15;

    iget-boolean v1, v1, Lcom/htc/music/HtcMusic$15;->bREW:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$15$1;->this$1:Lcom/htc/music/HtcMusic$15;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    const-class v3, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v3, "rwstop"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$15$1;->this$1:Lcom/htc/music/HtcMusic$15;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$15$1;->this$1:Lcom/htc/music/HtcMusic$15;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/htc/music/HtcMusic$15;->bREW:Z

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
