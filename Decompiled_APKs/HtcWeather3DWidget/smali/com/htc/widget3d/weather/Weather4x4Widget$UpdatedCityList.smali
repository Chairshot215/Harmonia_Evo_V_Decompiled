.class Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;
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
    name = "UpdatedCityList"
.end annotation


# instance fields
.field private mIsAddCity:Z

.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;


# direct methods
.method constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget;Z)V
    .locals 1
    .parameter
    .parameter "isAddCity"

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->mIsAddCity:Z

    .line 1699
    iput-boolean p2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->mIsAddCity:Z

    .line 1700
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1703
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runnable : UpdatedCityList start, mIsAddCity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->mIsAddCity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v0, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/WeatherModel;->updateWeatherCityList()Z

    .line 1705
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After update city size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget v0, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I
    invoke-static {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$300(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1708
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNextIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I
    invoke-static {v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$300(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->mIsAddCity:Z

    if-nez v0, :cond_1

    .line 1711
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iput v3, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    .line 1712
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #setter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I
    invoke-static {v0, v3}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$302(Lcom/htc/widget3d/weather/Weather4x4Widget;I)I

    .line 1713
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset mCurrIndex = 0"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    :goto_0
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runnable : UpdatedCityList finished"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    return-void

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    .line 1716
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    #setter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I
    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$302(Lcom/htc/widget3d/weather/Weather4x4Widget;I)I

    .line 1717
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset mCurrIndex to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
