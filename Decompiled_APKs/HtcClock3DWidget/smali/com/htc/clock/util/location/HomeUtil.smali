.class public Lcom/htc/clock/util/location/HomeUtil;
.super Ljava/lang/Object;
.source "HomeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock/util/location/HomeUtil$MyUIHandler;,
        Lcom/htc/clock/util/location/HomeUtil$HomeObserver;,
        Lcom/htc/clock/util/location/HomeUtil$onHomeChangeListener;
    }
.end annotation


# static fields
.field public static final APP_MY_HOME:Ljava/lang/String; = "com.htc.android.worldclock.home"

.field private static final WHAT_UI_UPDATE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHomeName:Ljava/lang/String;

.field private mHomeObserver:Landroid/database/ContentObserver;

.field private mHomeTimezone:Ljava/lang/String;

.field private mListener:Lcom/htc/clock/util/location/HomeUtil$onHomeChangeListener;

.field private mLock:Ljava/lang/Object;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mLock:Ljava/lang/Object;

    .line 184
    new-instance v0, Lcom/htc/clock/util/location/HomeUtil$1;

    invoke-direct {v0, p0}, Lcom/htc/clock/util/location/HomeUtil$1;-><init>(Lcom/htc/clock/util/location/HomeUtil;)V

    iput-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mUpdater:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lcom/htc/clock/util/location/HomeUtil;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/htc/clock/util/location/HomeUtil;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/htc/clock/util/location/HomeUtil$MyUIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/clock/util/location/HomeUtil$MyUIHandler;-><init>(Lcom/htc/clock/util/location/HomeUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mUIHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/htc/clock/util/location/HomeUtil;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/clock/util/location/HomeUtil;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/clock/util/location/HomeUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/clock/util/location/HomeUtil;->updateHomeListener()V

    return-void
.end method

.method private updateHomeListener()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mListener:Lcom/htc/clock/util/location/HomeUtil$onHomeChangeListener;

    .line 194
    .local v0, listener:Lcom/htc/clock/util/location/HomeUtil$onHomeChangeListener;
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Lcom/htc/clock/util/location/HomeUtil$onHomeChangeListener;->onHomeCityChange()V

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCurrentHomeTime()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 88
    const-string v7, "MyHomeUtil getCurrentHomeTime~"

    invoke-static {v7}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 89
    iget-object v7, p0, Lcom/htc/clock/util/location/HomeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.htc.android.worldclock.home"

    invoke-static {v7, v8}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v6

    .line 91
    .local v6, w:[Lcom/htc/util/weather/WeatherLocation;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 92
    .local v0, calNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 93
    .local v5, tzNow:Ljava/util/TimeZone;
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, timezone:Ljava/lang/String;
    const-string v1, ""

    .line 96
    .local v1, homeName:Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v7, v6

    if-lez v7, :cond_2

    .line 98
    aget-object v7, v6, v9

    invoke-virtual {v7}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, idHome:Ljava/lang/String;
    aget-object v7, v6, v9

    invoke-virtual {v7}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, nameHome:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 102
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/clock/util/location/HomeUtil;->queryTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_0
    move-object v4, v2

    .line 112
    .end local v2           #idHome:Ljava/lang/String;
    .end local v3           #nameHome:Ljava/lang/String;
    :goto_1
    iput-object v1, p0, Lcom/htc/clock/util/location/HomeUtil;->mHomeName:Ljava/lang/String;

    .line 113
    iput-object v4, p0, Lcom/htc/clock/util/location/HomeUtil;->mHomeTimezone:Ljava/lang/String;

    .line 114
    iget-object v7, p0, Lcom/htc/clock/util/location/HomeUtil;->mUIHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 115
    return-void

    .line 105
    .restart local v2       #idHome:Ljava/lang/String;
    .restart local v3       #nameHome:Ljava/lang/String;
    :cond_1
    move-object v1, v3

    goto :goto_0

    .line 109
    .end local v2           #idHome:Ljava/lang/String;
    .end local v3           #nameHome:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/clock/util/location/HomeUtil;->queryTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getHomeCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mHomeName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeCityTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mHomeTimezone:Ljava/lang/String;

    return-object v0
.end method

.method protected queryTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "timezoneId"

    .prologue
    .line 118
    const-string v0, "MyHomeUtil queryTimeZoneName~"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timezoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v11, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 121
    .local v11, systemLocale:Ljava/util/Locale;
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, systemLang:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, systemCountry:Ljava/lang/String;
    const-string v0, "zh"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "CN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    const-string v10, "zh"

    .line 134
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 137
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/clock/util/location/LocationUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 144
    :goto_1
    if-eqz v6, :cond_7

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 147
    .local v8, index:I
    if-gez v8, :cond_1

    const-string v0, "en"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 148
    :cond_1
    if-ltz v8, :cond_6

    .line 149
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 154
    .end local v8           #index:I
    :cond_2
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    const/4 v6, 0x0

    .line 159
    :goto_3
    return-object p1

    .line 126
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const-string v0, "TW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    const-string v10, "zhTW"

    goto :goto_0

    .line 128
    :cond_4
    const-string v0, "HK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    const-string v10, "zhTW"

    goto :goto_0

    .line 130
    :cond_5
    const-string v0, "SG"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v10, "zh"

    goto :goto_0

    .line 139
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 140
    .local v7, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryTimeZoneName~ queryTimeZoneName fail e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #index:I
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryTimeZoneName~ error index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 157
    .end local v8           #index:I
    :cond_7
    const-string v0, "queryTimeZoneName~ c is null"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public register(Lcom/htc/clock/util/location/HomeUtil$onHomeChangeListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 56
    iget-object v2, p0, Lcom/htc/clock/util/location/HomeUtil;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 57
    :try_start_0
    const-string v1, "MyHomeUtil register~"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/htc/clock/util/location/HomeUtil;->mListener:Lcom/htc/clock/util/location/HomeUtil$onHomeChangeListener;

    .line 59
    iget-object v1, p0, Lcom/htc/clock/util/location/HomeUtil;->mHomeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 60
    sget-object v1, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "location"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "com.htc.android.worldclock.home"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/htc/clock/util/location/HomeUtil$HomeObserver;

    iget-object v3, p0, Lcom/htc/clock/util/location/HomeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/htc/clock/util/location/HomeUtil$HomeObserver;-><init>(Lcom/htc/clock/util/location/HomeUtil;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/clock/util/location/HomeUtil;->mHomeObserver:Landroid/database/ContentObserver;

    .line 64
    iget-object v1, p0, Lcom/htc/clock/util/location/HomeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/clock/util/location/HomeUtil;->mHomeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/clock/util/location/HomeUtil;->getCurrentHomeTime()V

    .line 68
    monitor-exit v2

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unRegister()V
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/htc/clock/util/location/HomeUtil;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    const-string v0, "MyHomeUtil unRegister~"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mHomeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/clock/util/location/HomeUtil;->mHomeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 78
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mHomeObserver:Landroid/database/ContentObserver;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mListener:Lcom/htc/clock/util/location/HomeUtil$onHomeChangeListener;

    .line 80
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/clock/util/location/HomeUtil;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock/util/location/HomeUtil;->mHandler:Landroid/os/Handler;

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
