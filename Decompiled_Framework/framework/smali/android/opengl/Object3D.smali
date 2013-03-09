.class public abstract Landroid/opengl/Object3D;
.super Ljava/lang/Object;
.source "Object3D.java"


# instance fields
.field private mBoundsMaxX:F

.field private mBoundsMaxY:F

.field private mBoundsMaxZ:F

.field private mBoundsMinX:F

.field private mBoundsMinY:F

.field private mBoundsMinZ:F

.field private mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/opengl/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mHasTexcoords:Z

.field private mMaterials:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/opengl/Material;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalBuffer:Ljava/nio/IntBuffer;

.field private mTexcoordBuffer:Ljava/nio/IntBuffer;

.field private mTextures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/opengl/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private mVertexBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v2, 0x7f7fffff

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/Object3D;->mHasTexcoords:Z

    iput v2, p0, Landroid/opengl/Object3D;->mBoundsMinX:F

    iput v1, p0, Landroid/opengl/Object3D;->mBoundsMaxX:F

    iput v2, p0, Landroid/opengl/Object3D;->mBoundsMinY:F

    iput v1, p0, Landroid/opengl/Object3D;->mBoundsMaxY:F

    iput v2, p0, Landroid/opengl/Object3D;->mBoundsMinZ:F

    iput v1, p0, Landroid/opengl/Object3D;->mBoundsMaxZ:F

    invoke-direct {p0}, Landroid/opengl/Object3D;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/Object3D;->mTexcoordBuffer:Ljava/nio/IntBuffer;

    iput-object v0, p0, Landroid/opengl/Object3D;->mNormalBuffer:Ljava/nio/IntBuffer;

    iput-object v0, p0, Landroid/opengl/Object3D;->mVertexBuffer:Ljava/nio/IntBuffer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/opengl/Object3D;->mGroups:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/opengl/Object3D;->mMaterials:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/opengl/Object3D;->mTextures:Ljava/util/Map;

    return-void
.end method

.method private static verifyByte(Ljava/io/DataInputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    iget-object v1, p0, Landroid/opengl/Object3D;->mGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/Group;

    invoke-virtual {v1, p1}, Landroid/opengl/Group;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBoundsMaxX()F
    .locals 1

    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMaxX:F

    return v0
.end method

.method public getBoundsMaxY()F
    .locals 1

    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMaxY:F

    return v0
.end method

.method public getBoundsMaxZ()F
    .locals 1

    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMaxZ:F

    return v0
.end method

.method public getBoundsMinX()F
    .locals 1

    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMinX:F

    return v0
.end method

.method public getBoundsMinY()F
    .locals 1

    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMinY:F

    return v0
.end method

.method public getBoundsMinZ()F
    .locals 1

    iget v0, p0, Landroid/opengl/Object3D;->mBoundsMinZ:F

    return v0
.end method

.method public getMaterial(Ljava/lang/String;)Landroid/opengl/Material;
    .locals 2

    iget-object v1, p0, Landroid/opengl/Object3D;->mMaterials:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/Material;

    return-object v0
.end method

.method public getNormalBuffer()Ljava/nio/IntBuffer;
    .locals 1

    iget-object v0, p0, Landroid/opengl/Object3D;->mNormalBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getNumTriangles()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/opengl/Object3D;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/opengl/Group;

    invoke-virtual {v2}, Landroid/opengl/Group;->getNumTriangles()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getTexcoordBuffer()Ljava/nio/IntBuffer;
    .locals 1

    iget-object v0, p0, Landroid/opengl/Object3D;->mTexcoordBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getTexture(Ljava/lang/String;)Landroid/opengl/Texture;
    .locals 1

    iget-object v0, p0, Landroid/opengl/Object3D;->mTextures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/Texture;

    return-object v0
.end method

.method public getVertexBuffer()Ljava/nio/IntBuffer;
    .locals 1

    iget-object v0, p0, Landroid/opengl/Object3D;->mVertexBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public hasTexcoords()Z
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/Object3D;->mHasTexcoords:Z

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Landroid/opengl/Object3D;->reset()V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual/range {p0 .. p1}, Landroid/opengl/Object3D;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0xe7

    move/from16 v0, v22

    invoke-static {v3, v0}, Landroid/opengl/Object3D;->verifyByte(Ljava/io/DataInputStream;I)V

    const/16 v22, 0x6c

    move/from16 v0, v22

    invoke-static {v3, v0}, Landroid/opengl/Object3D;->verifyByte(Ljava/io/DataInputStream;I)V

    const/16 v22, 0x65

    move/from16 v0, v22

    invoke-static {v3, v0}, Landroid/opengl/Object3D;->verifyByte(Ljava/io/DataInputStream;I)V

    const/16 v22, 0x73

    move/from16 v0, v22

    invoke-static {v3, v0}, Landroid/opengl/Object3D;->verifyByte(Ljava/io/DataInputStream;I)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMinX:F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMaxX:F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMinY:F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMaxY:F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMinZ:F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/Object3D;->mBoundsMaxZ:F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    const/16 v22, 0x1

    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/Object3D;->mHasTexcoords:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/Object3D;->mHasTexcoords:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    const/16 v6, 0x8

    :goto_1
    mul-int v11, v13, v6

    mul-int/lit8 v23, v13, 0x4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/Object3D;->mHasTexcoords:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    const/16 v22, 0x8

    :goto_2
    mul-int v7, v23, v22

    new-array v0, v7, [B

    move-object/from16 v16, v0

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v7, :cond_3

    sub-int v22, v7, v15

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v3, v0, v15, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v22

    add-int v15, v15, v22

    goto :goto_3

    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x6

    goto :goto_1

    :cond_2
    const/16 v22, 0x6

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v22

    sget-object v23, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_4

    aget-byte v17, v16, v5

    add-int/lit8 v22, v5, 0x1

    aget-byte v18, v16, v22

    add-int/lit8 v22, v5, 0x2

    aget-byte v19, v16, v22

    add-int/lit8 v22, v5, 0x3

    aget-byte v20, v16, v22

    aput-byte v20, v16, v5

    add-int/lit8 v22, v5, 0x1

    aput-byte v19, v16, v22

    add-int/lit8 v22, v5, 0x2

    aput-byte v18, v16, v22

    add-int/lit8 v22, v5, 0x3

    aput-byte v17, v16, v22

    add-int/lit8 v5, v5, 0x4

    goto :goto_4

    :cond_4
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v22, v13, 0xc

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/Object3D;->mVertexBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/Object3D;->mVertexBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/Object3D;->mHasTexcoords:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v22

    mul-int/lit8 v23, v13, 0x8

    add-int v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/Object3D;->mTexcoordBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/Object3D;->mTexcoordBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    :cond_5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v22

    mul-int/lit8 v23, v13, 0xc

    add-int v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/Object3D;->mNormalBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/Object3D;->mNormalBuffer:Ljava/nio/IntBuffer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v12, :cond_6

    new-instance v8, Landroid/opengl/Material;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/opengl/Material;-><init>(Landroid/opengl/Object3D;)V

    invoke-virtual {v8, v3}, Landroid/opengl/Material;->load(Ljava/io/DataInputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/Object3D;->mMaterials:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Landroid/opengl/Material;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v10, :cond_7

    new-instance v4, Landroid/opengl/Group;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/opengl/Group;-><init>(Landroid/opengl/Object3D;)V

    invoke-virtual {v4, v3}, Landroid/opengl/Group;->load(Ljava/io/DataInputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/Object3D;->mGroups:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-virtual {v4}, Landroid/opengl/Group;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method public loadTexture(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/opengl/Object3D;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Landroid/opengl/Texture;

    invoke-direct {v1, v0}, Landroid/opengl/Texture;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Landroid/opengl/Object3D;->mTextures:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract readFile(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
