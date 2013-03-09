.class Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;
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
    name = "CollapseReduceRunnable"
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

.field private mIndex:I

.field private mInit:Z

.field private mMode:I

.field mParent:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mPosition:I

.field private mReduceViewCount:I

.field mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1114
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mPosition:I

    .line 1122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 1123
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    .line 1124
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mMode:I

    .line 1125
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mInit:Z

    .line 1126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    .line 1127
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    .line 1128
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 1129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1114
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 8

    .prologue
    .line 1153
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mMode:I

    .line 1154
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1155
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1156
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v5

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mPosition:I

    iget-object v7, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/MoreExpandableBaseAdapter;->collapseGroup(ILcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v3

    .line 1157
    .local v3, newPosition:I
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->recoverCollapseReduceViewList()V
    invoke-static {v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3000(Lcom/htc/widget/MoreExpandableHtcListView;)V

    .line 1158
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v5, :cond_2

    .line 1159
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v5, v6}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v4

    .line 1162
    .local v4, parentPosition:I
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v5}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    .line 1163
    .local v0, grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    if-eqz v0, :cond_1

    .line 1164
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v1

    .line 1165
    .local v1, grandParentPosition:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 1166
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1167
    .local v2, mgrandParentView:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    .line 1180
    .end local v0           #grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    .end local v1           #grandParentPosition:I
    .end local v2           #mgrandParentView:Landroid/view/View;
    .end local v4           #parentPosition:I
    :goto_0
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;
    invoke-static {v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v5, v3, v6}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    .line 1181
    return-void

    .line 1169
    .restart local v0       #grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    .restart local v1       #grandParentPosition:I
    .restart local v4       #parentPosition:I
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v5, v4, v6}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0

    .line 1173
    .end local v1           #grandParentPosition:I
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v5, v4, v6}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0

    .line 1177
    .end local v0           #grandParent:Lcom/htc/widget/MoreExpandableItemInfo;
    .end local v4           #parentPosition:I
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V
    invoke-static {v5}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1300(Lcom/htc/widget/MoreExpandableHtcListView;)V

    goto :goto_0
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 1230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1231
    .local v0, now:J
    const/4 v2, 0x0

    .line 1233
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 1234
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1238
    :goto_0
    return v2

    .line 1236
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

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
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1186
    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    .line 1187
    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 1189
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceDuration(ILjava/util/ArrayList;J)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3300(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I

    .line 1190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    .line 1191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mInit:Z

    .line 1192
    return-void
.end method

.method private nextView()V
    .locals 3

    .prologue
    .line 1195
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->setReduceViewHeight(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3400(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;)V

    .line 1196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    .line 1197
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    .line 1198
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 1199
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    if-lt v0, v1, :cond_0

    .line 1200
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->end()V

    .line 1205
    :goto_0
    return-void

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1208
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 1226
    :goto_0
    return-void

    .line 1210
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mInit:Z

    if-nez v2, :cond_1

    .line 1211
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->init()V

    .line 1214
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->getTargetDistance()I

    move-result v1

    .line 1216
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 1217
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->nextView()V

    .line 1218
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1222
    :cond_2
    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 1223
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mHeightMovedDistance:I

    .line 1224
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->reduceViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3500(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V

    .line 1225
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 3
    .parameter "position"
    .parameter "self"

    .prologue
    .line 1132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mStartTime:J

    .line 1133
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mPosition:I

    .line 1134
    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1135
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 1136
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->getCollapseReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    invoke-static {v2, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2800(Lcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2702(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1137
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    .line 1138
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    if-nez v1, :cond_0

    .line 1139
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->end()V

    .line 1150
    :goto_0
    return-void

    .line 1143
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mReduceViewCount:I

    if-ge v0, v1, :cond_1

    .line 1144
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->access$2900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;

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

    .line 1143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1147
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mMode:I

    .line 1148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->mInit:Z

    .line 1149
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
