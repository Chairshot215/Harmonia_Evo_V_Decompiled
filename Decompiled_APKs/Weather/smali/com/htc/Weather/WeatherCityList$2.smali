.class Lcom/htc/Weather/WeatherCityList$2;
.super Ljava/lang/Object;
.source "WeatherCityList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherCityList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherCityList;


# direct methods
.method constructor <init>(Lcom/htc/Weather/WeatherCityList;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/Weather/WeatherCityList$2;->this$0:Lcom/htc/Weather/WeatherCityList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList$2;->this$0:Lcom/htc/Weather/WeatherCityList;

    #getter for: Lcom/htc/Weather/WeatherCityList;->mSyncData:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/Weather/WeatherCityList;->access$100(Lcom/htc/Weather/WeatherCityList;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList$2;->this$0:Lcom/htc/Weather/WeatherCityList;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherCityList;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/WeatherActivity;

    .line 81
    .local v1, mainActivity:Lcom/htc/Weather/WeatherActivity;
    iget-object v2, v1, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 83
    .end local v1           #mainActivity:Lcom/htc/Weather/WeatherActivity;
    :cond_0
    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList$2;->this$0:Lcom/htc/Weather/WeatherCityList;

    #getter for: Lcom/htc/Weather/WeatherCityList;->mAddCity:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/Weather/WeatherCityList;->access$200(Lcom/htc/Weather/WeatherCityList;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 84
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-nez v2, :cond_2

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    invoke-static {}, Lcom/htc/Weather/WeatherActivity;->getMaximumCount()I

    .line 86
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v2

    sget v3, Lcom/htc/Weather/WeatherActivity;->mMaximumCityNum:I

    if-lt v2, v3, :cond_3

    .line 87
    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList$2;->this$0:Lcom/htc/Weather/WeatherCityList;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherCityList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0062

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList$2;->this$0:Lcom/htc/Weather/WeatherCityList;

    const-class v3, Lcom/htc/Weather/AddCity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.Weather.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList$2;->this$0:Lcom/htc/Weather/WeatherCityList;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherCityList;->getParent()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
