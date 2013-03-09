.class Landroid/os/memory/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/memory/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/os/memory/RunningState$ProcessItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/os/memory/RunningState$ProcessItem;Landroid/os/memory/RunningState$ProcessItem;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget-boolean v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v3, p2, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    if-eq v2, v3, :cond_2

    iget-boolean v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v3, p2, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    if-eq v2, v3, :cond_4

    iget-boolean v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    iget-wide v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget-wide v2, p1, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/os/memory/RunningState$ProcessItem;

    check-cast p2, Landroid/os/memory/RunningState$ProcessItem;

    invoke-virtual {p0, p1, p2}, Landroid/os/memory/RunningState$ServiceProcessComparator;->compare(Landroid/os/memory/RunningState$ProcessItem;Landroid/os/memory/RunningState$ProcessItem;)I

    move-result v0

    return v0
.end method
