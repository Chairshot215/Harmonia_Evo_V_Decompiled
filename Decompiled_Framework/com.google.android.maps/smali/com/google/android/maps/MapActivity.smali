.class public abstract Lcom/google/android/maps/MapActivity;
.super Landroid/app/Activity;
.source "MapActivity.java"


# static fields
.field protected static final MAP_DATA_SOURCE_CHINA:I = 0x1

.field protected static final MAP_DATA_SOURCE_DEFAULT:I

.field private static final drawableIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/maps/MapActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sMapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

.field private mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

.field private mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

.field private mMapView:Lcom/google/android/maps/MapView;

.field private final mNetworkHandler:Landroid/os/Handler;

.field private mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

.field private mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    sget-object v0, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    const-string v1, "loading_tile_android"

    sget v2, Lcom/google/android/maps/InternalR$drawable;->loading_tile_android:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    const-string v1, "no_tile_256"

    sget v2, Lcom/google/android/maps/InternalR$drawable;->no_tile_256:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/maps/MapActivity;->sMapReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    new-instance v0, Lcom/google/android/maps/MapActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/maps/MapActivity$1;-><init>(Lcom/google/android/maps/MapActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/maps/MapActivity;)Lcom/google/android/maps/NetworkConnectivityListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    return-object v0
.end method

.method private createMap()V
    .locals 10

    const v2, 0x64000

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x5f

    const/16 v6, 0x2d

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    const-string v0, "MapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recycling dispatcher "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->resetConnectionFactory()V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-super {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/KeyHelper;->getSignatureFingerprint(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->setAndroidSignature(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->setApplicationName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/maps/InternalR$array;->maps_starting_lat_lng:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    new-instance v4, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    aget v1, v0, v8

    aget v0, v0, v9

    invoke-direct {v4, v1, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(II)V

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/maps/InternalR$array;->maps_starting_zoom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    aget v0, v0, v8

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v5

    sget-object v0, Lcom/google/android/maps/MapActivity;->sMapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    if-nez v0, :cond_1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    const v1, 0xc8000

    const/16 v6, 0xa

    move v3, v2

    invoke-direct/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;-><init>(IIILandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/maps/MapActivity;->sMapReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    const-wide/32 v1, 0x1d4c0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager;->getTaskRunner()Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;-><init>(JLandroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;)V

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.6"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "ro.product.brand"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.product.device"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.product.model"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "client_id"

    const-string v6, "unknown"

    invoke-static {v4, v5, v6}, Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gmm-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v1, v4, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    goto/16 :goto_0

    :cond_1
    const-string v0, "MapActivity"

    const-string v1, "Recycling map object."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getServerUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->onGetMapDataSource()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "http://www.google.com/glm/mmap/a"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "http://www.google.cn/glm/mmap/a"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private restoreGlobalState()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->setConfig(Landroid_maps_conflict_avoidance/com/google/common/Config;)V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->resetConnectionFactory()V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->restoreMapReferences(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    :cond_0
    return-void
.end method

.method private sendStartSession()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addSimpleRequest(I[BZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MapActivity"

    const-string v2, "Error sending start session request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setupTileDensity()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setTextSize(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected isLocationDisplayed()Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    instance-of v4, v1, Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->isMyLocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected abstract isRouteDisplayed()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/android/maps/NetworkConnectivityListener;

    invoke-direct {v0}, Lcom/google/android/maps/NetworkConnectivityListener;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mNetworkHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->setStringIdMap(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->setupTileDensity()V

    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->createMap()V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->sendStartSession()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->cleanupMapReferences(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    :cond_0
    sget-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mNetworkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->close()V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->close(Z)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->close()V

    return-void

    :cond_1
    const-string v0, "MapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy leaving the lights on for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onGetMapDataSource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->sendStartSession()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stop()V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->pause()V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->stop()V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/google/android/maps/NetworkConnectivityListener;->stopListening()V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->saveState()V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->savePreferences()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause leaving the lights on for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->restoreGlobalState()V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->start()V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->start()V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->resume()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method setupMapView(Lcom/google/android/maps/MapView;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You are only allowed to have a single MapView in a MapActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p1, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->setAndroidMapKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "logging_id2"

    invoke-static {v1, v2}, Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->setAndroidLoggingId2(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v2, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    iget-object v3, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/MapView;->setup(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    return-void
.end method
