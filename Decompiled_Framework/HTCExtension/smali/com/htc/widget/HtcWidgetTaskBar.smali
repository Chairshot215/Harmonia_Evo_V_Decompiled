.class public Lcom/htc/widget/HtcWidgetTaskBar;
.super Lcom/htc/widget/TaskBar;
.source "HtcWidgetTaskBar.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPanelTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;I)V

    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->init()V

    return-void
.end method

.method private init()V
    .locals 7

    const/16 v6, 0x140

    const/16 v5, 0xf0

    const/high16 v4, -0x4080

    iget-object v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-eq v2, v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ne v2, v6, :cond_2

    :cond_1
    const/16 v2, 0xe

    iput v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->getCurrentMode()I

    move-result v2

    const v3, 0x2090098

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcWidgetTaskBar;->init(II)V

    iget v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterTextsize(F)V

    const/high16 v2, 0x3f80

    const v3, -0xdcdcdd

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterShadow(FFFI)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterColor(I)V

    const/16 v2, 0x92

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterTextLength(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setButtonFocusable(Z)V

    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 7

    const/16 v6, 0x140

    const/16 v5, 0xf0

    const/high16 v4, -0x4080

    iget-object v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-eq v2, v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ne v2, v6, :cond_2

    :cond_1
    const/16 v2, 0xe

    iput v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    :cond_2
    const v2, 0x2090098

    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->init(II)V

    iget v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterTextsize(F)V

    const/high16 v2, 0x3f80

    const v3, -0xdcdcdd

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterShadow(FFFI)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterColor(I)V

    const/16 v2, 0x92

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterTextLength(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setButtonFocusable(Z)V

    return-void
.end method

.method public setButtonFocusable(Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->getLeftButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->getRightButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->getCenterButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
