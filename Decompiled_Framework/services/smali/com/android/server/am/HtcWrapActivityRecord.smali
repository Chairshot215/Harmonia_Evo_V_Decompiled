.class public Lcom/android/server/am/HtcWrapActivityRecord;
.super Ljava/lang/Object;
.source "HtcWrapActivityRecord.java"


# instance fields
.field public task:Lcom/android/server/am/HtcWrapTaskRecord;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    new-instance v1, Lcom/android/server/am/HtcWrapTaskRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {v1, v2}, Lcom/android/server/am/HtcWrapTaskRecord;-><init>(Lcom/android/server/am/TaskRecord;)V

    iput-object v1, p0, Lcom/android/server/am/HtcWrapActivityRecord;->task:Lcom/android/server/am/HtcWrapTaskRecord;

    return-void
.end method

.method public static create(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/HtcWrapActivityRecord;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/am/HtcWrapActivityRecord;

    invoke-direct {v0, p0}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
