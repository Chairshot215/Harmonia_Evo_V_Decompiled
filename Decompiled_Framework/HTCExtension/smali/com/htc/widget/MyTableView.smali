.class public Lcom/htc/widget/MyTableView;
.super Lcom/htc/view/table/TableView;
.source "MyTableView.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "MyTableView"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/MyTableView;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/MyTableView;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/MyTableView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/MyTableView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/htc/view/table/TableView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/view/table/TableView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/MyTableView;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/htc/view/table/TableView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCenterView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/view/table/TableView;->setCenterView(I)V

    invoke-super {p0}, Lcom/htc/view/table/TableView;->scrollIntoSlots()V

    return-void
.end method

.method public setCenterView(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/view/table/TableView;->setCenterView(II)V

    invoke-super {p0}, Lcom/htc/view/table/TableView;->scrollIntoSlots()V

    return-void
.end method

.method protected setSelectionInt(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    const-string v0, "MyTableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectionInt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/MyTableView;->mEnabled:Z

    return-void
.end method

.method public slideWithOffset(I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    const/4 v1, 0x0

    neg-int v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/view/table/TableColleague;->scrollWithConstrain(IIZ)V

    invoke-virtual {p0}, Lcom/htc/widget/MyTableView;->scrollIntoSlots()V

    return-void
.end method
