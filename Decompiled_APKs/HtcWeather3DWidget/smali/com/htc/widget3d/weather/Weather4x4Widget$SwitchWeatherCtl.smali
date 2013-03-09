.class Lcom/htc/widget3d/weather/Weather4x4Widget$SwitchWeatherCtl;
.super Ljava/lang/Object;
.source "Weather4x4Widget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/Weather4x4Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchWeatherCtl"
.end annotation


# instance fields
.field private mMessage:Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;

.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;


# direct methods
.method public constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget;Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V
    .locals 1
    .parameter
    .parameter "message"

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$SwitchWeatherCtl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$SwitchWeatherCtl;->mMessage:Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;

    .line 1747
    iput-object p2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$SwitchWeatherCtl;->mMessage:Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;

    .line 1748
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1751
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runnable : SwitchWeatherCtl start"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$SwitchWeatherCtl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$SwitchWeatherCtl;->mMessage:Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->switchWeatherCtl(Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V
    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$700(Lcom/htc/widget3d/weather/Weather4x4Widget;Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V

    .line 1755
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runnable : SwitchWeatherCtl finished"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    return-void
.end method
