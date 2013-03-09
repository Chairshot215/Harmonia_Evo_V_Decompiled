.class public Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;
.super Ljava/lang/Object;
.source "StartupHelper.java"


# static fields
.field private static startupCallbacksForBgThread:Ljava/util/Vector;

.field private static startupCallbacksForUiThread:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForUiThread:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForBgThread:Ljava/util/Vector;

    return-void
.end method

.method public static addPostStartupBgCallback(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->addPostStartupCallback(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private static addPostStartupCallback(Ljava/lang/Runnable;Z)V
    .locals 2

    const-class v1, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForUiThread:Ljava/util/Vector;

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForUiThread:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForBgThread:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
