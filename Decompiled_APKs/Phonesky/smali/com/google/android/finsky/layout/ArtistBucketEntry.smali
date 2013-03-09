.class public Lcom/google/android/finsky/layout/ArtistBucketEntry;
.super Lcom/google/android/finsky/layout/CellWithOverlay;
.source "ArtistBucketEntry.java"

# interfaces
.implements Lcom/google/android/finsky/layout/DocumentCell;


# instance fields
.field private mAccessibilityOverlay:Landroid/view/View;

.field private mEnforceRatio:Z

.field private mImageView:Lcom/google/android/finsky/layout/DocImageView;

.field private mRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/ArtistBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/ArtistBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/CellWithOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object v1, Lcom/android/vending/R$styleable;->ArtistBucketEntry:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mRatio:F

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "mainDocument"
    .parameter "document"
    .parameter "bitmapLoader"
    .parameter "isLastRow"
    .parameter "clickListener"

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mEnforceRatio:Z

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 78
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setOverlayCaption(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/android/finsky/layout/CellWithOverlay;->onFinishInflate()V

    .line 56
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DocImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mImageView:Lcom/google/android/finsky/layout/DocImageView;

    .line 57
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mAccessibilityOverlay:Landroid/view/View;

    .line 58
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 62
    iget-boolean v2, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mEnforceRatio:Z

    if-nez v2, :cond_0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/layout/CellWithOverlay;->onMeasure(II)V

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 66
    .local v1, width:I
    int-to-float v2, v1

    iget v3, p0, Lcom/google/android/finsky/layout/ArtistBucketEntry;->mRatio:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 67
    .local v0, height:I
    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, p1, v2}, Lcom/google/android/finsky/layout/CellWithOverlay;->onMeasure(II)V

    goto :goto_0
.end method
