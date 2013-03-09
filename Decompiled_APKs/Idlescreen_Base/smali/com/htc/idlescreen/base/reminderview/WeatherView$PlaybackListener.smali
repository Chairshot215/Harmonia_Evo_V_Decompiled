.class Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WeatherView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/WeatherView;
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
.field final synthetic this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/reminderview/WeatherView;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/reminderview/WeatherView;Lcom/htc/idlescreen/base/reminderview/WeatherView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;-><init>(Lcom/htc/idlescreen/base/reminderview/WeatherView;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 2
    .parameter "message"

    .prologue
    const/16 v1, 0x2711

    .line 83
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->access$200(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 84
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->access$200(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 85
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/reminderview/WeatherView$PlaybackListener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
