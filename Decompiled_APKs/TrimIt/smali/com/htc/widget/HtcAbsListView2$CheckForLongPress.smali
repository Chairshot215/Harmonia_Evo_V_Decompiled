.class Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;
.super Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;
.source "HtcAbsListView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView2;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcAbsListView2;)V
    .locals 1
    .parameter

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;-><init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1911
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1913
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v5, v6, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 1914
    .local v5, motionPosition:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v7, v7, Lcom/htc/widget/HtcAbsListView2;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1915
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1916
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v4, v6, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    .line 1917
    .local v4, longPressPosition:I
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v6, v6, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v7, v7, Lcom/htc/widget/HtcAbsListView2;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1919
    .local v2, longPressId:J
    const/4 v1, 0x0

    .line 1920
    .local v1, handled:Z
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-boolean v6, v6, Lcom/htc/widget/HtcAbsListView2;->mDataChanged:Z

    if-nez v6, :cond_0

    .line 1921
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #calls: Lcom/htc/widget/HtcAbsListView2;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v6, v0, v4, v2, v3}, Lcom/htc/widget/HtcAbsListView2;->access$500(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;IJ)Z

    move-result v1

    .line 1923
    :cond_0
    if-eqz v1, :cond_2

    .line 1924
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v7, -0x1

    iput v7, v6, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    .line 1925
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    .line 1926
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1932
    .end local v1           #handled:Z
    .end local v2           #longPressId:J
    .end local v4           #longPressPosition:I
    :cond_1
    :goto_0
    return-void

    .line 1928
    .restart local v1       #handled:Z
    .restart local v2       #longPressId:J
    .restart local v4       #longPressPosition:I
    :cond_2
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2$CheckForLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v7, 0x2

    iput v7, v6, Lcom/htc/widget/HtcAbsListView2;->mTouchMode:I

    goto :goto_0
.end method
