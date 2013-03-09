.class Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "TimelineAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->access$000(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->access$100(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->access$100(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->access$000(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$1;->this$0:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    iget v2, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->playbackResult:I

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;->onCompleted(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;I)V

    .line 98
    :cond_1
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$1;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
