.class public Landroid_maps_conflict_avoidance/com/google/common/util/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyIntoVector(Ljava/util/Vector;ILjava/util/Vector;)V
    .locals 3

    monitor-enter p2

    move v0, p1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    sub-int v2, v0, p1

    invoke-virtual {p2, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
