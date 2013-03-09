.class public Lcom/google/android/finsky/layout/ButtonBar;
.super Landroid/widget/LinearLayout;
.source "ButtonBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/ButtonBar$ClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mTopSeparatorPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mTopSeparatorPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mTopSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mTopSeparatorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/ButtonBar$ClickListener;->onPositiveButtonClick()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/ButtonBar$ClickListener;->onNegativeButtonClick()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mTopSeparatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ButtonBar;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/google/android/finsky/layout/ButtonBar;->mTopSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 50
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    .line 51
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    .line 52
    return-void
.end method

.method public setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public setNegativeButtonTitle(I)V
    .locals 1
    .parameter "titleResId"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 60
    return-void
.end method

.method public setPositiveButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 64
    return-void
.end method

.method public setPositiveButtonTitle(I)V
    .locals 1
    .parameter "titleResId"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 56
    return-void
.end method

.method public setPositiveButtonVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    return-void

    .line 67
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
