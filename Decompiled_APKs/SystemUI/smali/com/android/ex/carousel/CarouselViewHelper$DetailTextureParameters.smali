.class public Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailTextureParameters"
.end annotation


# instance fields
.field public lineOffsetX:F

.field public lineOffsetY:F

.field public textureOffsetX:F

.field public textureOffsetY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetX:F

    iput p2, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetY:F

    iput v0, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetX:F

    iput v0, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetY:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetX:F

    iput p2, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetY:F

    iput p3, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetX:F

    iput p4, p0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetY:F

    return-void
.end method
