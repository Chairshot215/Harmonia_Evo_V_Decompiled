.class public Lfr/clockwidget/lpsense/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ACTION_UPDATE_ALL:Ljava/lang/String; = "fr.clockwidget.lpsense.UPDATE_ALL"

.field private static final LOCATION_REFRESH_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIME_RETRIAL_INTERVAL:J = 0xea60L

.field private static sAppWidgetIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandler:Landroid/os/Handler;

.field private static sLocationReady:Z

.field private static sLocationUpdate:Z

.field private static sLock:Ljava/lang/Object;

.field private static sThreadRunning:Z


# instance fields
.field private final locationListener:Landroid/location/LocationListener;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private sLocationManager:Landroid/location/LocationManager;

.field private sLocationTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const-class v0, Lfr/clockwidget/lpsense/UpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/clockwidget/lpsense/UpdateService;->TAG:Ljava/lang/String;

    .line 70
    sput-boolean v1, Lfr/clockwidget/lpsense/UpdateService;->sLocationUpdate:Z

    .line 71
    sput-boolean v1, Lfr/clockwidget/lpsense/UpdateService;->sLocationReady:Z

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/clockwidget/lpsense/UpdateService;->sLock:Ljava/lang/Object;

    .line 82
    sput-boolean v1, Lfr/clockwidget/lpsense/UpdateService;->sThreadRunning:Z

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lfr/clockwidget/lpsense/UpdateService;->sAppWidgetIds:Ljava/util/Queue;

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lfr/clockwidget/lpsense/UpdateService;->sHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;

    .line 206
    new-instance v0, Lfr/clockwidget/lpsense/UpdateService$1;

    invoke-direct {v0, p0}, Lfr/clockwidget/lpsense/UpdateService$1;-><init>(Lfr/clockwidget/lpsense/UpdateService;)V

    iput-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    new-instance v0, Lfr/clockwidget/lpsense/UpdateService$2;

    invoke-direct {v0, p0}, Lfr/clockwidget/lpsense/UpdateService$2;-><init>(Lfr/clockwidget/lpsense/UpdateService;)V

    iput-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->locationListener:Landroid/location/LocationListener;

    .line 47
    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lfr/clockwidget/lpsense/UpdateService;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lfr/clockwidget/lpsense/UpdateService;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10(Lfr/clockwidget/lpsense/UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    invoke-direct {p0}, Lfr/clockwidget/lpsense/UpdateService;->removeLocationListener()V

    return-void
.end method

.method static synthetic access$11()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lfr/clockwidget/lpsense/UpdateService;->sLocationReady:Z

    return v0
.end method

.method static synthetic access$2(Lfr/clockwidget/lpsense/UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    invoke-direct {p0}, Lfr/clockwidget/lpsense/UpdateService;->updateWidget()V

    return-void
.end method

.method static synthetic access$3(Lfr/clockwidget/lpsense/UpdateService;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lfr/clockwidget/lpsense/UpdateService;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4(Z)V
    .locals 0
    .parameter

    .prologue
    .line 71
    sput-boolean p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationReady:Z

    return-void
.end method

.method static synthetic access$5(Lfr/clockwidget/lpsense/UpdateService;)Landroid/location/LocationManager;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$6(Lfr/clockwidget/lpsense/UpdateService;)Landroid/location/LocationListener;
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->locationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$7(Lfr/clockwidget/lpsense/UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    invoke-direct {p0}, Lfr/clockwidget/lpsense/UpdateService;->waitForLocationUpdate()V

    return-void
.end method

.method static synthetic access$8(Lfr/clockwidget/lpsense/UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    invoke-direct {p0}, Lfr/clockwidget/lpsense/UpdateService;->useLastLocation()V

    return-void
.end method

.method static synthetic access$9(Z)V
    .locals 0
    .parameter

    .prologue
    .line 70
    sput-boolean p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationUpdate:Z

    return-void
.end method

.method private static getNextUpdate()I
    .locals 2

    .prologue
    .line 126
    sget-object v1, Lfr/clockwidget/lpsense/UpdateService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    sget-object v0, Lfr/clockwidget/lpsense/UpdateService;->sAppWidgetIds:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    monitor-exit v1

    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lfr/clockwidget/lpsense/UpdateService;->sAppWidgetIds:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleStart(Landroid/content/Intent;I)V
    .locals 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 185
    if-eqz p1, :cond_0

    const-string v2, "fr.clockwidget.lpsense.UPDATE_ALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 188
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lfr/clockwidget/lpsense/ClockWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    invoke-static {v2}, Lfr/clockwidget/lpsense/UpdateService;->requestUpdate([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_1
    :goto_0
    sget-object v2, Lfr/clockwidget/lpsense/UpdateService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 197
    :try_start_1
    sget-boolean v3, Lfr/clockwidget/lpsense/UpdateService;->sThreadRunning:Z

    if-nez v3, :cond_2

    .line 198
    const/4 v3, 0x1

    sput-boolean v3, Lfr/clockwidget/lpsense/UpdateService;->sThreadRunning:Z

    .line 199
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 196
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    return-void

    .line 189
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 191
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    goto :goto_0

    .line 196
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private static hasMoreUpdates()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    sget-object v1, Lfr/clockwidget/lpsense/UpdateService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    sget-object v2, Lfr/clockwidget/lpsense/UpdateService;->sAppWidgetIds:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .line 115
    .local v0, hasMore:Z
    :goto_0
    if-nez v0, :cond_0

    .line 116
    const/4 v2, 0x0

    sput-boolean v2, Lfr/clockwidget/lpsense/UpdateService;->sThreadRunning:Z

    .line 118
    :cond_0
    monitor-exit v1

    return v0

    .line 114
    .end local v0           #hasMore:Z
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private refreshWeather(Z)V
    .locals 6
    .parameter "useMyLocation"

    .prologue
    .line 349
    invoke-static {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->initPreferences(Landroid/content/Context;)V

    .line 350
    if-eqz p1, :cond_2

    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getPostal()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 351
    .local v0, postal:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 352
    :cond_0
    if-eqz p1, :cond_3

    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltPostal()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 355
    :cond_1
    :goto_1
    new-instance v1, Lfr/clockwidget/lpsense/weather/GoogleWeather;

    invoke-direct {v1, p0, v0}, Lfr/clockwidget/lpsense/weather/GoogleWeather;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    .local v1, weather:Lfr/clockwidget/lpsense/weather/GoogleWeather;
    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/GoogleWeather;->request()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 357
    invoke-virtual {v1}, Lfr/clockwidget/lpsense/weather/GoogleWeather;->persist()V

    .line 358
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lfr/clockwidget/lpsense/PreferencesActivity;->setNextUpdate(J)V

    .line 364
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lfr/clockwidget/lpsense/PreferencesActivity;->setLastUpdate(J)V

    .line 365
    return-void

    .line 350
    .end local v0           #postal:Ljava/lang/String;
    .end local v1           #weather:Lfr/clockwidget/lpsense/weather/GoogleWeather;
    :cond_2
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltPostal()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 352
    .restart local v0       #postal:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getPostal()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 361
    .restart local v1       #weather:Lfr/clockwidget/lpsense/weather/GoogleWeather;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lfr/clockwidget/lpsense/PreferencesActivity;->setNextUpdate(J)V

    goto :goto_2
.end method

.method private registerLocationListener()V
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Lfr/clockwidget/lpsense/UpdateService;->removeLocationListener()V

    .line 262
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lfr/clockwidget/lpsense/UpdateService;->sHandler:Landroid/os/Handler;

    new-instance v1, Lfr/clockwidget/lpsense/UpdateService$3;

    invoke-direct {v1, p0}, Lfr/clockwidget/lpsense/UpdateService$3;-><init>(Lfr/clockwidget/lpsense/UpdateService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lfr/clockwidget/lpsense/UpdateService;->sLocationUpdate:Z

    goto :goto_0
.end method

.method private removeLocationListener()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lfr/clockwidget/lpsense/UpdateService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationTask:Ljava/util/TimerTask;

    .line 346
    :cond_1
    return-void
.end method

.method public static requestLocationUpdate()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    sput-boolean v0, Lfr/clockwidget/lpsense/UpdateService;->sLocationUpdate:Z

    .line 238
    return-void
.end method

.method public static requestUpdate([I)V
    .locals 6
    .parameter "appWidgetIds"

    .prologue
    .line 97
    sget-object v1, Lfr/clockwidget/lpsense/UpdateService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    if-eqz p0, :cond_0

    .line 99
    :try_start_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 97
    :cond_0
    monitor-exit v1

    .line 104
    return-void

    .line 99
    :cond_1
    aget v0, p0, v3

    .line 100
    .local v0, appWidgetId:I
    sget-object v4, Lfr/clockwidget/lpsense/UpdateService;->sAppWidgetIds:Ljava/util/Queue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v0           #appWidgetId:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static scheduleUpdate(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "nextUpdate"

    .prologue
    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 456
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "fr.clockwidget.lpsense.UPDATE_ALL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v3, updateIntent:Landroid/content/Intent;
    const-class v4, Lfr/clockwidget/lpsense/UpdateService;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 460
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 463
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 464
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 466
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lfr/clockwidget/lpsense/UpdateService;->TAG:Ljava/lang/String;

    const-string v5, "Fail to schedule the next update."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 7
    .parameter "location"

    .prologue
    const/4 v6, 0x1

    .line 321
    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 324
    .local v0, accuracy:F
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v1, v3

    .line 325
    .local v1, latitude:F
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v2, v3

    .line 326
    .local v2, longitude:F
    invoke-static {p0, v1, v2}, Lfr/clockwidget/lpsense/PreferencesActivity;->saveLocation(Landroid/content/Context;FF)V

    .line 327
    sget-object v3, Lfr/clockwidget/lpsense/UpdateService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Location update: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " +/-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const v3, 0x459c4000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 329
    invoke-direct {p0}, Lfr/clockwidget/lpsense/UpdateService;->removeLocationListener()V

    .line 332
    .end local v0           #accuracy:F
    .end local v1           #latitude:F
    .end local v2           #longitude:F
    :cond_0
    sput-boolean v6, Lfr/clockwidget/lpsense/UpdateService;->sLocationReady:Z

    .line 333
    const/4 v3, 0x0

    sput-boolean v3, Lfr/clockwidget/lpsense/UpdateService;->sLocationUpdate:Z

    .line 334
    invoke-direct {p0, v6}, Lfr/clockwidget/lpsense/UpdateService;->refreshWeather(Z)V

    .line 335
    const-wide/16 v3, 0x0

    invoke-static {p0, v3, v4}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 336
    return-void
.end method

.method private updateWidget()V
    .locals 6

    .prologue
    .line 368
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 369
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->initPreferences(Landroid/content/Context;)V

    .line 371
    :cond_0
    :goto_0
    invoke-static {}, Lfr/clockwidget/lpsense/UpdateService;->hasMoreUpdates()Z

    move-result v4

    if-nez v4, :cond_1

    .line 393
    return-void

    .line 372
    :cond_1
    invoke-static {}, Lfr/clockwidget/lpsense/UpdateService;->getNextUpdate()I

    move-result v0

    .line 374
    .local v0, appWidgetId:I
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useCompMode()Z

    move-result v2

    .line 375
    .local v2, compMode:Z
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lfr/clockwidget/lpsense/UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_2

    const v5, 0x7f030007

    :goto_1
    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 376
    .local v3, updateViews:Landroid/widget/RemoteViews;
    if-eqz v3, :cond_0

    .line 378
    invoke-static {p0, v3}, Lfr/clockwidget/lpsense/ClockWidget;->buildTimeUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 380
    :try_start_0
    invoke-virtual {v1, v0, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    :goto_2
    invoke-static {p0, v3}, Lfr/clockwidget/lpsense/ClockWidget;->buildWeatherUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 387
    :try_start_1
    invoke-virtual {v1, v0, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v4

    goto :goto_0

    .line 375
    .end local v3           #updateViews:Landroid/widget/RemoteViews;
    :cond_2
    const v5, 0x7f030006

    goto :goto_1

    .line 381
    .restart local v3       #updateViews:Landroid/widget/RemoteViews;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private useLastLocation()V
    .locals 4

    .prologue
    .line 300
    iget-object v2, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, lastLocation:Landroid/location/Location;
    :try_start_0
    iget-object v2, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 308
    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useGPS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    :try_start_1
    iget-object v2, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 315
    :cond_0
    :goto_1
    sget-object v2, Lfr/clockwidget/lpsense/UpdateService;->TAG:Ljava/lang/String;

    const-string v3, "Use last location fix."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0, v1}, Lfr/clockwidget/lpsense/UpdateService;->updateLocation(Landroid/location/Location;)V

    .line 318
    .end local v1           #lastLocation:Landroid/location/Location;
    :cond_1
    return-void

    .line 305
    .restart local v1       #lastLocation:Landroid/location/Location;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 306
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 311
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 312
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private waitForLocationUpdate()V
    .locals 4

    .prologue
    .line 286
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 287
    .local v0, myTimer:Ljava/util/Timer;
    new-instance v1, Lfr/clockwidget/lpsense/UpdateService$4;

    invoke-direct {v1, p0}, Lfr/clockwidget/lpsense/UpdateService$4;-><init>(Lfr/clockwidget/lpsense/UpdateService;)V

    iput-object v1, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationTask:Ljava/util/TimerTask;

    .line 296
    iget-object v1, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationTask:Ljava/util/TimerTask;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 297
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 138
    const-string v2, "http://lpsense.allo-mobile.fr"

    invoke-static {p0, v2}, Lfr/nullwire/trace/ExceptionHandler;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    const-string v2, "A2UKWUCUC9K3KHMFZMCB"

    invoke-static {p0, v2}, Lfr/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    :try_start_0
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lfr/clockwidget/lpsense/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lfr/clockwidget/lpsense/UpdateService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lfr/clockwidget/lpsense/UpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lfr/clockwidget/lpsense/UpdateService;->setForeground(Z)V

    .line 160
    return-void

    .line 144
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 145
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lfr/clockwidget/lpsense/UpdateService;->sLocationManager:Landroid/location/LocationManager;

    .line 146
    sget-object v2, Lfr/clockwidget/lpsense/UpdateService;->TAG:Ljava/lang/String;

    const-string v3, "Could not initialize location manager."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 474
    invoke-direct {p0}, Lfr/clockwidget/lpsense/UpdateService;->removeLocationListener()V

    .line 475
    iget-object v0, p0, Lfr/clockwidget/lpsense/UpdateService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/UpdateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/clockwidget/lpsense/UpdateService;->setForeground(Z)V

    .line 478
    invoke-static {p0}, Lfr/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 479
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 480
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lfr/clockwidget/lpsense/UpdateService;->handleStart(Landroid/content/Intent;I)V

    .line 174
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 178
    invoke-direct {p0, p1, p3}, Lfr/clockwidget/lpsense/UpdateService;->handleStart(Landroid/content/Intent;I)V

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 403
    invoke-static {p0}, Lfr/clockwidget/lpsense/PreferencesActivity;->initPreferences(Landroid/content/Context;)V

    .line 404
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getRefreshInterval()J

    move-result-wide v9

    .line 406
    .local v9, refreshInterval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 407
    .local v6, nowMillis:J
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getLastUpdate()J

    move-result-wide v2

    .line 408
    .local v2, lastUpdate:J
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getNextUpdate()J

    move-result-wide v4

    .line 409
    .local v4, nextUpdate:J
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->autoRefresh()Z

    move-result v0

    .line 410
    .local v0, autoRefresh:Z
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->useMyLocation()Z

    move-result v11

    .line 411
    .local v11, useMyLocation:Z
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->getAltPostal()Ljava/lang/String;

    move-result-object v8

    .line 413
    .local v8, postal:Ljava/lang/String;
    if-nez v11, :cond_1

    .line 414
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 415
    :cond_0
    const/4 v11, 0x1

    .line 419
    :cond_1
    const/4 v1, 0x1

    .line 420
    .local v1, isUpdated:Z
    if-eqz v11, :cond_6

    .line 421
    if-eqz v0, :cond_2

    add-long v12, v2, v9

    cmp-long v12, v6, v12

    if-gez v12, :cond_3

    :cond_2
    sget-boolean v12, Lfr/clockwidget/lpsense/UpdateService;->sLocationUpdate:Z

    if-eqz v12, :cond_4

    .line 422
    :cond_3
    invoke-direct {p0}, Lfr/clockwidget/lpsense/UpdateService;->registerLocationListener()V

    .line 437
    :goto_0
    invoke-direct {p0}, Lfr/clockwidget/lpsense/UpdateService;->updateWidget()V

    .line 439
    if-eqz v1, :cond_a

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v9

    invoke-static {p0, v12, v13}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 449
    :goto_1
    return-void

    .line 424
    :cond_4
    cmp-long v12, v6, v4

    if-ltz v12, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_5

    .line 425
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lfr/clockwidget/lpsense/UpdateService;->refreshWeather(Z)V

    goto :goto_0

    .line 427
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 431
    :cond_6
    if-eqz v0, :cond_7

    add-long v12, v2, v9

    cmp-long v12, v6, v12

    if-gez v12, :cond_8

    :cond_7
    cmp-long v12, v6, v4

    if-ltz v12, :cond_9

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_9

    .line 432
    :cond_8
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lfr/clockwidget/lpsense/UpdateService;->refreshWeather(Z)V

    goto :goto_0

    .line 434
    :cond_9
    const/4 v1, 0x0

    goto :goto_0

    .line 444
    :cond_a
    add-long v12, v2, v9

    invoke-static {p0, v12, v13}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    goto :goto_1
.end method
