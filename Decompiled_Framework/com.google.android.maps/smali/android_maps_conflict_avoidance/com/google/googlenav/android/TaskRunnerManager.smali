.class public Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager;
.super Ljava/lang/Object;
.source "TaskRunnerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager$TaskRunnerHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTaskRunner()Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
    .locals 1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager$TaskRunnerHolder;->access$000()Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    move-result-object v0

    return-object v0
.end method
