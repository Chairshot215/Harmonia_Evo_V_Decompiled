.class public Lcom/htc/album/addons/slideshow/KenBums$Face;
.super Ljava/lang/Object;
.source "KenBums.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/KenBums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public mEyeDistance:F

.field public mMidPointX:F

.field public mMidPointY:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .parameter "pointX"
    .parameter "pointY"
    .parameter "fEyeDistance"

    .prologue
    .line 764
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput p1, p0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointX:F

    .line 766
    iput p2, p0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointY:F

    .line 767
    iput p3, p0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mEyeDistance:F

    .line 768
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public eyesDistance()F
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mEyeDistance:F

    return v0
.end method

.method public getMidPoint(Landroid/graphics/PointF;)V
    .locals 2
    .parameter "point"

    .prologue
    .line 772
    iget v0, p0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointX:F

    iget v1, p0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 773
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 791
    iget v0, p0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 792
    iget v0, p0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mMidPointY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 793
    iget v0, p0, Lcom/htc/album/addons/slideshow/KenBums$Face;->mEyeDistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 794
    return-void
.end method
