.class Lcom/htc/widget3d/weather/Weather4x4Widget$2;
.super Lcom/htc/fusion/fx/MessageListener;
.source "Weather4x4Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget3d/weather/Weather4x4Widget;->setHitBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$2;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 681
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hitBox on Swipe"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$SwitchWeatherCtl;

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$2;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-direct {v0, v1, p1}, Lcom/htc/widget3d/weather/Weather4x4Widget$SwitchWeatherCtl;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V

    .line 684
    .local v0, switch_runnable:Lcom/htc/widget3d/weather/Weather4x4Widget$SwitchWeatherCtl;
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$2;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$600(Lcom/htc/widget3d/weather/Weather4x4Widget;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$2;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$600(Lcom/htc/widget3d/weather/Weather4x4Widget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 690
    :goto_0
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "post and leave Swipe callback"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void

    .line 687
    :cond_0
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mUIHandler get null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$2;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->switchWeatherCtl(Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V
    invoke-static {v1, p1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$700(Lcom/htc/widget3d/weather/Weather4x4Widget;Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 678
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget3d/weather/Weather4x4Widget$2;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V

    return-void
.end method
