.class Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;
.super Ljava/lang/Object;
.source "MusicCtrl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->bindMusicService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 126
    const-string v0, "MusicCtrl"

    const-string v1, "music service  connect"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    invoke-static {p2}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/music/IHtcMediaPlaybackService;

    move-result-object v1

    #setter for: Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->mMediaService:Lcom/htc/service/music/IHtcMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->access$002(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;Lcom/htc/service/music/IHtcMediaPlaybackService;)Lcom/htc/service/music/IHtcMediaPlaybackService;

    .line 128
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    #calls: Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->updateTitle()Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->access$100(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    #calls: Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->updateImage()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->access$200(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)Landroid/graphics/Bitmap;

    .line 130
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    #calls: Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->onMusicServiceConnect()V
    invoke-static {v0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->access$300(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)V

    .line 131
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 135
    const-string v0, "MusicCtrl"

    const-string v1, "music service is disconnection, Service not null"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->stopMusicCtrl()V

    .line 139
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/MusicCtrl$1;->this$0:Lcom/htc/lockscreen/app/ctrl/MusicCtrl;

    #calls: Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->onMusicServiceDisConnect()V
    invoke-static {v0}, Lcom/htc/lockscreen/app/ctrl/MusicCtrl;->access$400(Lcom/htc/lockscreen/app/ctrl/MusicCtrl;)V

    .line 140
    return-void
.end method
