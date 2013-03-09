.class public Lcom/htc/HtcNaviPanel/HtcNaviPanel;
.super Landroid/app/Activity;
.source "HtcNaviPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;,
        Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;,
        Lcom/htc/HtcNaviPanel/HtcNaviPanel$MENU_OPTION;
    }
.end annotation


# static fields
.field private static final LOCATION_MIS_DISTANCE:F = 0.0f

.field private static final LOCATION_UPDATE_MILLIS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "HtcNaviPanel"

.field public static final WAKELOCK_KEY:Ljava/lang/String; = "NAVIPANEL_PWR_LOCK"


# instance fields
.field private mAppId:[I

.field private mConnectGps:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDisconnectGps:Ljava/lang/Runnable;

.field private final mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mDummyListener:Landroid/location/LocationListener;

.field private mGPSEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLooper:Landroid/os/Looper;

.field private mReceiverRegistered:Z

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mReceiverRegistered:Z

    .line 174
    new-instance v0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$1;

    invoke-direct {v0, p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel$1;-><init>(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mConnectGps:Ljava/lang/Runnable;

    .line 200
    new-instance v0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$2;

    invoke-direct {v0, p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel$2;-><init>(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mDisconnectGps:Ljava/lang/Runnable;

    .line 213
    new-instance v0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$3;

    invoke-direct {v0, p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel$3;-><init>(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mDummyListener:Landroid/location/LocationListener;

    .line 509
    new-instance v0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$4;

    invoke-direct {v0, p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel$4;-><init>(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mDockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->requestGPS()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->removeGPS()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mAppId:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->launchVZNavigator()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->chooseAndLaunchSearch()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)Landroid/app/UiModeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mUiModeManager:Landroid/app/UiModeManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->exitCarPanel()V

    return-void
.end method

.method private acquirePowerLock()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 139
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 140
    .local v0, powerManager:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "NAVIPANEL_PWR_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 141
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 144
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 147
    :cond_1
    return-void
.end method

.method private chooseAndLaunchSearch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 333
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    .line 334
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.microsoft.mobileexperience.bing.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 337
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HtcNaviPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity Not Found, : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v2, v4, v3}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private disableLockScreen()V
    .locals 4

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 492
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 493
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x40

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 495
    return-void
.end method

.method private exitCarPanel()V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mDestroyed:Z

    .line 158
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mConnectGps:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mDisconnectGps:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->releaseReceiver()V

    .line 164
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->stopCarDockService()V

    .line 165
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    const v1, 0x7f0b0005

    invoke-virtual {p0, v1}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 116
    .local v0, gridview:Landroid/widget/GridView;
    new-instance v1, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;

    invoke-direct {v1, p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ImageAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    new-instance v1, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;

    invoke-direct {v1, p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;-><init>(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(I)V

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 120
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setClickable(Z)V

    .line 122
    return-void
.end method

.method private isCallable(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 550
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchVZNavigator()V
    .locals 8

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 555
    .local v3, manager:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v2, mainIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 559
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 560
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 561
    .local v4, packageName:Ljava/lang/String;
    const-string v6, "com.vznavigator"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 562
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 563
    .local v5, vnavIntent:Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const/high16 v6, 0x1020

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 566
    new-instance v7, Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0, v5}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->startActivity(Landroid/content/Intent;)V

    .line 572
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #vnavIntent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 559
    .restart local v4       #packageName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private releasePowerLock()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 154
    return-void
.end method

.method private declared-synchronized removeGPS()V
    .locals 2

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mGPSEnabled:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mDummyListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mGPSEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized requestGPS()V
    .locals 8

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    .line 186
    .local v7, enableGPS:Z
    const-string v0, "HtcNaviPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProviderEnabled(GPS)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz v7, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mDummyListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mGPSEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 193
    .end local v7           #enableGPS:Z
    :catch_0
    move-exception v6

    .line 194
    .local v6, e:Ljava/lang/SecurityException;
    :try_start_2
    const-string v0, "HtcNaviPanel"

    const-string v1, " no permission to enable GPS "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 181
    .end local v6           #e:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :catch_1
    move-exception v6

    .line 196
    .local v6, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v0, "HtcNaviPanel"

    const-string v1, " GPS location provider is not avaiable "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private startCarDockService()V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/HtcNaviPanel/CarDockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 253
    return-void
.end method

.method private stopCarDockService()V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcNaviPanel.cardock_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v1, "cardock_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->sendBroadcast(Landroid/content/Intent;)V

    .line 260
    return-void
.end method


# virtual methods
.method public containCarKitEvent()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v3

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 238
    .local v0, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    .local v1, category:Ljava/lang/String;
    const-string v4, "android.intent.category.CAR_DOCK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 499
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 506
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 501
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 503
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->chooseAndLaunchSearch()V

    goto :goto_0

    .line 499
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method protected initReceiver()V
    .locals 2

    .prologue
    .line 528
    monitor-enter p0

    .line 529
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 530
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 531
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 534
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mReceiverRegistered:Z

    .line 536
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 537
    return-void

    .line 536
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 105
    const-string v0, "i rotation"

    const-string v1, "on conf changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->setContentView(I)V

    .line 110
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mAppId:[I

    .line 111
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->initView()V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iput-object p0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mContext:Landroid/content/Context;

    .line 82
    const-string v1, "uimode"

    invoke-virtual {p0, v1}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    iput-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mUiModeManager:Landroid/app/UiModeManager;

    .line 83
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mLocationManager:Landroid/location/LocationManager;

    .line 85
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->containCarKitEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->startCarDockService()V

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mAppId:[I

    .line 90
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->setContentView(I)V

    .line 91
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->initView()V

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HtcNaviPanel"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 94
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mLooper:Landroid/os/Looper;

    .line 96
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mHandler:Landroid/os/Handler;

    .line 98
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->disableLockScreen()V

    .line 99
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->initReceiver()V

    .line 100
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->releasePowerLock()V

    .line 170
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->exitCarPanel()V

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 172
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 472
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 487
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 475
    :pswitch_0
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.cardock.CarDockSettings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 477
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcNaviPanel"

    const-string v4, "Launch settings fail."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->finish()V

    .line 484
    iget-object v3, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v3, v2}, Landroid/app/UiModeManager;->disableCarMode(I)V

    goto :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mDisconnectGps:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 461
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 462
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 464
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v0, :cond_0

    .line 465
    const v0, 0x7f090006

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 467
    :cond_0
    return v2
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mConnectGps:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->acquirePowerLock()V

    .line 135
    return-void
.end method

.method protected releaseReceiver()V
    .locals 1

    .prologue
    .line 540
    monitor-enter p0

    .line 541
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mReceiverRegistered:Z

    .line 545
    :cond_0
    monitor-exit p0

    .line 546
    return-void

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 358
    :cond_0
    if-nez p3, :cond_1

    .line 363
    :cond_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 366
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 368
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 348
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 349
    return-void
.end method
