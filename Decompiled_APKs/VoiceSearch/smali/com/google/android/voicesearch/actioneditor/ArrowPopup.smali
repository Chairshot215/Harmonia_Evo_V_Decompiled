.class public Lcom/google/android/voicesearch/actioneditor/ArrowPopup;
.super Landroid/widget/FrameLayout;
.source "ArrowPopup.java"


# instance fields
.field private mArrowPoint:Landroid/graphics/Point;

.field private mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPopupRect:Landroid/graphics/Rect;

.field private mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mVisible:Z

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 74
    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 76
    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->setBackgroundColor(I)V

    .line 80
    return-void
.end method

.method private calculatePopupRect()Landroid/graphics/Rect;
    .locals 11

    .prologue
    const/high16 v10, -0x8000

    .line 87
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 88
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 91
    iget v8, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 92
    .local v4, wSpec:I
    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v9, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 94
    .local v1, hSpec:I
    invoke-virtual {p0, v4, v1}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->measure(II)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getMeasuredWidth()I

    move-result v5

    .line 97
    .local v5, width:I
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getMeasuredHeight()I

    move-result v2

    .line 101
    .local v2, height:I
    int-to-float v8, v5

    iget-object v9, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 103
    .local v0, centerX:I
    iget-object v8, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int v6, v8, v0

    .line 104
    .local v6, x:I
    const/4 v8, 0x0

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 105
    iget-object v8, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v7, v8, Landroid/graphics/Point;->y:I

    .line 107
    .local v7, y:I
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v6, v5

    add-int v10, v7, v2

    invoke-direct {v8, v6, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method

.method public static getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;
    .locals 11
    .parameter "textView"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 267
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 268
    .local v3, layout:Landroid/text/Layout;
    if-nez v3, :cond_0

    .line 269
    const-string v7, "ArrowPopup"

    const-string v8, "Trying to calculate popup position with null layout"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 303
    :goto_0
    return-object v7

    .line 272
    :cond_0
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 274
    .local v1, coords:[I
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 276
    aget v7, v1, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int v5, v7, v8

    .line 277
    .local v5, x:I
    aget v7, v1, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v8

    add-int v6, v7, v8

    .line 278
    .local v6, y:I
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 279
    .local v0, bounds:Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 281
    .local v4, path:Landroid/graphics/Path;
    if-ne p1, p2, :cond_2

    .line 283
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 284
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v3, v7, p2, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 285
    invoke-virtual {v4, v0, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 286
    iget v7, v0, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    add-int/2addr v5, v7

    .line 293
    :goto_1
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 303
    :goto_2
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 288
    :cond_1
    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v3, p1, v7, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 289
    invoke-virtual {v4, v0, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 290
    iget v7, v0, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    add-int/2addr v5, v7

    goto :goto_1

    .line 295
    :cond_2
    invoke-virtual {v3, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 296
    .local v2, lastLineOffset:I
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v3, v7, p2, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 297
    invoke-virtual {v4, v0, v9}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 299
    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v5, v7

    .line 300
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_2
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 180
    .local v0, windowManager:Landroid/view/WindowManager;
    return-object v0
.end method

.method private initLayout(Landroid/graphics/Point;)V
    .locals 1
    .parameter "point"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    .line 144
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->calculatePopupRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mPopupRect:Landroid/graphics/Rect;

    .line 145
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mPopupRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 146
    return-void
.end method


# virtual methods
.method protected createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .parameter "popupRect"

    .prologue
    const/4 v6, 0x0

    .line 115
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 116
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 119
    .local v2, x:I
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 121
    .local v3, y:I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 122
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    const v4, 0x60100

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 125
    const/16 v4, 0x33

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 126
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 127
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 128
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 129
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v4, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 131
    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mWindowToken:Landroid/os/IBinder;

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mWindowToken:Landroid/os/IBinder;

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 135
    :cond_0
    const/4 v4, 0x1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 136
    const/16 v4, 0x3ea

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 137
    const/4 v4, -0x3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 139
    return-object v1
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mVisible:Z

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mVisible:Z

    .line 235
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 237
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->dismiss()V

    .line 244
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mVisible:Z

    return v0
.end method

.method public move(Landroid/graphics/Point;)V
    .locals 2
    .parameter "point"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->initLayout(Landroid/graphics/Point;)V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->requestLayout()V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->invalidate()V

    .line 214
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 150
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    const/4 v12, 0x2

    new-array v6, v12, [I

    .line 153
    .local v6, location:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getLocationOnScreen([I)V

    .line 155
    const/4 v12, 0x0

    aget v5, v6, v12

    .line 156
    .local v5, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWidth()I

    move-result v11

    .line 157
    .local v11, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getHeight()I

    move-result v3

    .line 158
    .local v3, h:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v4

    .line 159
    .local v4, lWidth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v2

    .line 160
    .local v2, cWidth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v9

    .line 162
    .local v9, rWidth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    div-int/lit8 v13, v2, 0x2

    sub-int v1, v12, v13

    .line 163
    .local v1, arrowX:I
    sub-int v12, v11, v9

    sub-int v7, v12, v2

    .line 164
    .local v7, maxRight:I
    move v8, v4

    .line 165
    .local v8, minLeft:I
    sub-int v12, v1, v5

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 167
    .local v10, relArrowX:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    add-int v15, v10, v2

    invoke-direct {v13, v10, v14, v15, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v13, Landroid/graphics/Rect;

    add-int v14, v10, v2

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15, v11, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->dismiss()V

    .line 255
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refreshLayout()V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->initLayout(Landroid/graphics/Point;)V

    .line 197
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->requestLayout()V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->invalidate()V

    .line 201
    :cond_0
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mWindowToken:Landroid/os/IBinder;

    .line 185
    return-void
.end method

.method public showAt(Landroid/graphics/Point;)V
    .locals 2
    .parameter "point"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->initLayout(Landroid/graphics/Point;)V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mVisible:Z

    .line 227
    return-void
.end method
