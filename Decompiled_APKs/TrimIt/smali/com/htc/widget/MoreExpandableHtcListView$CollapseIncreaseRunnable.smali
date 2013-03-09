.class Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;
.super Ljava/lang/Object;
.source "MoreExpandableHtcListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/MoreExpandableHtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollapseIncreaseRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mDistanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightMovedDistance:I

.field private mHideViewCount:I

.field private mIndex:I

.field private mInit:Z

.field private mMode:I

.field private mPosition:I

.field mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1272
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1277
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mPosition:I

    .line 1279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 1280
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    .line 1281
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mMode:I

    .line 1282
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mInit:Z

    .line 1283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    .line 1284
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    .line 1285
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHeightMovedDistance:I

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1272
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1305
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mMode:I

    .line 1306
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    .line 1307
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1308
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1309
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1310
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1311
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z
    invoke-static {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1002(Lcom/htc/widget/MoreExpandableHtcListView;Z)Z

    .line 1312
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3600(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3600(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mPosition:I

    invoke-interface {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 1315
    :cond_0
    return-void
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 1375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1376
    .local v0, now:J
    const/4 v2, 0x0

    .line 1378
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 1379
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1383
    :goto_0
    return v2

    .line 1381
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    div-long v3, v4, v6

    long-to-int v2, v3

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1319
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->unSetHideViewFlag()V

    .line 1320
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    .line 1321
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    if-nez v1, :cond_0

    .line 1322
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->end()V

    .line 1336
    :goto_0
    return-void

    .line 1326
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    if-ge v0, v1, :cond_1

    .line 1327
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1330
    :cond_1
    iput v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mMode:I

    .line 1331
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseDuration(ILjava/util/ArrayList;J)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1700(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I

    .line 1332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    .line 1333
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    .line 1334
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHeightMovedDistance:I

    .line 1335
    iput-boolean v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mInit:Z

    goto :goto_0
.end method

.method private nextView()V
    .locals 4

    .prologue
    .line 1339
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseViewHeight(Landroid/view/View;I)V
    invoke-static {v2, v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1800(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 1340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    .line 1341
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    .line 1342
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHeightMovedDistance:I

    .line 1343
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    if-gez v0, :cond_0

    .line 1344
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->end()V

    .line 1349
    :goto_0
    return-void

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1352
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mMode:I

    if-nez v2, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mInit:Z

    if-nez v2, :cond_2

    .line 1355
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->init()V

    .line 1356
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHideViewCount:I

    if-eqz v2, :cond_0

    .line 1360
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->getTargetDistance()I

    move-result v1

    .line 1362
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 1363
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->nextView()V

    goto :goto_0

    .line 1367
    :cond_3
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 1368
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mHeightMovedDistance:I

    .line 1369
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->increaseViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1900(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 1370
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 2
    .parameter "position"
    .parameter "self"

    .prologue
    .line 1289
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mStartTime:J

    .line 1291
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mPosition:I

    .line 1292
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1293
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1294
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->end()V

    .line 1301
    :goto_0
    return-void

    .line 1298
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mMode:I

    .line 1299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->mInit:Z

    .line 1300
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
