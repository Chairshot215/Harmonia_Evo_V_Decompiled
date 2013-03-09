.class Lcom/htc/music/MiniPlayer$7;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/htc/music/MiniPlayer$7;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x2711

    iget-object v0, p0, Lcom/htc/music/MiniPlayer$7;->this$0:Lcom/htc/music/MiniPlayer;

    #calls: Lcom/htc/music/MiniPlayer;->isToDMR()Z
    invoke-static {v0}, Lcom/htc/music/MiniPlayer;->access$000(Lcom/htc/music/MiniPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MiniPlayer$7;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mDMCSvcMan:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v0}, Lcom/htc/music/DMCServiceManager;->next()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$7;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    const-string v0, "[MiniPlayer]"

    const-string v1, "mNextListener click!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/MiniPlayer$7;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/MiniPlayer;->access$600(Lcom/htc/music/MiniPlayer;)Lcom/htc/music/MiniPlayer$NonUIHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer$NonUIHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[MiniPlayer]"

    const-string v1, "already handling next event, just return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$7;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mNonUiHandler:Lcom/htc/music/MiniPlayer$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/MiniPlayer;->access$600(Lcom/htc/music/MiniPlayer;)Lcom/htc/music/MiniPlayer$NonUIHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/music/MiniPlayer$NonUIHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
