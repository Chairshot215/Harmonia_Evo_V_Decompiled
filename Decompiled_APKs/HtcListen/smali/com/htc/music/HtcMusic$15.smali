.class Lcom/htc/music/HtcMusic$15;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/widget/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bREW:Z

.field stopper:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/HtcMusic$15;->bREW:Z

    new-instance v0, Lcom/htc/music/HtcMusic$15$1;

    invoke-direct {v0, p0}, Lcom/htc/music/HtcMusic$15$1;-><init>(Lcom/htc/music/HtcMusic$15;)V

    iput-object v0, p0, Lcom/htc/music/HtcMusic$15;->stopper:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public declared-synchronized onRepeat(Landroid/view/View;JI)V
    .locals 5

    monitor-enter p0

    const/4 v1, -0x1

    if-ne p4, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic$15;->stopper:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic$15;->bREW:Z

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "rwstop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic$15;->bREW:Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$700(Lcom/htc/music/HtcMusic;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/htc/music/HtcMusic$15;->bREW:Z

    if-nez v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "rwstart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/HtcMusic$15;->bREW:Z

    :cond_3
    iget-object v1, p0, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic$15;->stopper:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/htc/music/HtcMusic$NonUiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/htc/music/HtcMusic$15;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mNonUiHandler:Lcom/htc/music/HtcMusic$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$2100(Lcom/htc/music/HtcMusic;)Lcom/htc/music/HtcMusic$NonUiHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic$15;->stopper:Ljava/lang/Runnable;

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/music/HtcMusic$NonUiHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
