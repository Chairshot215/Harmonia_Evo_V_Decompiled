.class Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;
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
    name = "UpdatedCurrentCity"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1728
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Runnable : UpdatedCurrentCity start"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v0

    .line 1732
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1733
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getCityDataFromAgent(IZ)V

    .line 1732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1736
    :cond_0
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Runnable : UpdatedCurrentCity finished"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    return-void
.end method
