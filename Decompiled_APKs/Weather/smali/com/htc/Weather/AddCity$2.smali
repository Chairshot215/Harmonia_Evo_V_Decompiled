.class Lcom/htc/Weather/AddCity$2;
.super Ljava/lang/Object;
.source "AddCity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/AddCity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/AddCity;


# direct methods
.method constructor <init>(Lcom/htc/Weather/AddCity;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    .line 302
    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mBoolFinishing:Z
    invoke-static {v4}, Lcom/htc/Weather/AddCity;->access$000(Lcom/htc/Weather/AddCity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    if-ltz p3, :cond_0

    .line 309
    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    #setter for: Lcom/htc/Weather/AddCity;->mBoolFinishing:Z
    invoke-static {v4, v8}, Lcom/htc/Weather/AddCity;->access$002(Lcom/htc/Weather/AddCity;Z)Z

    .line 311
    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    #getter for: Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;
    invoke-static {v4}, Lcom/htc/Weather/AddCity;->access$100(Lcom/htc/Weather/AddCity;)Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 312
    .local v1, c:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    .line 314
    .local v3, wl:Lcom/htc/util/weather/WeatherLocation;
    if-nez v3, :cond_2

    .line 315
    const-string v4, "AddCity_ListActivity"

    const-string v5, "Can\'t generate WeatherLocation by  WeatherUtility.CursorToWeatherLocation() in mCityList.setOnItemClickListener"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_2
    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4}, Lcom/htc/Weather/AddCity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/Weather/AddCity;->getLocationInfoByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    .line 321
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "code"

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v4, "name"

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v4, "state"

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v4, "country"

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v4, "timezone"

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v4, "timezoneid"

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v4, "app"

    const-string v5, "com.htc.elroy.Weather"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, boolFound:Z
    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4}, Lcom/htc/Weather/AddCity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.Weather.intent.action.SEARCH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4}, Lcom/htc/Weather/AddCity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.Weather.intent.action.MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 348
    :cond_3
    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4}, Lcom/htc/Weather/AddCity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.htc.elroy.Weather"

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/htc/Weather/AddCity;->checkCityIsExistInLocation(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 352
    if-nez v0, :cond_4

    .line 353
    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4}, Lcom/htc/Weather/AddCity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.htc.elroy.Weather"

    new-array v6, v8, [Lcom/htc/util/weather/WeatherLocation;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/htc/util/weather/WeatherUtility;->addLocation(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 360
    :cond_4
    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4}, Lcom/htc/Weather/AddCity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.Weather.intent.action.SEARCH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 361
    if-eqz v2, :cond_5

    .line 362
    const-string v4, "com.htc.Weather.intent.action.ADD_LOCATION"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4, v2}, Lcom/htc/Weather/AddCity;->sendBroadcast(Landroid/content/Intent;)V

    .line 364
    const-string v4, "AddCity_ListActivity"

    const-string v5, "Broadcast intent, location add-in by other app"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_5
    const-string v4, "status"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4, v8, v2}, Lcom/htc/Weather/AddCity;->setResult(ILandroid/content/Intent;)V

    .line 370
    iget-object v4, p0, Lcom/htc/Weather/AddCity$2;->this$0:Lcom/htc/Weather/AddCity;

    invoke-virtual {v4}, Lcom/htc/Weather/AddCity;->finish()V

    goto/16 :goto_0
.end method
