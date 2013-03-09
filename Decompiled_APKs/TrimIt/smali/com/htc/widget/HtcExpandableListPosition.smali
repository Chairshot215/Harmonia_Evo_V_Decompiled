.class Lcom/htc/widget/HtcExpandableListPosition;
.super Ljava/lang/Object;
.source "HtcExpandableListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcExpandableListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/htc/widget/HtcExpandableListPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static getRecycledOrCreate()Lcom/htc/widget/HtcExpandableListPosition;
    .locals 4

    .prologue
    .line 117
    sget-object v2, Lcom/htc/widget/HtcExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 118
    :try_start_0
    sget-object v1, Lcom/htc/widget/HtcExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 119
    sget-object v1, Lcom/htc/widget/HtcExpandableListPosition;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListPosition;

    .line 123
    .local v0, elp:Lcom/htc/widget/HtcExpandableListPosition;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-direct {v0}, Lcom/htc/widget/HtcExpandableListPosition;->resetState()V

    .line 125
    .end local v0           #elp:Lcom/htc/widget/HtcExpandableListPosition;
    :goto_0
    return-object v0

    .line 121
    :cond_0
    :try_start_1
    new-instance v0, Lcom/htc/widget/HtcExpandableListPosition;

    invoke-direct {v0}, Lcom/htc/widget/HtcExpandableListPosition;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static obtain(IIII)Lcom/htc/widget/HtcExpandableListPosition;
    .locals 1
    .parameter "type"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "flatListPos"

    .prologue
    .line 107
    invoke-static {}, Lcom/htc/widget/HtcExpandableListPosition;->getRecycledOrCreate()Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v0

    .line 108
    .local v0, elp:Lcom/htc/widget/HtcExpandableListPosition;
    iput p0, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    .line 109
    iput p1, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    .line 110
    iput p2, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    .line 111
    iput p3, v0, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    .line 112
    return-object v0
.end method

.method static obtainChildPosition(II)Lcom/htc/widget/HtcExpandableListPosition;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 86
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/htc/widget/HtcExpandableListPosition;->obtain(IIII)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainGroupPosition(I)Lcom/htc/widget/HtcExpandableListPosition;
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x2

    invoke-static {v0, p0, v1, v1}, Lcom/htc/widget/HtcExpandableListPosition;->obtain(IIII)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainPosition(J)Lcom/htc/widget/HtcExpandableListPosition;
    .locals 4
    .parameter "packedPosition"

    .prologue
    const/4 v3, 0x1

    .line 90
    const-wide v1, 0xffffffffL

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    .line 94
    :cond_0
    invoke-static {}, Lcom/htc/widget/HtcExpandableListPosition;->getRecycledOrCreate()Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v0

    .line 95
    .local v0, elp:Lcom/htc/widget/HtcExpandableListPosition;
    invoke-static {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    .line 96
    invoke-static {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 98
    iput v3, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    .line 99
    invoke-static {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    iput v1, v0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    goto :goto_0
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    .line 68
    iput v0, p0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    .line 69
    iput v0, p0, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    .line 70
    iput v0, p0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    .line 71
    return-void
.end method


# virtual methods
.method getPackedPosition()J
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v1, p0, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    .line 78
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 129
    sget-object v1, Lcom/htc/widget/HtcExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 130
    :try_start_0
    sget-object v0, Lcom/htc/widget/HtcExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 131
    sget-object v0, Lcom/htc/widget/HtcExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
