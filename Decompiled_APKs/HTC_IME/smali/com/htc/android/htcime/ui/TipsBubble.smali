.class public Lcom/htc/android/htcime/ui/TipsBubble;
.super Ljava/lang/Object;
.source "TipsBubble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;
    }
.end annotation


# instance fields
.field protected PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

.field gravity:I

.field mAttached:Landroid/view/View;

.field mBtnNegative:Landroid/widget/TextView;

.field mBtnPositive:Landroid/widget/TextView;

.field mContext:Landroid/content/Context;

.field mLayoutBody:Landroid/widget/LinearLayout;

.field mNeg:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

.field mPos:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

.field mTipBody:Landroid/widget/TextView;

.field mWindow:Landroid/widget/PopupWindow;

.field width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIIII)V
    .locals 7
    .parameter "context"
    .parameter "inputView"
    .parameter "resid"
    .parameter "bx"
    .parameter "by"
    .parameter "bw"
    .parameter "gravity"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v6, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mLayoutBody:Landroid/widget/LinearLayout;

    .line 147
    new-instance v3, Lcom/htc/android/htcime/ui/TipsBubble$1;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/ui/TipsBubble$1;-><init>(Lcom/htc/android/htcime/ui/TipsBubble;)V

    iput-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 39
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 41
    .local v2, scale:F
    iput p4, p0, Lcom/htc/android/htcime/ui/TipsBubble;->x:I

    .line 42
    iput p5, p0, Lcom/htc/android/htcime/ui/TipsBubble;->y:I

    .line 43
    int-to-float v3, p6

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->width:I

    .line 44
    iput p7, p0, Lcom/htc/android/htcime/ui/TipsBubble;->gravity:I

    .line 46
    iput-object p2, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mAttached:Landroid/view/View;

    .line 47
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    .line 48
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    const v4, 0x1030004

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 51
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 54
    .local v0, inflate:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mLayoutBody:Landroid/widget/LinearLayout;

    .line 56
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mLayoutBody:Landroid/widget/LinearLayout;

    const v4, 0x7f0e0064

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mTipBody:Landroid/widget/TextView;

    .line 58
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mLayoutBody:Landroid/widget/LinearLayout;

    const v4, 0x7f0e0065

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnPositive:Landroid/widget/TextView;

    .line 59
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnPositive:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/TipsBubble;->PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mLayoutBody:Landroid/widget/LinearLayout;

    const v4, 0x7f0e0066

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnNegative:Landroid/widget/TextView;

    .line 61
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnNegative:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/TipsBubble;->PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mLayoutBody:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 65
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 66
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 68
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 69
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 71
    iget-object v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mLayoutBody:Landroid/widget/LinearLayout;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 73
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mLayoutBody:Landroid/widget/LinearLayout;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 87
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mLayoutBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getTipBody()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mTipBody:Landroid/widget/TextView;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 137
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;)V
    .locals 0
    .parameter "p"
    .parameter "n"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mPos:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    .line 179
    iput-object p2, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mNeg:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    .line 180
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0, v0}, Lcom/htc/android/htcime/ui/TipsBubble;->show(II)V

    .line 82
    return-void
.end method

.method public show(II)V
    .locals 5
    .parameter "offx"
    .parameter "offy"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mAttached:Landroid/view/View;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mAttached:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mAttached:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :try_start_0
    iget v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->gravity:I

    and-int/lit8 v0, v0, 0x50

    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 120
    :cond_2
    iget v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->gravity:I

    and-int/lit8 v0, v0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mAttached:Landroid/view/View;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->x:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/htc/android/htcime/ui/TipsBubble;->y:I

    add-int/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public show(Landroid/view/View;)V
    .locals 1
    .parameter "attach"

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-object p1, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mAttached:Landroid/view/View;

    .line 77
    invoke-virtual {p0, v0, v0}, Lcom/htc/android/htcime/ui/TipsBubble;->show(II)V

    .line 78
    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 5
    .parameter "attach"
    .parameter "offx"
    .parameter "offy"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mAttached:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mAttached:Landroid/view/View;

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mAttached:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mAttached:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :try_start_0
    iget v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->gravity:I

    and-int/lit8 v0, v0, 0x50

    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 99
    :cond_2
    iget v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->gravity:I

    and-int/lit8 v0, v0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble;->mAttached:Landroid/view/View;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/htcime/ui/TipsBubble;->x:I

    add-int/2addr v3, p2

    iget v4, p0, Lcom/htc/android/htcime/ui/TipsBubble;->y:I

    add-int/2addr v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method
