.class Lcom/htc/dockmode/music/MusicView$1;
.super Ljava/lang/Object;
.source "MusicView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dockmode/music/MusicView;->bindMusicPlaybackService()V
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
    .line 212
    iput-object p1, p0, Lcom/htc/dockmode/music/MusicView$1;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView$1;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dockmode/music/MusicView;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    .line 217
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView$1;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-virtual {v0}, Lcom/htc/dockmode/music/MusicView;->updateMusicInfo()V

    .line 218
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView$1;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-virtual {v0}, Lcom/htc/dockmode/music/MusicView;->updatePlaybackPanel()V

    .line 219
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "name"

    .prologue
    const v4, 0x7f08004f

    .line 222
    invoke-static {}, Lcom/htc/dockmode/music/MusicView;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView$1;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mMusicControl:Lcom/htc/dockmode/music/MusicControl;
    invoke-static {v1}, Lcom/htc/dockmode/music/MusicView;->access$100(Lcom/htc/dockmode/music/MusicView;)Lcom/htc/dockmode/music/MusicControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dockmode/music/MusicControl;->sendUnBindService()V

    .line 229
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView$1;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/dockmode/music/MusicView;->access$200(Lcom/htc/dockmode/music/MusicView;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    .local v0, noMusic:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView$1;->this$0:Lcom/htc/dockmode/music/MusicView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/dockmode/music/MusicView;->mIsNoMusic:Z

    .line 232
    iget-object v1, p0, Lcom/htc/dockmode/music/MusicView$1;->this$0:Lcom/htc/dockmode/music/MusicView;

    iget-object v2, p0, Lcom/htc/dockmode/music/MusicView$1;->this$0:Lcom/htc/dockmode/music/MusicView;

    #getter for: Lcom/htc/dockmode/music/MusicView;->mHostActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/dockmode/music/MusicView;->access$300(Lcom/htc/dockmode/music/MusicView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dockmode/music/MusicView;->handleNoMusic(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 235
    return-void
.end method
