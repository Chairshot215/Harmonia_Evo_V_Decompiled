.class public Lcom/scalado/caps/hdrimage/HDRImage;
.super Lcom/scalado/caps/PeerBase;
.source "HDRImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/hdrimage/HDRImage$Options;,
        Lcom/scalado/caps/hdrimage/HDRImage$Registration;
    }
.end annotation


# instance fields
.field private sourceList:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<",
            "Lcom/scalado/caps/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/hdrimage/HDRImage;->sourceList:Ljava/util/AbstractList;

    invoke-direct {p0}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeCreate()I

    return-void
.end method

.method private native nativeAddLDRSession(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeCreate()I
.end method

.method private native nativeGeneratePreview(FFILcom/scalado/base/Image;)I
.end method

.method private native nativeGetRenderSize(FFILcom/scalado/base/Size;)I
.end method

.method private native nativeRender(FFILcom/scalado/stream/Stream;)I
.end method

.method private native nativeRenderRaw(FFILcom/scalado/base/Image;)I
.end method


# virtual methods
.method public addLDRSession(Lcom/scalado/caps/Session;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeAddLDRSession(Lcom/scalado/caps/Decoder;)I

    iget-object v0, p0, Lcom/scalado/caps/hdrimage/HDRImage;->sourceList:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public generatePreview(Lcom/scalado/base/Image;)V
    .locals 2

    const/high16 v1, -0x4080

    const/4 v0, -0x1

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeGeneratePreview(FFILcom/scalado/base/Image;)I

    return-void
.end method

.method public generatePreview(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/base/Image;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->generatePreview(Lcom/scalado/base/Image;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F

    iget v1, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    iget-object v2, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Registration;->value:I
    invoke-static {v2}, Lcom/scalado/caps/hdrimage/HDRImage$Registration;->access$000(Lcom/scalado/caps/hdrimage/HDRImage$Registration;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeGeneratePreview(FFILcom/scalado/base/Image;)I

    goto :goto_0
.end method

.method public getRenderSize()Lcom/scalado/base/Size;
    .locals 3

    const/high16 v2, -0x4080

    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    const/4 v1, -0x1

    invoke-direct {p0, v2, v2, v1, v0}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeGetRenderSize(FFILcom/scalado/base/Size;)I

    return-object v0
.end method

.method public getRenderSize(Lcom/scalado/caps/hdrimage/HDRImage$Options;)Lcom/scalado/base/Size;
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/scalado/caps/hdrimage/HDRImage;->getRenderSize()Lcom/scalado/base/Size;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iget v1, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F

    iget v2, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    iget-object v3, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Registration;->value:I
    invoke-static {v3}, Lcom/scalado/caps/hdrimage/HDRImage$Registration;->access$000(Lcom/scalado/caps/hdrimage/HDRImage$Registration;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeGetRenderSize(FFILcom/scalado/base/Size;)I

    goto :goto_0
.end method

.method public render(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/stream/Stream;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->render(Lcom/scalado/stream/Stream;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F

    iget v1, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    iget-object v2, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Registration;->value:I
    invoke-static {v2}, Lcom/scalado/caps/hdrimage/HDRImage$Registration;->access$000(Lcom/scalado/caps/hdrimage/HDRImage$Registration;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeRender(FFILcom/scalado/stream/Stream;)I

    goto :goto_0
.end method

.method public render(Lcom/scalado/stream/Stream;)V
    .locals 2

    const/high16 v1, -0x4080

    const/4 v0, -0x1

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeRender(FFILcom/scalado/stream/Stream;)I

    return-void
.end method

.method public renderRaw(Lcom/scalado/base/Image;)V
    .locals 2

    const/high16 v1, -0x4080

    const/4 v0, -0x1

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeRenderRaw(FFILcom/scalado/base/Image;)I

    return-void
.end method

.method public renderRaw(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/base/Image;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->renderRaw(Lcom/scalado/base/Image;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F

    iget v1, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    iget-object v2, p1, Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    #getter for: Lcom/scalado/caps/hdrimage/HDRImage$Registration;->value:I
    invoke-static {v2}, Lcom/scalado/caps/hdrimage/HDRImage$Registration;->access$000(Lcom/scalado/caps/hdrimage/HDRImage$Registration;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeRenderRaw(FFILcom/scalado/base/Image;)I

    goto :goto_0
.end method
