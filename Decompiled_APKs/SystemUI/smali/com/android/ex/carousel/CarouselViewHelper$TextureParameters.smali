.class public Lcom/android/ex/carousel/CarouselViewHelper$TextureParameters;
.super Ljava/lang/Object;
.source "CarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureParameters"
.end annotation


# instance fields
.field public matrix:Landroid/renderscript/Matrix4f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselViewHelper$TextureParameters;->matrix:Landroid/renderscript/Matrix4f;

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Matrix4f;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselViewHelper$TextureParameters;->matrix:Landroid/renderscript/Matrix4f;

    return-void
.end method
