.class Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
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
    name = "WaitExpandViewRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mMode:I

.field private mPosition:I

.field private mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mMode:I

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method

.method private end()V
    .locals 5

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mMode:I

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    :goto_0
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$4700(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mPosition:I

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mPosition:I

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    invoke-static {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mPosition:I

    iget-object v4, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mMode:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mPosition:I

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->end()V

    goto :goto_0
.end method

.method public start(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 1

    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mPosition:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mMode:I

    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
