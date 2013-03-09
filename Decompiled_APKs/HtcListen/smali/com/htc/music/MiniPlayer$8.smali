.class Lcom/htc/music/MiniPlayer$8;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Lcom/htc/widget/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MiniPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MiniPlayer$8;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 3

    if-nez p4, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$8;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v1, v1, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "rwstart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$8;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v1, v1, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$8;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v1, v1, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "rwstop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/MiniPlayer$8;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v1, v1, Lcom/htc/music/MiniPlayer;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
