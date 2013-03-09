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

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scalado/caps/hdrimage/HDRImage;->sourceList:Ljava/util/AbstractList;

    .line 97
    invoke-direct {p0}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeCreate()I

    .line 98
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
    .parameter "session"

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeAddLDRSession(Lcom/scalado/caps/Decoder;)I

    .line 123
    iget-object v0, p0, Lcom/scalado/caps/hdrimage/HDRImage;->sourceList:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public generatePreview(Lcom/scalado/base/Image;)V
    .locals 2
    .parameter "outputImage"

    .prologue
    const/high16 v1, -0x4080

    .line 337
    const/4 v0, -0x1

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeGeneratePreview(FFILcom/scalado/base/Image;)I

    .line 338
    return-void
.end method

.method public generatePreview(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/base/Image;)V
    .locals 3
    .parameter "hdrOptions"
    .parameter "outputImage"

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 307
    invoke-virtual {p0, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->generatePreview(Lcom/scalado/base/Image;)V

    .line 314
    :goto_0
    return-void

    .line 312
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

    .prologue
    const/high16 v2, -0x4080

    .line 168
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    .line 171
    .local v0, size:Lcom/scalado/base/Size;
    const/4 v1, -0x1

    invoke-direct {p0, v2, v2, v1, v0}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeGetRenderSize(FFILcom/scalado/base/Size;)I

    .line 173
    return-object v0
.end method

.method public getRenderSize(Lcom/scalado/caps/hdrimage/HDRImage$Options;)Lcom/scalado/base/Size;
    .locals 4
    .parameter "hdrOptions"

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/scalado/caps/hdrimage/HDRImage;->getRenderSize()Lcom/scalado/base/Size;

    move-result-object v0

    .line 154
    .local v0, size:Lcom/scalado/base/Size;
    :goto_0
    return-object v0

    .line 148
    .end local v0           #size:Lcom/scalado/base/Size;
    :cond_0
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    .line 151
    .restart local v0       #size:Lcom/scalado/base/Size;
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
    .parameter "hdrOptions"
    .parameter "outputStream"

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 198
    invoke-virtual {p0, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->render(Lcom/scalado/stream/Stream;)V

    .line 205
    :goto_0
    return-void

    .line 203
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
    .parameter "outputStream"

    .prologue
    const/high16 v1, -0x4080

    .line 226
    const/4 v0, -0x1

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeRender(FFILcom/scalado/stream/Stream;)I

    .line 227
    return-void
.end method

.method public renderRaw(Lcom/scalado/base/Image;)V
    .locals 2
    .parameter "outputImage"

    .prologue
    const/high16 v1, -0x4080

    .line 280
    const/4 v0, -0x1

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->nativeRenderRaw(FFILcom/scalado/base/Image;)I

    .line 281
    return-void
.end method

.method public renderRaw(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/base/Image;)V
    .locals 3
    .parameter "hdrOptions"
    .parameter "outputImage"

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 251
    invoke-virtual {p0, p2}, Lcom/scalado/caps/hdrimage/HDRImage;->renderRaw(Lcom/scalado/base/Image;)V

    .line 258
    :goto_0
    return-void

    .line 256
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
