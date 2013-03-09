.class Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WeatherView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/WeatherView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherPlaybackListener"
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
.field final synthetic this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/reminderview/WeatherView;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/reminderview/WeatherView;Lcom/htc/idlescreen/base/reminderview/WeatherView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;-><init>(Lcom/htc/idlescreen/base/reminderview/WeatherView;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 3
    .parameter "message"

    .prologue
    const/16 v2, 0x2712

    .line 90
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    sget-object v1, Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;->LOOP:Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;

    #setter for: Lcom/htc/idlescreen/base/reminderview/WeatherView;->mAnimeState:Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;
    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->access$302(Lcom/htc/idlescreen/base/reminderview/WeatherView;Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;)Lcom/htc/idlescreen/base/reminderview/WeatherView$AnimationState;

    .line 91
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->access$200(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 92
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->access$200(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 93
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/reminderview/WeatherView$WeatherPlaybackListener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
