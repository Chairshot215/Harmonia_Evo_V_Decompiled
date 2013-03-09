.class final Lcom/htc/taskmanager/TaskInfo$2;
.super Ljava/lang/Object;
.source "TaskInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/taskmanager/TaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/taskmanager/TaskInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/taskmanager/TaskInfo;Lcom/htc/taskmanager/TaskInfo;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 46
    iget-wide v0, p2, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    iget-wide v2, p1, Lcom/htc/taskmanager/TaskInfo;->mTotalMemoryKb:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p1, Lcom/htc/taskmanager/TaskInfo;

    .end local p1
    check-cast p2, Lcom/htc/taskmanager/TaskInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/taskmanager/TaskInfo$2;->compare(Lcom/htc/taskmanager/TaskInfo;Lcom/htc/taskmanager/TaskInfo;)I

    move-result v0

    return v0
.end method
