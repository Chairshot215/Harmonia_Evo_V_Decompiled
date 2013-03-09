.class Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView2;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcAbsListView2;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;-><init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAbsListView2;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v3, v3, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v3, v3, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v4, v4, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAbsListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-boolean v3, v3, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v4, v4, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-wide v5, v5, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    #calls: Lcom/htc/widget/HtcAbsListView2;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v3, v2, v4, v5, v6}, Lcom/htc/widget/HtcAbsListView2;->access$500(Lcom/htc/widget/HtcAbsListView2;Landroid/view/View;IJ)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2$CheckForKeyLongPress;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcAbsListView2;->setPressed(Z)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
