.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;
.super Ljava/lang/Object;
.source "MusicWidget3D_4x2.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->bindMusicPlaybackService()V
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
    .line 1150
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v0, 0x0

    .line 1153
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    .line 1156
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->sendUpdateMusicInfoMessage(ILandroid/os/Bundle;)V

    .line 1157
    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-boolean v2, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsNoMusic:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handleButtons(Z)V

    .line 1158
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->updatePlaybackPanel()V

    .line 1163
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1167
    const-string v0, "[MusicWidget3D]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-virtual {v0}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->unbindMusicPlaybackService()V

    .line 1170
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mIsNoMusic:Z

    .line 1177
    iget-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$6;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v1, v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->handleNoMusic(Ljava/lang/String;)V

    .line 1179
    return-void
.end method
