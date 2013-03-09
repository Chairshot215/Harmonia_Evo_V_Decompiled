.class Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WISFxControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weatheridlescreen/fusion/WISFxControl;
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
.field final synthetic this$0:Lcom/htc/weatheridlescreen/fusion/WISFxControl;


# direct methods
.method constructor <init>(Lcom/htc/weatheridlescreen/fusion/WISFxControl;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 194
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mIsVisible:Z
    invoke-static {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->access$000(Lcom/htc/weatheridlescreen/fusion/WISFxControl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    const-string v1, "Build"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->access$100(Lcom/htc/weatheridlescreen/fusion/WISFxControl;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->access$100(Lcom/htc/weatheridlescreen/fusion/WISFxControl;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 201
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mTLCMainStateRain:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->access$100(Lcom/htc/weatheridlescreen/fusion/WISFxControl;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v0

    const-string v1, "LoopIn"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->access$200(Lcom/htc/weatheridlescreen/fusion/WISFxControl;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    const-string v1, "LoopIn"

    #setter for: Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mLatestPlayingMarked:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->access$302(Lcom/htc/weatheridlescreen/fusion/WISFxControl;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxControl;->mFxSceneMainState:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->access$200(Lcom/htc/weatheridlescreen/fusion/WISFxControl;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    const-string v1, "LoopIn"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;IFZ)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/weatheridlescreen/fusion/WISFxControl$1;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
