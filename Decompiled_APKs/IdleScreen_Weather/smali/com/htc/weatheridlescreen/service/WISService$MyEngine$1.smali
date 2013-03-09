.class Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;
.super Ljava/lang/Object;
.source "WISService.java"

# interfaces
.implements Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weatheridlescreen/service/WISService$MyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;


# direct methods
.method constructor <init>(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataUpdate(ZLcom/htc/weatheridlescreen/data/WeatherData;)V
    .locals 8
    .parameter "hasWeatherData"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 78
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-eqz p1, :cond_2

    .line 83
    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #setter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;
    invoke-static {v5, p2}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$002(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Lcom/htc/weatheridlescreen/data/WeatherData;)Lcom/htc/weatheridlescreen/data/WeatherData;

    .line 85
    :cond_2
    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z
    invoke-static {v5}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$100(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z

    move-result v5

    if-eq v5, p1, :cond_3

    move v1, v3

    .line 86
    .local v1, isDifferentDataStatus:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasDataUpdateCallback:Z
    invoke-static {v5}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$200(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    .line 87
    .local v2, isFirstUpdateData:Z
    :goto_2
    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #setter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasDataUpdateCallback:Z
    invoke-static {v5, v3}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$202(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Z)Z

    .line 88
    iget-object v6, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    move v5, v3

    :goto_3
    #setter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z
    invoke-static {v6, v5}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$102(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Z)Z

    .line 91
    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsStartLockScreen:Z
    invoke-static {v5}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$300(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->isTabletDevice()Z

    move-result v5

    if-nez v5, :cond_6

    .line 99
    if-eqz v1, :cond_7

    .line 100
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #calls: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->releaseFxScene()V
    invoke-static {v3}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$400(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)V

    .line 101
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #calls: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setFxScene(Z)V
    invoke-static {v3, p1}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$500(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Z)V

    goto :goto_0

    .end local v1           #isDifferentDataStatus:Z
    .end local v2           #isFirstUpdateData:Z
    :cond_3
    move v1, v4

    .line 85
    goto :goto_1

    .restart local v1       #isDifferentDataStatus:Z
    :cond_4
    move v2, v4

    .line 86
    goto :goto_2

    .restart local v2       #isFirstUpdateData:Z
    :cond_5
    move v5, v4

    .line 88
    goto :goto_3

    .line 113
    :cond_6
    if-eqz v2, :cond_7

    .line 114
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #calls: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->releaseFxScene()V
    invoke-static {v3}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$400(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)V

    .line 115
    iget-object v3, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #calls: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setFxScene(Z)V
    invoke-static {v3, p1}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$500(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Z)V

    goto :goto_0

    .line 119
    :cond_7
    monitor-enter p0

    .line 122
    if-eqz p1, :cond_9

    .line 124
    :try_start_0
    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    invoke-static {v5}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$600(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 125
    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    invoke-static {v5}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$600(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    move-result-object v6

    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsVisible:Z
    invoke-static {v5}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$700(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsPortrait:Z
    invoke-static {v5}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$800(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v3

    :goto_4
    const/4 v7, 0x1

    invoke-virtual {v6, p2, v5, v7}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->updateWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;ZZ)V

    .line 126
    :cond_8
    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    invoke-static {v5}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$900(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 127
    iget-object v5, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    invoke-static {v5}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$900(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsVisible:Z
    invoke-static {v6}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$700(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsPortrait:Z
    invoke-static {v6}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$800(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z

    move-result v6

    if-nez v6, :cond_b

    :goto_5
    const/4 v4, 0x1

    invoke-virtual {v5, p2, v3, v4}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->updateWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_9
    :goto_6
    :try_start_1
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_a
    move v5, v4

    .line 125
    goto :goto_4

    :cond_b
    move v3, v4

    .line 127
    goto :goto_5

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "WIS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WISService] onDataUpdate() - Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6
.end method

.method public onNoData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasDataUpdateCallback:Z
    invoke-static {v0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$200(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #calls: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->releaseFxScene()V
    invoke-static {v0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$400(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)V

    .line 148
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #calls: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setFxScene(Z)V
    invoke-static {v0, v2}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$500(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Z)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    invoke-static {v0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$600(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_P:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    invoke-static {v0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$600(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->noWeatherData()V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    invoke-static {v0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$900(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWISFxScreen_L:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    invoke-static {v0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$900(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->noWeatherData()V

    .line 166
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    const/4 v1, 0x1

    #setter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasDataUpdateCallback:Z
    invoke-static {v0, v1}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$202(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Z)Z

    .line 167
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #setter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z
    invoke-static {v0, v2}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$102(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Z)Z

    .line 168
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    const/4 v1, 0x0

    #setter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mWeatherData:Lcom/htc/weatheridlescreen/data/WeatherData;
    invoke-static {v0, v1}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$002(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Lcom/htc/weatheridlescreen/data/WeatherData;)Lcom/htc/weatheridlescreen/data/WeatherData;

    .line 169
    return-void

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasDataUpdateCallback:Z
    invoke-static {v0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$200(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mHasWeatherData:Z
    invoke-static {v0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$100(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #getter for: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->mIsStartLockScreen:Z
    invoke-static {v0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$300(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #calls: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->releaseFxScene()V
    invoke-static {v0}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$400(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;)V

    .line 163
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISService$MyEngine;

    #calls: Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->setFxScene(Z)V
    invoke-static {v0, v2}, Lcom/htc/weatheridlescreen/service/WISService$MyEngine;->access$500(Lcom/htc/weatheridlescreen/service/WISService$MyEngine;Z)V

    goto :goto_0
.end method
