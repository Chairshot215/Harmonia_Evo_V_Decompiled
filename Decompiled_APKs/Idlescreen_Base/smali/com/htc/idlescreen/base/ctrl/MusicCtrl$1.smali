.class Lcom/htc/idlescreen/base/ctrl/MusicCtrl$1;
.super Ljava/lang/Object;
.source "MusicCtrl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->bindMusicService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 131
    const-string v0, "MusicCtrl"

    const-string v1, "music service  connect"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    invoke-static {p2}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/music/IHtcMediaPlaybackService;

    move-result-object v1

    #setter for: Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->access$002(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;Lcom/htc/service/music/IHtcMediaPlaybackService;)Lcom/htc/service/music/IHtcMediaPlaybackService;

    .line 133
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->checkIsPlaying()V

    .line 134
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    #calls: Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->updateTitle()Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->access$100(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    #calls: Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->updateImage()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->access$200(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    #calls: Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->onMusicServiceConnect()V
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->access$300(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)V

    .line 137
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 141
    const-string v0, "MusicCtrl"

    const-string v1, "music service is disconnection, Service not null"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->stopMusicService()V

    .line 145
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/MusicCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/MusicCtrl;

    #calls: Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->onMusicServiceDisConnect()V
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/MusicCtrl;->access$400(Lcom/htc/idlescreen/base/ctrl/MusicCtrl;)V

    .line 146
    return-void
.end method
