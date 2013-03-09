.class public Lcom/android/systemui/statusbar/tablet/NotificationLinearLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationLinearLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationLinearLayout"


# instance fields
.field mInsetLeft:I

.field mItemGlow:Landroid/graphics/drawable/Drawable;

.field mTmp:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/NotificationLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationLinearLayout;->mTmp:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationLinearLayout;->mItemGlow:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/systemui/R$styleable;->NotificationLinearLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationLinearLayout;->mInsetLeft:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/NotificationLinearLayout;->mTmp:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationLinearLayout;->mItemGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v6, p0, Lcom/android/systemui/statusbar/tablet/NotificationLinearLayout;->mInsetLeft:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationLinearLayout;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/tablet/NotificationLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    add-int/2addr v8, v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    add-int v10, v2, v4

    invoke-virtual {v3, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationLinearLayout;->setWillNotDraw(Z)V

    return-void
.end method
