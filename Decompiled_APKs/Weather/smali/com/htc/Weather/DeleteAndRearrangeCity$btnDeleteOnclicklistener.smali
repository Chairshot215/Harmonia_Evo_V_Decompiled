.class Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;
.super Ljava/lang/Object;
.source "DeleteAndRearrangeCity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/DeleteAndRearrangeCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "btnDeleteOnclicklistener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;


# direct methods
.method private constructor <init>(Lcom/htc/Weather/DeleteAndRearrangeCity;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/Weather/DeleteAndRearrangeCity;Lcom/htc/Weather/DeleteAndRearrangeCity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;-><init>(Lcom/htc/Weather/DeleteAndRearrangeCity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 295
    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #calls: Lcom/htc/Weather/DeleteAndRearrangeCity;->unregisterProviderChange()V
    invoke-static {v11}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$400(Lcom/htc/Weather/DeleteAndRearrangeCity;)V

    .line 297
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 299
    .local v4, intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v11}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v11}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_7

    .line 301
    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mCityList:Lcom/htc/widget/HtcReorderListView;
    invoke-static {v11}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$500(Lcom/htc/Weather/DeleteAndRearrangeCity;)Lcom/htc/widget/HtcReorderListView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    .line 302
    .local v0, adapter:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;
    invoke-virtual {v0}, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->getCount()I

    move-result v11

    new-array v2, v11, [Lcom/htc/util/weather/WeatherLocation;

    .line 304
    .local v2, editList:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->getCount()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 306
    invoke-virtual {v0, v3}, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/util/weather/WeatherLocation;

    .line 307
    .local v9, temp:Lcom/htc/util/weather/WeatherLocation;
    aput-object v9, v2, v3

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    .end local v9           #temp:Lcom/htc/util/weather/WeatherLocation;
    :cond_0
    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #calls: Lcom/htc/Weather/DeleteAndRearrangeCity;->writeToDB([Lcom/htc/util/weather/WeatherLocation;)V
    invoke-static {v11, v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$600(Lcom/htc/Weather/DeleteAndRearrangeCity;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 312
    const-string v11, "rearranged_"

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    array-length v11, v2

    iget-object v12, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mDoneNumber:I
    invoke-static {v12}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$700(Lcom/htc/Weather/DeleteAndRearrangeCity;)I

    move-result v12

    sub-int v6, v11, v12

    .line 317
    .local v6, nCount:I
    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mCurIsIncluded:Z
    invoke-static {v11}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$800(Lcom/htc/Weather/DeleteAndRearrangeCity;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 318
    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v11}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v11

    aget-object v11, v11, v7

    iget-boolean v11, v11, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    if-eqz v11, :cond_2

    .line 320
    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #calls: Lcom/htc/Weather/DeleteAndRearrangeCity;->deleteCurrentLocation()V
    invoke-static {v11}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$900(Lcom/htc/Weather/DeleteAndRearrangeCity;)V

    .line 326
    :cond_1
    :goto_1
    if-gtz v6, :cond_3

    .line 327
    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-virtual {v11}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "com.htc.elroy.Weather"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/htc/util/weather/WeatherUtility;->saveLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 347
    :goto_2
    const-string v11, "delete_"

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    .end local v0           #adapter:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;
    .end local v2           #editList:[Lcom/htc/util/weather/WeatherLocation;
    .end local v3           #i:I
    .end local v6           #nCount:I
    :goto_3
    iget-object v10, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    const/16 v11, 0xb

    invoke-virtual {v10, v11, v4}, Lcom/htc/Weather/DeleteAndRearrangeCity;->setResult(ILandroid/content/Intent;)V

    .line 354
    iget-object v10, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-virtual {v10}, Lcom/htc/Weather/DeleteAndRearrangeCity;->finish()V

    .line 356
    return-void

    .line 322
    .restart local v0       #adapter:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;
    .restart local v2       #editList:[Lcom/htc/util/weather/WeatherLocation;
    .restart local v3       #i:I
    .restart local v6       #nCount:I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 329
    :cond_3
    new-array v8, v6, [Lcom/htc/util/weather/WeatherLocation;

    .line 330
    .local v8, remain:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v5, 0x0

    .line 331
    .local v5, lastIndex:I
    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mCurIsIncluded:Z
    invoke-static {v11}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$800(Lcom/htc/Weather/DeleteAndRearrangeCity;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v7, v10

    .line 333
    .local v7, pos:I
    :cond_4
    move v3, v7

    :goto_4
    :try_start_0
    array-length v11, v2

    if-ge v3, v11, :cond_6

    .line 334
    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v11}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v11

    aget-object v11, v11, v3

    iget-boolean v11, v11, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    if-nez v11, :cond_5

    .line 335
    aget-object v11, v2, v3

    aput-object v11, v8, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    add-int/lit8 v5, v5, 0x1

    .line 333
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 343
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    iget-object v11, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$btnDeleteOnclicklistener;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-virtual {v11}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "com.htc.elroy.Weather"

    invoke-static {v11, v12, v8}, Lcom/htc/util/weather/WeatherUtility;->saveLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    goto :goto_2

    .line 350
    .end local v0           #adapter:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;
    .end local v2           #editList:[Lcom/htc/util/weather/WeatherLocation;
    .end local v3           #i:I
    .end local v5           #lastIndex:I
    .end local v6           #nCount:I
    .end local v7           #pos:I
    .end local v8           #remain:[Lcom/htc/util/weather/WeatherLocation;
    :cond_7
    const-string v10, "delete_"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3
.end method
