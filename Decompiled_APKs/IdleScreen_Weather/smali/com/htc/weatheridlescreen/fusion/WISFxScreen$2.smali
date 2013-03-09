.class Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WISFxScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
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
.field final synthetic this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;


# direct methods
.method constructor <init>(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 510
    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    .line 511
    .local v0, strMessage:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 512
    const-string v1, "Build"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 513
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$000(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$000(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 515
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mTLCCloud:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$000(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    const/4 v2, 0x2

    #setter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIWhoIsFxWeaCtl:I
    invoke-static {v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$102(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;I)I

    .line 518
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mHasNewWeatherData:Z
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$200(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #setter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mHasNewWeatherData:Z
    invoke-static {v1, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$202(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;Z)Z

    .line 520
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;
    invoke-static {v2}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$300(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/data/WeatherData;

    move-result-object v2

    #calls: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->playNewWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;)V
    invoke-static {v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$400(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;Lcom/htc/weatheridlescreen/data/WeatherData;)V

    .line 539
    :cond_1
    :goto_0
    return-void

    .line 522
    :cond_2
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$600(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 523
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$600(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-result-object v1

    const-string v2, "LoopIn"

    invoke-virtual {v1, v2, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->playMarker(Ljava/lang/String;Z)V

    .line 524
    :cond_3
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$500(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$500(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    .line 527
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mIsPreview:Z
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$700(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxCurrentWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$500(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;
    invoke-static {v2}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$300(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/data/WeatherData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setWeatherInfo(Lcom/htc/weatheridlescreen/data/WeatherData;)V

    goto :goto_0

    .line 534
    :cond_4
    const-string v1, "Exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$600(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->this$0:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    #getter for: Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->mFxNextWeaCtl:Lcom/htc/weatheridlescreen/fusion/WISFxControl;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->access$600(Lcom/htc/weatheridlescreen/fusion/WISFxScreen;)Lcom/htc/weatheridlescreen/fusion/WISFxControl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/weatheridlescreen/fusion/WISFxControl;->setVisilbe(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 506
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen$2;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
