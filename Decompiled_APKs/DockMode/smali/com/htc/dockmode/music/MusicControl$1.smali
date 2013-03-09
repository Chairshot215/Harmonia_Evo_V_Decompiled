.class Lcom/htc/dockmode/music/MusicControl$1;
.super Landroid/os/Handler;
.source "MusicControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/music/MusicControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/music/MusicControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/music/MusicControl;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/dockmode/music/MusicControl$1;->this$0:Lcom/htc/dockmode/music/MusicControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 194
    return-void

    .line 168
    :pswitch_0
    invoke-static {}, Lcom/htc/dockmode/music/MusicControl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case MSG_ON_BIND_SERVICE:, mController.isRedTrafficLight(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dockmode/music/MusicControl$1;->this$0:Lcom/htc/dockmode/music/MusicControl;

    #getter for: Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;
    invoke-static {v2}, Lcom/htc/dockmode/music/MusicControl;->access$100(Lcom/htc/dockmode/music/MusicControl;)Lcom/htc/dockmode/music/MusicView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/dockmode/music/MusicView;->isRedTrafficLight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl$1;->this$0:Lcom/htc/dockmode/music/MusicControl;

    #getter for: Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;
    invoke-static {v0}, Lcom/htc/dockmode/music/MusicControl;->access$100(Lcom/htc/dockmode/music/MusicControl;)Lcom/htc/dockmode/music/MusicView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl$1;->this$0:Lcom/htc/dockmode/music/MusicControl;

    #getter for: Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;
    invoke-static {v0}, Lcom/htc/dockmode/music/MusicControl;->access$100(Lcom/htc/dockmode/music/MusicControl;)Lcom/htc/dockmode/music/MusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dockmode/music/MusicView;->bindMusicPlaybackService()V

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Lcom/htc/dockmode/music/MusicControl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "case MSG_ON_BIND_SERVICE:, mController == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl$1;->this$0:Lcom/htc/dockmode/music/MusicControl;

    #getter for: Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;
    invoke-static {v0}, Lcom/htc/dockmode/music/MusicControl;->access$100(Lcom/htc/dockmode/music/MusicControl;)Lcom/htc/dockmode/music/MusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dockmode/music/MusicView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl$1;->this$0:Lcom/htc/dockmode/music/MusicControl;

    #getter for: Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;
    invoke-static {v0}, Lcom/htc/dockmode/music/MusicControl;->access$100(Lcom/htc/dockmode/music/MusicControl;)Lcom/htc/dockmode/music/MusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dockmode/music/MusicView;->isRedTrafficLight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl$1;->this$0:Lcom/htc/dockmode/music/MusicControl;

    #getter for: Lcom/htc/dockmode/music/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/dockmode/music/MusicControl;->access$200(Lcom/htc/dockmode/music/MusicControl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2002

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl$1;->this$0:Lcom/htc/dockmode/music/MusicControl;

    #getter for: Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;
    invoke-static {v0}, Lcom/htc/dockmode/music/MusicControl;->access$100(Lcom/htc/dockmode/music/MusicControl;)Lcom/htc/dockmode/music/MusicView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicControl$1;->this$0:Lcom/htc/dockmode/music/MusicControl;

    #getter for: Lcom/htc/dockmode/music/MusicControl;->mMusicView:Lcom/htc/dockmode/music/MusicView;
    invoke-static {v0}, Lcom/htc/dockmode/music/MusicControl;->access$100(Lcom/htc/dockmode/music/MusicControl;)Lcom/htc/dockmode/music/MusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dockmode/music/MusicView;->unbindMusicPlaybackService()V

    goto :goto_0

    .line 187
    :cond_3
    invoke-static {}, Lcom/htc/dockmode/music/MusicControl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "case MSG_ON_UNBIND_SERVICE:, mController == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
