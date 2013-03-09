.class Lcom/htc/dockmode/music/MusicView$4;
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
    .line 342
    iput-object p1, p0, Lcom/htc/dockmode/music/MusicView$4;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "data"

    .prologue
    .line 344
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.content.Intent.ACTION_BACKGROUND_OP_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView$4;->this$0:Lcom/htc/dockmode/music/MusicView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/dockmode/music/MusicView;->mIsRedTrafficLight:Z

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const-string v1, "com.htc.content.Intent.ACTION_BACKGROUND_OP_GO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView$4;->this$0:Lcom/htc/dockmode/music/MusicView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/dockmode/music/MusicView;->mIsRedTrafficLight:Z

    goto :goto_0
.end method
