.class public Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherWidgetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/WeatherWidgetBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;


# direct methods
.method public constructor <init>(Lcom/htc/widget3d/weather/WeatherWidgetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 557
    const-string v6, "WeatherWidgetBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.htc.sync.provider.weather.result"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 561
    const-string v6, "WeatherWidgetBase"

    const-string v7, "DataBroadcastReceiver onReceive - SYNC_SERVICE_RESULT_INTENT_ACTION_NAME"

    invoke-static {v6, v7}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 566
    .local v1, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 597
    .end local v1           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 569
    .restart local v1       #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 570
    .local v5, s:[Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 571
    const/4 v6, 0x0

    aget-object v2, v5, v6

    .line 573
    .local v2, category:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBase;->mCityIndexMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->access$200(Lcom/htc/widget3d/weather/WeatherWidgetBase;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 575
    .local v3, index:Ljava/lang/Integer;
    const-string v6, "WeatherWidgetBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "category: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    if-eqz v3, :cond_3

    .line 578
    new-instance v4, Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;

    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v4, v6, p2, v7}, Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;-><init>(Lcom/htc/widget3d/weather/WeatherWidgetBase;Landroid/content/Intent;I)V

    .line 580
    .local v4, pd:Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;
    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBase;->mBaseWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v6}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->access$300(Lcom/htc/widget3d/weather/WeatherWidgetBase;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 581
    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    #getter for: Lcom/htc/widget3d/weather/WeatherWidgetBase;->mBaseWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v6}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->access$300(Lcom/htc/widget3d/weather/WeatherWidgetBase;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 583
    :cond_2
    const-string v6, "WeatherWidgetBase"

    const-string v7, "mBaseWorker null, can\'t post."

    invoke-static {v6, v7}, Lcom/htc/widget3d/weather/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 587
    .end local v4           #pd:Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;
    :cond_3
    if-eqz v2, :cond_4

    const-string v6, "1__"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 591
    const-string v6, "WeatherWidgetBase"

    const-string v7, "Receive TYPE_CURRENT_LOCATION data intent"

    invoke-static {v6, v7}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;->this$0:Lcom/htc/widget3d/weather/WeatherWidgetBase;

    invoke-virtual {v6}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->onUpdateCityModelList()V

    goto :goto_0

    .line 594
    :cond_4
    const-string v6, "WeatherWidgetBase"

    const-string v7, "mCityIndexMap.get(category) ==null"

    invoke-static {v6, v7}, Lcom/htc/widget3d/weather/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
