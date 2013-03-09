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
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/MyTableView;->setFocusable(Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/MyTableView;->setFocusable(Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/htc/widget/MyTableView;->setVerticalScrollBarEnabled(Z)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/htc/widget/MyTableView;->setFocusable(Z)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 69
    invoke-super/range {p0 .. p5}, Lcom/htc/view/table/TableView;->onLayout(ZIIII)V

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/htc/view/table/TableView;->onMeasure(II)V

    .line 78
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/widget/MyTableView;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0, p1}, Lcom/htc/view/table/TableView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCenterView(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/htc/view/table/TableView;->setCenterView(I)V

    .line 34
    invoke-super {p0}, Lcom/htc/view/table/TableView;->scrollIntoSlots()V

    .line 35
    return-void
.end method

.method public setCenterView(II)V
    .locals 0
    .parameter "pos"
    .parameter "targetHeight"

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/htc/view/table/TableView;->setCenterView(II)V

    .line 39
    invoke-super {p0}, Lcom/htc/view/table/TableView;->scrollIntoSlots()V

    .line 40
    return-void
.end method

.method protected setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/htc/view/table/TableView;->setSelectionInt(I)V

    .line 45
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

    .line 46
    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/widget/MyTableView;->mEnabled:Z

    .line 50
    return-void
.end method

.method public slideWithOffset(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/widget/MyTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    const/4 v1, 0x0

    neg-int v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/view/table/TableColleague;->scrollWithConstrain(IIZ)V

    .line 63
    invoke-virtual {p0}, Lcom/htc/widget/MyTableView;->scrollIntoSlots()V

    .line 64
    return-void
.end method
