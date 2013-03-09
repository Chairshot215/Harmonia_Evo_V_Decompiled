.class Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;
.super Ljava/lang/Object;
.source "DocumentGridItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/DocumentGridItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field accessibilityOverlay:Landroid/view/View;

.field badge:Lcom/google/android/finsky/layout/DecoratedTextView;

.field cellContent:Landroid/view/View;

.field corpusStrip:Landroid/view/View;

.field creator:Lcom/google/android/finsky/layout/DecoratedTextView;

.field priceView:Landroid/widget/TextView;

.field promoBitmapView:Landroid/widget/ImageView;

.field ratingBar:Landroid/widget/RatingBar;

.field thumbnailBitmapView:Lcom/google/android/finsky/layout/DocImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/adapters/DocumentGridItem$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;-><init>()V

    return-void
.end method
