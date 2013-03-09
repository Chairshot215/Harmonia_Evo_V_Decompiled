.class public Lcom/jme3/font/BitmapCharacter;
.super Ljava/lang/Object;
.source "BitmapCharacter.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private c:C

.field private height:I

.field private kerning:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private page:I

.field private width:I

.field private x:I

.field private xAdvance:I

.field private xOffset:I

.field private y:I

.field private yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    .line 55
    return-void
.end method


# virtual methods
.method public addKerning(II)V
    .locals 2
    .parameter "second"
    .parameter "amount"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public clone()Lcom/jme3/font/BitmapCharacter;
    .locals 3

    .prologue
    .line 64
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/font/BitmapCharacter;

    .line 65
    .local v1, result:Lcom/jme3/font/BitmapCharacter;
    iget-object v2, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    invoke-virtual {v2}, Lcom/jme3/util/IntMap;->clone()Lcom/jme3/util/IntMap;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object v1

    .line 67
    .end local v1           #result:Lcom/jme3/font/BitmapCharacter;
    :catch_0
    move-exception v0

    .line 68
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/jme3/font/BitmapCharacter;->clone()Lcom/jme3/font/BitmapCharacter;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 7
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 182
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v2

    .line 183
    .local v2, ic:Lcom/jme3/export/InputCapsule;
    const-string v4, "c"

    invoke-interface {v2, v4, v5}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    iput-char v4, p0, Lcom/jme3/font/BitmapCharacter;->c:C

    .line 184
    const-string v4, "x"

    invoke-interface {v2, v4, v5}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jme3/font/BitmapCharacter;->x:I

    .line 185
    const-string v4, "y"

    invoke-interface {v2, v4, v5}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jme3/font/BitmapCharacter;->y:I

    .line 186
    const-string v4, "width"

    invoke-interface {v2, v4, v5}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jme3/font/BitmapCharacter;->width:I

    .line 187
    const-string v4, "height"

    invoke-interface {v2, v4, v5}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jme3/font/BitmapCharacter;->height:I

    .line 188
    const-string v4, "xOffset"

    invoke-interface {v2, v4, v5}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jme3/font/BitmapCharacter;->xOffset:I

    .line 189
    const-string v4, "yOffset"

    invoke-interface {v2, v4, v5}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jme3/font/BitmapCharacter;->yOffset:I

    .line 190
    const-string v4, "xAdvance"

    invoke-interface {v2, v4, v5}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jme3/font/BitmapCharacter;->xAdvance:I

    .line 192
    const-string v4, "seconds"

    invoke-interface {v2, v4, v6}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    .line 193
    .local v3, seconds:[I
    const-string v4, "amounts"

    invoke-interface {v2, v4, v6}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 195
    .local v0, amounts:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    aget v5, v3, v1

    aget v6, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 101
    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->height:I

    .line 102
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 129
    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->page:I

    .line 130
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 93
    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->width:I

    .line 94
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 77
    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->x:I

    .line 78
    return-void
.end method

.method public setXAdvance(I)V
    .locals 0
    .parameter "advance"

    .prologue
    .line 125
    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->xAdvance:I

    .line 126
    return-void
.end method

.method public setXOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 109
    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->xOffset:I

    .line 110
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 85
    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->y:I

    .line 86
    return-void
.end method

.method public setYOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 117
    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->yOffset:I

    .line 118
    return-void
.end method
