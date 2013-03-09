.class public Lcom/jme3/scene/VertexBuffer;
.super Lcom/jme3/util/NativeObject;
.source "VertexBuffer.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/VertexBuffer$1;,
        Lcom/jme3/scene/VertexBuffer$Format;,
        Lcom/jme3/scene/VertexBuffer$Usage;,
        Lcom/jme3/scene/VertexBuffer$Type;
    }
.end annotation


# instance fields
.field protected bufType:Lcom/jme3/scene/VertexBuffer$Type;

.field protected components:I

.field protected transient componentsLength:I

.field protected data:Ljava/nio/Buffer;

.field protected transient dataSizeChanged:Z

.field protected format:Lcom/jme3/scene/VertexBuffer$Format;

.field protected lastLimit:I

.field protected normalized:Z

.field protected offset:I

.field protected stride:I

.field protected usage:Lcom/jme3/scene/VertexBuffer$Usage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    const-class v0, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {p0, v0}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;)V

    .line 301
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    .line 302
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    .line 303
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    .line 304
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    .line 309
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    .line 314
    iput-boolean v1, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    .line 315
    iput-boolean v1, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    .line 331
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 334
    const-class v0, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {p0, v0, p1}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;I)V

    .line 301
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    .line 302
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    .line 303
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    .line 304
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    .line 309
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    .line 314
    iput-boolean v1, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    .line 315
    iput-boolean v1, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    .line 335
    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/VertexBuffer$Type;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 322
    const-class v0, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {p0, v0}, Lcom/jme3/util/NativeObject;-><init>(Ljava/lang/Class;)V

    .line 301
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    .line 302
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    .line 303
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    .line 304
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    .line 309
    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    .line 314
    iput-boolean v1, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    .line 315
    iput-boolean v1, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    .line 323
    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->bufType:Lcom/jme3/scene/VertexBuffer$Type;

    .line 324
    return-void
.end method

.method public static createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;
    .locals 4
    .parameter "format"
    .parameter "components"
    .parameter "numElements"

    .prologue
    .line 851
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    .line 852
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Num components must be between 1 and 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 854
    :cond_1
    mul-int v0, p2, p1

    .line 856
    .local v0, total:I
    sget-object v1, Lcom/jme3/scene/VertexBuffer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 873
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecoginized buffer format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 859
    :pswitch_0
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 871
    :goto_0
    return-object v1

    .line 861
    :pswitch_1
    mul-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 864
    :pswitch_2
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    goto :goto_0

    .line 867
    :pswitch_3
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    goto :goto_0

    .line 869
    :pswitch_4
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    goto :goto_0

    .line 871
    :pswitch_5
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object v1

    goto :goto_0

    .line 856
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public clearUpdateNeeded()V
    .locals 1

    .prologue
    .line 582
    invoke-super {p0}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    .line 584
    return-void
.end method

.method public clone()Lcom/jme3/scene/VertexBuffer;
    .locals 2

    .prologue
    .line 886
    invoke-super {p0}, Lcom/jme3/util/NativeObject;->clone()Lcom/jme3/util/NativeObject;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer;

    .line 887
    .local v0, vb:Lcom/jme3/scene/VertexBuffer;
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/jme3/scene/VertexBuffer;->handleRef:Ljava/lang/Object;

    .line 888
    const/4 v1, -0x1

    iput v1, v0, Lcom/jme3/scene/VertexBuffer;->id:I

    .line 889
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    .line 897
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/util/NativeObject;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->clone()Lcom/jme3/scene/VertexBuffer;

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
    .line 57
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->clone()Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    return-object v0
.end method

.method public copyElement(ILcom/jme3/scene/VertexBuffer;I)V
    .locals 1
    .parameter "inIndex"
    .parameter "outVb"
    .parameter "outIndex"

    .prologue
    .line 767
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jme3/scene/VertexBuffer;->copyElements(ILcom/jme3/scene/VertexBuffer;II)V

    .line 768
    return-void
.end method

.method public copyElements(ILcom/jme3/scene/VertexBuffer;II)V
    .locals 16
    .parameter "inIndex"
    .parameter "outVb"
    .parameter "outIndex"
    .parameter "len"

    .prologue
    .line 783
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p2

    iget v13, v0, Lcom/jme3/scene/VertexBuffer;->components:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/scene/VertexBuffer;->components:I

    if-eq v13, v14, :cond_1

    .line 784
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Buffer format mismatch. Cannot copy"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 786
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jme3/scene/VertexBuffer;->components:I

    mul-int v7, p1, v13

    .line 787
    .local v7, inPos:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jme3/scene/VertexBuffer;->components:I

    mul-int v9, p3, v13

    .line 788
    .local v9, outPos:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/jme3/scene/VertexBuffer;->components:I

    .line 789
    .local v3, elementSz:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v14, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v13, v14, :cond_2

    .line 791
    mul-int/lit8 v7, v7, 0x2

    .line 792
    mul-int/lit8 v9, v9, 0x2

    .line 793
    mul-int/lit8 v3, v3, 0x2

    .line 799
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v12

    .line 800
    .local v12, srcData:Ljava/nio/Buffer;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v13}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 802
    sget-object v13, Lcom/jme3/scene/VertexBuffer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v14}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 836
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unrecognized buffer format: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    :pswitch_0
    move-object v1, v12

    .line 806
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 807
    .local v1, bin:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 808
    .local v2, bout:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    mul-int v14, v3, p4

    add-int/2addr v14, v7

    invoke-virtual {v13, v14}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 809
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    mul-int v14, v3, p4

    add-int/2addr v14, v9

    invoke-virtual {v13, v14}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 810
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 841
    .end local v1           #bin:Ljava/nio/ByteBuffer;
    .end local v2           #bout:Ljava/nio/ByteBuffer;
    :goto_0
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v13}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 842
    return-void

    :pswitch_1
    move-object v10, v12

    .line 814
    check-cast v10, Ljava/nio/ShortBuffer;

    .line 815
    .local v10, sin:Ljava/nio/ShortBuffer;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v11, Ljava/nio/ShortBuffer;

    .line 816
    .local v11, sout:Ljava/nio/ShortBuffer;
    invoke-virtual {v10, v7}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    mul-int v14, v3, p4

    add-int/2addr v14, v7

    invoke-virtual {v13, v14}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 817
    invoke-virtual {v11, v9}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    mul-int v14, v3, p4

    add-int/2addr v14, v9

    invoke-virtual {v13, v14}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 818
    invoke-virtual {v11, v10}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    goto :goto_0

    .end local v10           #sin:Ljava/nio/ShortBuffer;
    .end local v11           #sout:Ljava/nio/ShortBuffer;
    :pswitch_2
    move-object v6, v12

    .line 822
    check-cast v6, Ljava/nio/IntBuffer;

    .line 823
    .local v6, iin:Ljava/nio/IntBuffer;
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v8, Ljava/nio/IntBuffer;

    .line 824
    .local v8, iout:Ljava/nio/IntBuffer;
    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    mul-int v14, v3, p4

    add-int/2addr v14, v7

    invoke-virtual {v13, v14}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 825
    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    mul-int v14, v3, p4

    add-int/2addr v14, v9

    invoke-virtual {v13, v14}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 826
    invoke-virtual {v8, v6}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_0

    .end local v6           #iin:Ljava/nio/IntBuffer;
    .end local v8           #iout:Ljava/nio/IntBuffer;
    :pswitch_3
    move-object v4, v12

    .line 829
    check-cast v4, Ljava/nio/FloatBuffer;

    .line 830
    .local v4, fin:Ljava/nio/FloatBuffer;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v5, Ljava/nio/FloatBuffer;

    .line 831
    .local v5, fout:Ljava/nio/FloatBuffer;
    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    mul-int v14, v3, p4

    add-int/2addr v14, v7

    invoke-virtual {v13, v14}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 832
    invoke-virtual {v5, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    mul-int v14, v3, p4

    add-int/2addr v14, v9

    invoke-virtual {v13, v14}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 833
    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 2

    .prologue
    .line 954
    new-instance v0, Lcom/jme3/scene/VertexBuffer;

    iget v1, p0, Lcom/jme3/scene/VertexBuffer;->id:I

    invoke-direct {v0, v1}, Lcom/jme3/scene/VertexBuffer;-><init>(I)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "rendererObject"

    .prologue
    .line 949
    check-cast p1, Lcom/jme3/renderer/Renderer;

    .end local p1
    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 950
    return-void
.end method

.method public getBufferType()Lcom/jme3/scene/VertexBuffer$Type;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->bufType:Lcom/jme3/scene/VertexBuffer$Type;

    return-object v0
.end method

.method public getData()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    return-object v0
.end method

.method public getDataReadOnly()Ljava/nio/Buffer;
    .locals 4

    .prologue
    .line 402
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    if-nez v1, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 430
    :goto_0
    return-object v0

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    instance-of v1, v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 428
    .local v0, result:Ljava/nio/Buffer;
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 415
    .end local v0           #result:Ljava/nio/Buffer;
    :cond_1
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    instance-of v1, v1, Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_2

    .line 416
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->asReadOnlyBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .restart local v0       #result:Ljava/nio/Buffer;
    goto :goto_1

    .line 417
    .end local v0           #result:Ljava/nio/Buffer;
    :cond_2
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    instance-of v1, v1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_3

    .line 418
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->asReadOnlyBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .restart local v0       #result:Ljava/nio/Buffer;
    goto :goto_1

    .line 419
    .end local v0           #result:Ljava/nio/Buffer;
    :cond_3
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    instance-of v1, v1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_4

    .line 420
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->asReadOnlyBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .restart local v0       #result:Ljava/nio/Buffer;
    goto :goto_1

    .line 422
    .end local v0           #result:Ljava/nio/Buffer;
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get read-only view of buffer type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFormat()Lcom/jme3/scene/VertexBuffer$Format;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    return v0
.end method

.method public getStride()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    return v0
.end method

.method public getUsage()Lcom/jme3/scene/VertexBuffer$Usage;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    return-object v0
.end method

.method public hasDataSizeChanged()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    return v0
.end method

.method public isNormalized()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    return v0
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

    .line 992
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 993
    const-string v0, "components"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    .line 994
    const-string v0, "usage"

    const-class v2, Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer$Usage;

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    .line 995
    const-string v0, "buffer_type"

    const-class v2, Lcom/jme3/scene/VertexBuffer$Type;

    invoke-interface {v1, v0, v2, v4}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer$Type;

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->bufType:Lcom/jme3/scene/VertexBuffer$Type;

    .line 996
    const-string v0, "format"

    const-class v2, Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer$Format;

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    .line 997
    const-string v0, "normalized"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    .line 998
    const-string v0, "offset"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    .line 999
    const-string v0, "stride"

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    .line 1000
    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v2

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer$Format;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1003
    sget-object v2, Lcom/jme3/scene/VertexBuffer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    iget-object v3, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1021
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported import buffer format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :pswitch_0
    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    .line 1023
    :goto_0
    return-void

    .line 1009
    :pswitch_1
    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readShortBuffer(Ljava/lang/String;Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    goto :goto_0

    .line 1014
    :pswitch_2
    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    goto :goto_0

    .line 1018
    :pswitch_3
    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readIntBuffer(Ljava/lang/String;Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    goto :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public resetObject()V
    .locals 1

    .prologue
    .line 943
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->id:I

    .line 944
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->setUpdateNeeded()V

    .line 945
    return-void
.end method

.method public setNormalized(Z)V
    .locals 0
    .parameter "normalized"

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    .line 462
    return-void
.end method

.method public setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V
    .locals 0
    .parameter "usage"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    .line 450
    return-void
.end method

.method public setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V
    .locals 2
    .parameter "usage"
    .parameter "components"
    .parameter "format"
    .parameter "data"

    .prologue
    .line 517
    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 518
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Data has already been sent. Cannot setupData again."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_2

    .line 521
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "None of the arguments can be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_2
    invoke-virtual {p4}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VertexBuffer data cannot be read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_3
    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    const/4 v0, 0x4

    if-le p2, v0, :cond_5

    .line 527
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "components must be between 1 and 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_5
    iput-object p4, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    .line 530
    iput p2, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    .line 531
    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    .line 532
    iput-object p3, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    .line 533
    invoke-virtual {p3}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v0

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    .line 534
    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    .line 535
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->setUpdateNeeded()V

    .line 536
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, dataTxt:Ljava/lang/String;
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    if-eqz v1, :cond_0

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", elements="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 934
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[fmt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer$Format;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->bufType:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer$Usage;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateData(Ljava/nio/Buffer;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 551
    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 557
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VertexBuffer data cannot be read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    if-eq v0, v1, :cond_3

    .line 563
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    .line 564
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    .line 567
    :cond_3
    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    .line 568
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->setUpdateNeeded()V

    .line 569
    return-void
.end method
