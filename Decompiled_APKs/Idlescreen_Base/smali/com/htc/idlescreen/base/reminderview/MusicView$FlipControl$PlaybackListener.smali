.class Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/FxPlaybackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 477
    const-string v0, "MusicView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackListener mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    iget-object v2, v2, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v2}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message.name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->access$1700(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->access$1700(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    #calls: Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onEndFlip()V
    invoke-static {v0}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->access$1800(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;)V

    .line 483
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 475
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$PlaybackListener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
