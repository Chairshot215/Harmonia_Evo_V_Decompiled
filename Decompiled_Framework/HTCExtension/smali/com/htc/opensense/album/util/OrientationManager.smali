.class public Lcom/htc/opensense/album/util/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final SIDE_BOTTOM:I = 0x12

.field public static final SIDE_LANDSCAPE:I = 0x20

.field public static final SIDE_LEFT:I = 0x22

.field public static final SIDE_PORTRAIT:I = 0x10

.field public static final SIDE_RIGHT:I = 0x21

.field public static final SIDE_TOP:I = 0x11

.field public static final SIDE_UNKNOWN:I

.field private static lastSide:I

.field private static mContextName:Ljava/lang/String;

.field private static mEventListener:Landroid/hardware/SensorEventListener;

.field private static mListening:Z

.field private static mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

.field private static mPause:Z

.field private static mSensor:Landroid/hardware/Sensor;

.field private static mSensorManager:Landroid/hardware/SensorManager;

.field private static mSide:I

.field private static mSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/htc/opensense/album/util/OrientationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/OrientationManager;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x11

    sput v0, Lcom/htc/opensense/album/util/OrientationManager;->mSide:I

    sput-boolean v1, Lcom/htc/opensense/album/util/OrientationManager;->mPause:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mContextName:Ljava/lang/String;

    sput v1, Lcom/htc/opensense/album/util/OrientationManager;->lastSide:I

    new-instance v0, Lcom/htc/opensense/album/util/OrientationManager$1;

    invoke-direct {v0}, Lcom/htc/opensense/album/util/OrientationManager$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/htc/opensense/album/util/OrientationManager;->mSide:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/htc/opensense/album/util/OrientationManager;->mSide:I

    return p0
.end method

.method static synthetic access$100([F)I
    .locals 1

    invoke-static {p0}, Lcom/htc/opensense/album/util/OrientationManager;->getOrientation([F)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mListening:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mPause:Z

    return v0
.end method

.method static synthetic access$400()Lcom/htc/opensense/album/util/OrientationListener;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/htc/opensense/album/util/OrientationManager;->lastSide:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/htc/opensense/album/util/OrientationManager;->lastSide:I

    return p0
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .locals 2

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget v1, Lcom/htc/opensense/album/util/OrientationManager;->mSide:I

    return v1

    :pswitch_0
    const/16 v1, 0x11

    sput v1, Lcom/htc/opensense/album/util/OrientationManager;->mSide:I

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x22

    sput v1, Lcom/htc/opensense/album/util/OrientationManager;->mSide:I

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x12

    sput v1, Lcom/htc/opensense/album/util/OrientationManager;->mSide:I

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x21

    sput v1, Lcom/htc/opensense/album/util/OrientationManager;->mSide:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getOrientation([F)I
    .locals 6

    const/high16 v5, 0x425c

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v0, p0, v4

    const/4 v4, 0x1

    aget v1, p0, v4

    const/4 v4, 0x2

    aget v2, p0, v4

    const/high16 v4, -0x3e38

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    const/high16 v4, -0x3ce5

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    const/16 v3, 0x11

    :cond_0
    :goto_0
    return v3

    :cond_1
    cmpl-float v4, v1, v5

    if-lez v4, :cond_2

    const/high16 v4, 0x42fa

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    const/16 v3, 0x12

    goto :goto_0

    :cond_2
    cmpl-float v4, v2, v5

    if-lez v4, :cond_3

    const/16 v3, 0x21

    goto :goto_0

    :cond_3
    const/high16 v4, -0x3da4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    const/16 v3, 0x22

    goto :goto_0
.end method

.method public static isListening()Z
    .locals 1

    sget-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mListening:Z

    return v0
.end method

.method public static declared-synchronized pause()V
    .locals 2

    const-class v1, Lcom/htc/opensense/album/util/OrientationManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mPause:Z

    sget-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    invoke-interface {v0}, Lcom/htc/opensense/album/util/OrientationListener;->onPause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resume()V
    .locals 2

    const-class v1, Lcom/htc/opensense/album/util/OrientationManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mPause:Z

    sget-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    invoke-interface {v0}, Lcom/htc/opensense/album/util/OrientationListener;->onResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static start(Landroid/content/Context;Lcom/htc/opensense/album/util/OrientationListener;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/htc/opensense/album/util/OrientationManager;->mContextName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/opensense/album/util/OrientationManager;->stop(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mContextName:Ljava/lang/String;

    sget-object v0, Lcom/htc/opensense/album/util/OrientationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OrientationManager][start] Context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/album/util/OrientationManager;->mContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mSensor:Landroid/hardware/Sensor;

    sget-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mSupported:Z

    sput-boolean v2, Lcom/htc/opensense/album/util/OrientationManager;->mListening:Z

    sget-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mSupported:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v3, Lcom/htc/opensense/album/util/OrientationManager;->mEventListener:Landroid/hardware/SensorEventListener;

    sget-object v4, Lcom/htc/opensense/album/util/OrientationManager;->mSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mListening:Z

    sput-object p1, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    sget-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    invoke-static {p0}, Lcom/htc/opensense/album/util/OrientationManager;->getOrientation(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/htc/opensense/album/util/OrientationListener;->onStart(I)V

    :cond_1
    sget-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mSupported:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/htc/opensense/album/util/OrientationManager;->mListening:Z

    if-eqz v0, :cond_3

    :goto_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x11

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-boolean v1, Lcom/htc/opensense/album/util/OrientationManager;->mListening:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/opensense/album/util/OrientationManager;->mContextName:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/album/util/OrientationManager;->mContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/htc/opensense/album/util/OrientationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OrientationManager][stop] Context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/OrientationManager;->mContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v5, Lcom/htc/opensense/album/util/OrientationManager;->mListening:Z

    :try_start_0
    sget-object v1, Lcom/htc/opensense/album/util/OrientationManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/opensense/album/util/OrientationManager;->mEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/opensense/album/util/OrientationManager;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/htc/opensense/album/util/OrientationManager;->mEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2
    sget-object v1, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    invoke-interface {v1}, Lcom/htc/opensense/album/util/OrientationListener;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    sput-object v4, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    sput-object v4, Lcom/htc/opensense/album/util/OrientationManager;->mSensorManager:Landroid/hardware/SensorManager;

    sput-object v4, Lcom/htc/opensense/album/util/OrientationManager;->mSensor:Landroid/hardware/Sensor;

    sput-boolean v5, Lcom/htc/opensense/album/util/OrientationManager;->mSupported:Z

    sput v6, Lcom/htc/opensense/album/util/OrientationManager;->mSide:I

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v4, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    sput-object v4, Lcom/htc/opensense/album/util/OrientationManager;->mSensorManager:Landroid/hardware/SensorManager;

    sput-object v4, Lcom/htc/opensense/album/util/OrientationManager;->mSensor:Landroid/hardware/Sensor;

    sput-boolean v5, Lcom/htc/opensense/album/util/OrientationManager;->mSupported:Z

    sput v6, Lcom/htc/opensense/album/util/OrientationManager;->mSide:I

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v4, Lcom/htc/opensense/album/util/OrientationManager;->mOriListener:Lcom/htc/opensense/album/util/OrientationListener;

    sput-object v4, Lcom/htc/opensense/album/util/OrientationManager;->mSensorManager:Landroid/hardware/SensorManager;

    sput-object v4, Lcom/htc/opensense/album/util/OrientationManager;->mSensor:Landroid/hardware/Sensor;

    sput-boolean v5, Lcom/htc/opensense/album/util/OrientationManager;->mSupported:Z

    sput v6, Lcom/htc/opensense/album/util/OrientationManager;->mSide:I

    throw v1
.end method
