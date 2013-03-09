.class public Lcom/htc/android/worldclock/widget/MyTableView;
.super Lcom/htc/view/table/TableView;
.source "MyTableView.java"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/view/table/TableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/widget/MyTableView;->setVerticalScrollBarEnabled(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 67
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 69
    invoke-super/range {p0 .. p5}, Lcom/htc/view/table/TableView;->onLayout(ZIIII)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout() complete, getChildCount() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/MyTableView;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 75
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 77
    invoke-super {p0, p1, p2}, Lcom/htc/view/table/TableView;->onMeasure(II)V

    .line 78
    const-string v0, "mTableView.onMeasure() complete"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 51
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 52
    iget-boolean v0, p0, Lcom/htc/android/worldclock/widget/MyTableView;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Lcom/htc/view/table/TableView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 55
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
    .line 32
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

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
    .line 39
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 40
    invoke-super {p0, p1, p2}, Lcom/htc/view/table/TableView;->setCenterView(II)V

    .line 41
    invoke-super {p0}, Lcom/htc/view/table/TableView;->scrollIntoSlots()V

    .line 42
    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 45
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 46
    iput-boolean p1, p0, Lcom/htc/android/worldclock/widget/MyTableView;->mEnabled:Z

    .line 47
    return-void
.end method

.method public slideWithOffset(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 60
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 61
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/MyTableView;->tableColleague:Lcom/htc/view/table/TableColleague;

    const/4 v1, 0x0

    neg-int v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/view/table/TableColleague;->scrollWithConstrain(IIZ)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/MyTableView;->scrollIntoSlots()V

    .line 63
    return-void
.end method
