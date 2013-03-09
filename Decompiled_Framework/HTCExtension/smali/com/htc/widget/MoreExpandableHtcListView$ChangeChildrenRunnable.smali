.class Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;
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
    name = "ChangeChildrenRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field mChildren:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mRunnableIndex:I

.field mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

.field final synthetic this$0:Lcom/htc/widget/MoreExpandableHtcListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mChildren:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mMode:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mRunnableIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    return-void
.end method


# virtual methods
.method getRunnableIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mRunnableIndex:I

    return v0
.end method

.method public run()V
    .locals 4

    const v3, 0x7fffffff

    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mMode:I

    if-nez v0, :cond_0

    iput v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mRunnableIndex:I

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1000(Lcom/htc/widget/MoreExpandableHtcListView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mRunnableIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableHtcListView;->isAnyRunnableBefore(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #getter for: Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mMode:I

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$1300(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput v3, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mRunnableIndex:I

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    #calls: Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V
    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V

    goto :goto_0
.end method

.method public start(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mSelf:Lcom/htc/widget/MoreExpandableItemInfo;

    iput-object p2, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mChildren:Ljava/util/LinkedList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mMode:I

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-static {v0}, Lcom/htc/widget/MoreExpandableHtcListView;->access$804(Lcom/htc/widget/MoreExpandableHtcListView;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->mRunnableIndex:I

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->this$0:Lcom/htc/widget/MoreExpandableHtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
