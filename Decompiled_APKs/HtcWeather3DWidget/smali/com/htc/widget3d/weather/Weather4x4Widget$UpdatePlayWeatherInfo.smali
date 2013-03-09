.class Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;
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
    name = "UpdatePlayWeatherInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1663
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runnable : UpdatePlayWeatherInfo start"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->updateWeatherInfo()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1500(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    .line 1665
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-boolean v0, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mDoLoading:Z

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->stopLoading(IZ)V

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->playCurrUI()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1600(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    .line 1668
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runnable : UpdatePlayWeatherInfo finished"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    return-void
.end method
