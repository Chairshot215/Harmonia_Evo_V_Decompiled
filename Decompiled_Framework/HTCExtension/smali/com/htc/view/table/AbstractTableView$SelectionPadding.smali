.class Lcom/htc/view/table/AbstractTableView$SelectionPadding;
.super Ljava/lang/Object;
.source "AbstractTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/table/AbstractTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionPadding"
.end annotation


# instance fields
.field private bottomPadding:I

.field private leftPadding:I

.field private lock:Z

.field private rightPadding:I

.field final synthetic this$0:Lcom/htc/view/table/AbstractTableView;

.field private topPadding:I


# direct methods
.method public constructor <init>(Lcom/htc/view/table/AbstractTableView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    iput v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    return-void
.end method


# virtual methods
.method public getBottomPadding()I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    return v0
.end method

.method public getLeftPadding()I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    return v0
.end method

.method public getRightPadding()I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    return v0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    iput p2, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    iput p3, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    iput p4, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    return-void
.end method
