.class public Lcom/jme3/texture/Image;
.super Lcom/jme3/util/NativeObject;
.source "Image.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/Image$Format;
    }
.end annotation


# instance fields
.field protected data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected depth:I

.field protected transient efficientData:Ljava/lang/Object;

.field protected format:Lcom/jme3/texture/Image$Format;

.field protected height:I

.field protected mipMapSizes:[I

.field protected multiSamples:I

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 354
    const-class v0, Lcom/jme3/texture/Image;

    invoke-direct {p0, v0}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;)V

    .line 318
    iput v1, p0, Lcom/jme3/texture/Image;->multiSamples:I

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    .line 356
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 359
    const-class v0, Lcom/jme3/texture/Image;

    invoke-direct {p0, v0, p1}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;I)V

    .line 318
    const/4 v0, 0x1

    iput v0, p0, Lcom/jme3/texture/Image;->multiSamples:I

    .line 360
    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;[I)V
    .locals 2
    .parameter "format"
    .parameter "width"
    .parameter "height"
    .parameter "depth"
    .parameter
    .parameter "mipMapSizes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/texture/Image$Format;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p5, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    invoke-direct {p0}, Lcom/jme3/texture/Image;-><init>()V

    .line 382
    if-eqz p6, :cond_0

    array-length v0, p6

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 383
    const/4 p6, 0x0

    .line 386
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/texture/Image;->setFormat(Lcom/jme3/texture/Image$Format;)V

    .line 387
    iput p2, p0, Lcom/jme3/texture/Image;->width:I

    .line 388
    iput p3, p0, Lcom/jme3/texture/Image;->height:I

    .line 389
    iput-object p5, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    .line 390
    iput p4, p0, Lcom/jme3/texture/Image;->depth:I

    .line 391
    iput-object p6, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    .line 392
    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;)V
    .locals 6
    .parameter "format"
    .parameter "width"
    .parameter "height"
    .parameter "data"

    .prologue
    .line 459
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;[I)V

    .line 460
    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;[I)V
    .locals 2
    .parameter "format"
    .parameter "width"
    .parameter "height"
    .parameter "data"
    .parameter "mipMapSizes"

    .prologue
    const/4 v1, 0x1

    .line 412
    invoke-direct {p0}, Lcom/jme3/texture/Image;-><init>()V

    .line 414
    if-eqz p5, :cond_0

    array-length v0, p5

    if-gt v0, v1, :cond_0

    .line 415
    const/4 p5, 0x0

    .line 418
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/texture/Image;->setFormat(Lcom/jme3/texture/Image$Format;)V

    .line 419
    iput p2, p0, Lcom/jme3/texture/Image;->width:I

    .line 420
    iput p3, p0, Lcom/jme3/texture/Image;->height:I

    .line 421
    if-eqz p4, :cond_1

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    .line 423
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_1
    iput-object p5, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    .line 426
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/texture/Image;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-super {p0}, Lcom/jme3/util/NativeObject;->clone()Lcom/jme3/util/NativeObject;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Image;

    .line 343
    .local v0, clone:Lcom/jme3/texture/Image;
    iget-object v1, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :goto_0
    iput-object v1, v0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    .line 344
    iget-object v1, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    iput-object v2, v0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    .line 345
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    .line 346
    return-object v0

    :cond_1
    move-object v1, v2

    .line 343
    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/jme3/util/NativeObject;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->clone()Lcom/jme3/texture/Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->clone()Lcom/jme3/texture/Image;

    move-result-object v0

    return-object v0
.end method

.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Lcom/jme3/texture/Image;

    iget v1, p0, Lcom/jme3/texture/Image;->id:I

    invoke-direct {v0, v1}, Lcom/jme3/texture/Image;-><init>(I)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "rendererObject"

    .prologue
    .line 329
    check-cast p1, Lcom/jme3/renderer/Renderer;

    .end local p1
    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteImage(Lcom/jme3/texture/Image;)V

    .line 330
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 727
    if-ne p1, p0, :cond_1

    .line 752
    :cond_0
    :goto_0
    return v1

    .line 730
    :cond_1
    instance-of v3, p1, Lcom/jme3/texture/Image;

    if-nez v3, :cond_2

    move v1, v2

    .line 731
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 733
    check-cast v0, Lcom/jme3/texture/Image;

    .line 734
    .local v0, that:Lcom/jme3/texture/Image;
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 735
    goto :goto_0

    .line 736
    :cond_3
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 737
    goto :goto_0

    .line 738
    :cond_4
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 739
    goto :goto_0

    .line 740
    :cond_5
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 741
    goto :goto_0

    .line 742
    :cond_6
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    move v1, v2

    .line 743
    goto :goto_0

    .line 744
    :cond_7
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 746
    goto :goto_0

    .line 747
    :cond_8
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v3

    if-eqz v3, :cond_9

    move v1, v2

    .line 748
    goto :goto_0

    .line 749
    :cond_9
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 750
    goto/16 :goto_0
.end method

.method public getData(I)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "index"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 680
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 682
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/jme3/texture/Image;->depth:I

    return v0
.end method

.method public getEfficentData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/jme3/texture/Image;->efficientData:Ljava/lang/Object;

    return-object v0
.end method

.method public getFormat()Lcom/jme3/texture/Image$Format;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/jme3/texture/Image;->height:I

    return v0
.end method

.method public getMipMapSizes()[I
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    return-object v0
.end method

.method public getMultiSamples()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/jme3/texture/Image;->multiSamples:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/jme3/texture/Image;->width:I

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 757
    const/4 v0, 0x7

    .line 758
    .local v0, hash:I
    iget-object v1, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x2a7

    .line 759
    mul-int/lit8 v1, v0, 0x61

    iget v3, p0, Lcom/jme3/texture/Image;->width:I

    add-int v0, v1, v3

    .line 760
    mul-int/lit8 v1, v0, 0x61

    iget v3, p0, Lcom/jme3/texture/Image;->height:I

    add-int v0, v1, v3

    .line 761
    mul-int/lit8 v1, v0, 0x61

    iget v3, p0, Lcom/jme3/texture/Image;->depth:I

    add-int v0, v1, v3

    .line 762
    mul-int/lit8 v1, v0, 0x61

    iget-object v3, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v0, v1, v3

    .line 763
    mul-int/lit8 v1, v0, 0x61

    iget-object v3, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 764
    mul-int/lit8 v1, v0, 0x61

    iget v2, p0, Lcom/jme3/texture/Image;->multiSamples:I

    add-int v0, v1, v2

    .line 765
    return v0

    :cond_1
    move v1, v2

    .line 758
    goto :goto_0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 780
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 781
    const-string v0, "format"

    const-class v2, Lcom/jme3/texture/Image$Format;

    sget-object v3, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    .line 782
    const-string v0, "width"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/Image;->width:I

    .line 783
    const-string v0, "height"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/Image;->height:I

    .line 784
    const-string v0, "depth"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/Image;->depth:I

    .line 785
    const-string v0, "mipMapSizes"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/texture/Image;->mipMapSizes:[I

    .line 786
    const-string v0, "multiSamples"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/texture/Image;->multiSamples:I

    .line 787
    const-string v0, "data"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readByteBufferArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    .line 788
    return-void
.end method

.method public resetObject()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/texture/Image;->id:I

    .line 324
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    .line 325
    return-void
.end method

.method public setData(ILjava/nio/ByteBuffer;)V
    .locals 2
    .parameter "index"
    .parameter "data"

    .prologue
    .line 521
    if-ltz p1, :cond_1

    .line 522
    :goto_0
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    .line 530
    return-void

    .line 528
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be greater than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 508
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    .line 509
    iget-object v0, p0, Lcom/jme3/texture/Image;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    .line 511
    return-void
.end method

.method public setEfficentData(Ljava/lang/Object;)V
    .locals 0
    .parameter "efficientData"

    .prologue
    .line 541
    iput-object p1, p0, Lcom/jme3/texture/Image;->efficientData:Ljava/lang/Object;

    .line 542
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    .line 543
    return-void
.end method

.method public setFormat(Lcom/jme3/texture/Image$Format;)V
    .locals 2
    .parameter "format"

    .prologue
    .line 617
    if-nez p1, :cond_0

    .line 618
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    iput-object p1, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    .line 622
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    .line 623
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 578
    iput p1, p0, Lcom/jme3/texture/Image;->height:I

    .line 579
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    .line 580
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 603
    iput p1, p0, Lcom/jme3/texture/Image;->width:I

    .line 604
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->setUpdateNeeded()V

    .line 605
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string v1, "[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jme3/texture/Image;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jme3/texture/Image;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 709
    iget v1, p0, Lcom/jme3/texture/Image;->depth:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 710
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jme3/texture/Image;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 712
    :cond_0
    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/texture/Image;->format:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v2}, Lcom/jme3/texture/Image$Format;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    const-string v1, ", mips"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :cond_1
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getId()I

    move-result v1

    if-ltz v1, :cond_2

    .line 718
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jme3/texture/Image;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
