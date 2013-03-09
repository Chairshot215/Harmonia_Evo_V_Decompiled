.class public Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FixedSizeDrawable.java"


# instance fields
.field mBottom:I

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mLeft:I

.field mRight:I

.field mTop:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mRight:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mRight:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setFixedBounds(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mLeft:I

    iput p2, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mTop:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mRight:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->mBottom:I

    return-void
.end method
