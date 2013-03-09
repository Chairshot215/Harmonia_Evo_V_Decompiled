.class public Lcom/google/appinventor/components/runtime/TableLayout;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final layoutManager:Landroid/widget/TableLayout;

.field private numColumns:I

.field private numRows:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    iput p2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    iput p3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->handler:Landroid/os/Handler;

    move v0, v5

    :goto_0
    if-ge v0, p3, :cond_1

    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    move v2, v5

    :goto_1
    if-ge v2, p2, :cond_0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v3}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v2, v1, v0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/TableLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->addChild(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method private addChild(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Row()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Column()I

    move-result v1

    if-eq v0, v2, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    :goto_0
    return-void

    :cond_1
    if-ltz v0, :cond_3

    iget v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v0, v2, :cond_3

    if-ltz v1, :cond_2

    iget v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v2, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TableRow;

    invoke-virtual {p0, v1}, Landroid/widget/TableRow;->removeViewAt(I)V

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const-string v0, "TableLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child has illegal Column property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "TableLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child has illegal Row property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/TableLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout$1;-><init>(Lcom/google/appinventor/components/runtime/TableLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static newCellLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object v0
.end method

.method private static newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private newEmptyCellView()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    return-object v0
.end method

.method getNumColumns()I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    return v0
.end method

.method getNumRows()I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    return v0
.end method

.method setNumColumns(I)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-le p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iget v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    :goto_1
    if-ge v2, p1, :cond_0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-ge p1, v0, :cond_2

    :goto_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iget v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, p1, v2}, Landroid/widget/TableRow;->removeViews(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    goto :goto_2
.end method

.method setNumRows(I)V
    .locals 6

    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-le p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    :goto_0
    if-ge v1, p1, :cond_1

    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-ge v3, v4, :cond_0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    new-instance v4, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v4}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v3, v2, v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TableLayout;->removeViews(II)V

    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    goto :goto_2
.end method
