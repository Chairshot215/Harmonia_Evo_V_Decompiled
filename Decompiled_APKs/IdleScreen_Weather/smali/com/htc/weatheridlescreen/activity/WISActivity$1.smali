.class Lcom/htc/weatheridlescreen/activity/WISActivity$1;
.super Ljava/lang/Object;
.source "WISActivity.java"

# interfaces
.implements Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weatheridlescreen/activity/WISActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weatheridlescreen/activity/WISActivity;


# direct methods
.method constructor <init>(Lcom/htc/weatheridlescreen/activity/WISActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/weatheridlescreen/activity/WISActivity$1;->this$0:Lcom/htc/weatheridlescreen/activity/WISActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataUpdate(ZLcom/htc/weatheridlescreen/data/WeatherData;)V
    .locals 2
    .parameter "hasWeatherData"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 37
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity$1;->this$0:Lcom/htc/weatheridlescreen/activity/WISActivity;

    #getter for: Lcom/htc/weatheridlescreen/activity/WISActivity;->mWISFxScreen:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    invoke-static {v0}, Lcom/htc/weatheridlescreen/activity/WISActivity;->access$000(Lcom/htc/weatheridlescreen/activity/WISActivity;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity$1;->this$0:Lcom/htc/weatheridlescreen/activity/WISActivity;

    #getter for: Lcom/htc/weatheridlescreen/activity/WISActivity;->mWISFxScreen:Lcom/htc/weatheridlescreen/fusion/WISFxScreen;
    invoke-static {v0}, Lcom/htc/weatheridlescreen/activity/WISActivity;->access$000(Lcom/htc/weatheridlescreen/activity/WISActivity;)Lcom/htc/weatheridlescreen/fusion/WISFxScreen;

    move-result-object v0

    invoke-virtual {v0, p2, v1, v1}, Lcom/htc/weatheridlescreen/fusion/WISFxScreen;->updateWeatherData(Lcom/htc/weatheridlescreen/data/WeatherData;ZZ)V

    .line 39
    iget-object v0, p0, Lcom/htc/weatheridlescreen/activity/WISActivity$1;->this$0:Lcom/htc/weatheridlescreen/activity/WISActivity;

    #setter for: Lcom/htc/weatheridlescreen/activity/WISActivity;->mHasWeatherData:Z
    invoke-static {v0, v1}, Lcom/htc/weatheridlescreen/activity/WISActivity;->access$102(Lcom/htc/weatheridlescreen/activity/WISActivity;Z)Z

    .line 41
    return-void
.end method

.method public onNoData()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
