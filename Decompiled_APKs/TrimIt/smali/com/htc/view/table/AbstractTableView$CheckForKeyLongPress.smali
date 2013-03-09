.class Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;
.super Lcom/htc/view/table/AbstractTableView$WindowRunnnable;
.source "AbstractTableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/table/AbstractTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/view/table/AbstractTableView;


# direct methods
.method private constructor <init>(Lcom/htc/view/table/AbstractTableView;)V
    .locals 1
    .parameter

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/view/table/AbstractTableView$WindowRunnnable;-><init>(Lcom/htc/view/table/AbstractTableView;Lcom/htc/view/table/AbstractTableView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/view/table/AbstractTableView;Lcom/htc/view/table/AbstractTableView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1300
    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1302
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v3}, Lcom/htc/view/table/AbstractTableView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget v3, v3, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    .line 1303
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget v3, v3, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget v4, v4, Lcom/htc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 1304
    .local v1, index:I
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v3, v1}, Lcom/htc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1306
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget-boolean v3, v3, Lcom/htc/view/table/AbstractTableView;->mDataChanged:Z

    if-nez v3, :cond_2

    .line 1307
    const/4 v0, 0x0

    .line 1308
    .local v0, handled:Z
    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1309
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget-object v4, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget v4, v4, Lcom/htc/view/table/AbstractTableView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget-wide v5, v5, Lcom/htc/view/table/AbstractTableView;->mSelectedRowId:J

    #calls: Lcom/htc/view/table/AbstractTableView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v3, v2, v4, v5, v6}, Lcom/htc/view/table/AbstractTableView;->access$500(Lcom/htc/view/table/AbstractTableView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1311
    :cond_0
    if-eqz v0, :cond_1

    .line 1312
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v3, v7}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    .line 1313
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1320
    .end local v0           #handled:Z
    .end local v1           #index:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1316
    .restart local v1       #index:I
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView$CheckForKeyLongPress;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v3, v7}, Lcom/htc/view/table/AbstractTableView;->setPressed(Z)V

    .line 1317
    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
