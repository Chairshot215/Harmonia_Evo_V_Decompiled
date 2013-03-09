.class public Lcom/htc/android/htcime/ui/PreviewWindow;
.super Ljava/lang/Object;
.source "PreviewWindow.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field protected mHeight:I

.field protected mPreviewFrame:Landroid/widget/FrameLayout;

.field protected mPreviewIcon:Landroid/widget/ImageView;

.field protected mPreviewPopup:Landroid/widget/PopupWindow;

.field protected mPreviewText:Landroid/widget/TextView;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f020052

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->TAG:Ljava/lang/String;

    .line 31
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 35
    .local v0, inflate:Landroid/view/LayoutInflater;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 36
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewFrame:Landroid/widget/FrameLayout;

    .line 38
    const v1, 0x7f030048

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewText:Landroid/widget/TextView;

    .line 39
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 41
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewIcon:Landroid/widget/ImageView;

    .line 42
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewIcon:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 45
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewText:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewIcon:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 51
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 53
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismiss() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setContent(Landroid/graphics/drawable/Drawable;)Lcom/htc/android/htcime/ui/PreviewWindow;
    .locals 2
    .parameter "d"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/htc/android/htcime/ui/PreviewWindow;
    .locals 2
    .parameter "s"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewText:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    return-object p0
.end method

.method public setContent(Ljava/lang/String;F)Lcom/htc/android/htcime/ui/PreviewWindow;
    .locals 2
    .parameter "s"
    .parameter "size"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    return-object p0
.end method

.method public setDimension(II)Lcom/htc/android/htcime/ui/PreviewWindow;
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 90
    iput p1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mWidth:I

    .line 91
    iput p2, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mHeight:I

    .line 92
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 93
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 94
    return-object p0
.end method

.method public show(Landroid/view/View;II)V
    .locals 4
    .parameter "attachView"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mWidth:I

    iget v3, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mHeight:I

    invoke-virtual {v1, p2, p3, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PreviewWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showKey] BadTokenException 2 !!! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
