.class final Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ScreenshotsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/ScreenshotsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImagePagerAdapter"
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "bitmapLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mImages:Ljava/util/List;

    .line 64
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    iput-object p3, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 66
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 89
    move-object v0, p3

    check-cast v0, Lcom/google/android/finsky/layout/ScreenshotView;

    .line 90
    .local v0, view:Lcom/google/android/finsky/layout/ScreenshotView;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter "container"
    .parameter "position"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040101

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ScreenshotView;

    .line 82
    .local v0, view:Lcom/google/android/finsky/layout/ScreenshotView;
    iget-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mImages:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/ScreenshotView;->setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 75
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
