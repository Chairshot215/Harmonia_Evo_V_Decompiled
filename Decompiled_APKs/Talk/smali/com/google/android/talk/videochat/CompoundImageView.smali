.class public Lcom/google/android/talk/videochat/CompoundImageView;
.super Landroid/widget/ImageView;
.source "CompoundImageView.java"


# instance fields
.field private mActivatedImage:Landroid/graphics/drawable/Drawable;

.field private mNormalImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/videochat/CompoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/talk/videochat/CompoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget-object v1, Lcom/google/android/talk/R$styleable;->CompoundImageView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/CompoundImageView;->mNormalImage:Landroid/graphics/drawable/Drawable;

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/CompoundImageView;->mActivatedImage:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    iget-object v1, p0, Lcom/google/android/talk/videochat/CompoundImageView;->mNormalImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/google/android/talk/videochat/CompoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method


# virtual methods
.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 41
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/videochat/CompoundImageView;->mActivatedImage:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/CompoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CompoundImageView;->mNormalImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
