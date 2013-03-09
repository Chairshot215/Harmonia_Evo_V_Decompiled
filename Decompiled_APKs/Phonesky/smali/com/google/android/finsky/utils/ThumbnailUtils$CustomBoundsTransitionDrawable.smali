.class Lcom/google/android/finsky/utils/ThumbnailUtils$CustomBoundsTransitionDrawable;
.super Landroid/graphics/drawable/TransitionDrawable;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/ThumbnailUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomBoundsTransitionDrawable"
.end annotation


# instance fields
.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;II)V
    .locals 0
    .parameter "layers"
    .parameter "intrinsicWidth"
    .parameter "intrinsicHeight"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 308
    iput p2, p0, Lcom/google/android/finsky/utils/ThumbnailUtils$CustomBoundsTransitionDrawable;->mIntrinsicWidth:I

    .line 309
    iput p3, p0, Lcom/google/android/finsky/utils/ThumbnailUtils$CustomBoundsTransitionDrawable;->mIntrinsicHeight:I

    .line 310
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/google/android/finsky/utils/ThumbnailUtils$CustomBoundsTransitionDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/google/android/finsky/utils/ThumbnailUtils$CustomBoundsTransitionDrawable;->mIntrinsicWidth:I

    return v0
.end method
