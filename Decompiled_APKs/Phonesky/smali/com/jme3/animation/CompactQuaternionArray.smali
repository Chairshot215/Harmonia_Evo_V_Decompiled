.class public Lcom/jme3/animation/CompactQuaternionArray;
.super Lcom/jme3/animation/CompactArray;
.source "CompactQuaternionArray.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/animation/CompactArray",
        "<",
        "Lcom/jme3/math/Quaternion;",
        ">;",
        "Lcom/jme3/export/Savable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jme3/animation/CompactArray;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method protected deserialize(ILcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 6
    .parameter "i"
    .parameter "store"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/jme3/animation/CompactQuaternionArray;->getTupleSize()I

    move-result v1

    mul-int v0, p1, v1

    .line 97
    .local v0, j:I
    iget-object v1, p0, Lcom/jme3/animation/CompactQuaternionArray;->array:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/jme3/animation/CompactQuaternionArray;->array:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jme3/animation/CompactQuaternionArray;->array:[F

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/jme3/animation/CompactQuaternionArray;->array:[F

    add-int/lit8 v5, v0, 0x3

    aget v4, v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    .line 98
    return-object p2
.end method

.method protected bridge synthetic deserialize(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p2, Lcom/jme3/math/Quaternion;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/jme3/animation/CompactQuaternionArray;->deserialize(ILcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method protected final getElementClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/jme3/math/Quaternion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const-class v0, Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method protected final getTupleSize()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x4

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 81
    .local v0, in:Lcom/jme3/export/InputCapsule;
    const-string v1, "array"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/animation/CompactQuaternionArray;->array:[F

    .line 82
    const-string v1, "index"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/animation/CompactQuaternionArray;->index:[I

    .line 83
    return-void
.end method

.method protected serialize(ILcom/jme3/math/Quaternion;)V
    .locals 4
    .parameter "i"
    .parameter "store"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/jme3/animation/CompactQuaternionArray;->getTupleSize()I

    move-result v1

    mul-int v0, p1, v1

    .line 88
    .local v0, j:I
    iget-object v1, p0, Lcom/jme3/animation/CompactQuaternionArray;->array:[F

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v2

    aput v2, v1, v0

    .line 89
    iget-object v1, p0, Lcom/jme3/animation/CompactQuaternionArray;->array:[F

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v3

    aput v3, v1, v2

    .line 90
    iget-object v1, p0, Lcom/jme3/animation/CompactQuaternionArray;->array:[F

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v3

    aput v3, v1, v2

    .line 91
    iget-object v1, p0, Lcom/jme3/animation/CompactQuaternionArray;->array:[F

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v3

    aput v3, v1, v2

    .line 92
    return-void
.end method

.method protected bridge synthetic serialize(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p2, Lcom/jme3/math/Quaternion;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/jme3/animation/CompactQuaternionArray;->serialize(ILcom/jme3/math/Quaternion;)V

    return-void
.end method
