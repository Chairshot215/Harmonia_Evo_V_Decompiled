.class public Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;
.super Ljava/lang/Object;
.source "CityNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$UpdateCallback;
    }
.end annotation


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"

.field private static final MESG_UPDATE_CITY_NAME:I = 0x0

.field private static final PREFIX:Ljava/lang/String; = "[CityNameHandler]: "


# instance fields
.field private mCityCode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mLooper:Landroid/os/Looper;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$UpdateCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 24
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mLooper:Landroid/os/Looper;

    .line 25
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mNonUIHandler:Landroid/os/Handler;

    .line 32
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$UpdateCallback;

    .line 39
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mCityCode:Ljava/lang/String;

    return-void
.end method

.method private _updateCityName()V
    .locals 8

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, cityName:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mCityCode:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mCityCode:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mCityCode:Ljava/lang/String;

    const-string v7, "CurrentCity"

    if-ne v6, v7, :cond_4

    .line 130
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gez v6, :cond_2

    .line 131
    :cond_1
    iget-object v6, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 132
    iget-object v6, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 136
    iget-object v6, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$UpdateCallback;

    if-eqz v6, :cond_3

    .line 137
    iget-object v6, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$UpdateCallback;

    invoke-interface {v6, v0}, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$UpdateCallback;->onUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :cond_3
    :goto_1
    return-void

    .line 98
    :cond_4
    const/4 v3, 0x0

    .line 100
    .local v3, mCursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v6, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mCityCode:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/htc/util/weather/WeatherUtility;->getLocationListByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 101
    if-eqz v3, :cond_6

    .line 102
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    sget-object v6, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v6}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, mName:Ljava/lang/String;
    sget-object v6, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v6}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, mState:Ljava/lang/String;
    sget-object v6, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v6}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, mCountry:Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 107
    move-object v0, v4

    .line 109
    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 121
    .end local v2           #mCountry:Ljava/lang/String;
    .end local v4           #mName:Ljava/lang/String;
    .end local v5           #mState:Ljava/lang/String;
    :cond_6
    :goto_2
    if-eqz v3, :cond_0

    .line 122
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 123
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 112
    .restart local v2       #mCountry:Ljava/lang/String;
    .restart local v4       #mName:Ljava/lang/String;
    .restart local v5       #mState:Ljava/lang/String;
    :cond_7
    if-eqz v2, :cond_6

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    .line 117
    .end local v2           #mCountry:Ljava/lang/String;
    .end local v4           #mName:Ljava/lang/String;
    .end local v5           #mState:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    if-eqz v3, :cond_0

    .line 122
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 123
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 121
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_8

    .line 122
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 123
    const/4 v3, 0x0

    :cond_8
    throw v6

    .line 140
    .end local v3           #mCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v1

    .line 141
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->_updateCityName()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mNonUIHandler:Landroid/os/Handler;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 74
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mLooper:Landroid/os/Looper;

    .line 76
    :cond_1
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 77
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$UpdateCallback;

    .line 78
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public onInit(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WeatherSetting_Update"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 47
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mLooper:Landroid/os/Looper;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$1;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$1;-><init>(Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mNonUIHandler:Landroid/os/Handler;

    .line 63
    :cond_1
    return-void
.end method

.method public setDataUpdateCallback(Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$UpdateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$UpdateCallback;

    .line 37
    return-void
.end method

.method public updateCityName(Ljava/lang/String;)V
    .locals 2
    .parameter "cityCode"

    .prologue
    const/4 v1, 0x0

    .line 83
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mCityCode:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    :cond_0
    return-void
.end method
