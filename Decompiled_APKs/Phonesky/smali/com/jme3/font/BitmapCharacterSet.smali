.class public Lcom/jme3/font/BitmapCharacterSet;
.super Ljava/lang/Object;
.source "BitmapCharacterSet.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# instance fields
.field private base:I

.field private characters:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap",
            "<",
            "Lcom/jme3/util/IntMap",
            "<",
            "Lcom/jme3/font/BitmapCharacter;",
            ">;>;"
        }
    .end annotation
.end field

.field private height:I

.field private lineHeight:I

.field private pageSize:I

.field private renderedSize:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    .line 118
    return-void
.end method

.method private getCharacterSet(I)Lcom/jme3/util/IntMap;
    .locals 2
    .parameter "style"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/jme3/util/IntMap",
            "<",
            "Lcom/jme3/font/BitmapCharacter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    new-instance v1, Lcom/jme3/util/IntMap;

    invoke-direct {v1}, Lcom/jme3/util/IntMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/IntMap;

    return-object v0
.end method

.method private readCharset(Lcom/jme3/export/InputCapsule;I)Lcom/jme3/util/IntMap;
    .locals 9
    .parameter "ic"
    .parameter "style"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/export/InputCapsule;",
            "I)",
            "Lcom/jme3/util/IntMap",
            "<",
            "Lcom/jme3/font/BitmapCharacter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 104
    new-instance v1, Lcom/jme3/util/IntMap;

    invoke-direct {v1}, Lcom/jme3/util/IntMap;-><init>()V

    .line 105
    .local v1, charset:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<Lcom/jme3/font/BitmapCharacter;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "indexes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v8}, Lcom/jme3/export/InputCapsule;->readShortArray(Ljava/lang/String;[S)[S

    move-result-object v5

    .line 106
    .local v5, indexes:[S
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chars"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v8}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    .line 108
    .local v0, chars:[Lcom/jme3/export/Savable;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 109
    aget-short v6, v5, v3

    const v7, 0xffff

    and-int v4, v6, v7

    .line 110
    .local v4, index:I
    aget-object v2, v0, v3

    check-cast v2, Lcom/jme3/font/BitmapCharacter;

    .line 111
    .local v2, chr:Lcom/jme3/font/BitmapCharacter;
    invoke-virtual {v1, v4, v2}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v2           #chr:Lcom/jme3/font/BitmapCharacter;
    .end local v4           #index:I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addCharacter(ILcom/jme3/font/BitmapCharacter;)V
    .locals 1
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/font/BitmapCharacterSet;->getCharacterSet(I)Lcom/jme3/util/IntMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public getCharacter(I)Lcom/jme3/font/BitmapCharacter;
    .locals 1
    .parameter "index"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/font/BitmapCharacterSet;->getCharacter(II)Lcom/jme3/font/BitmapCharacter;

    move-result-object v0

    return-object v0
.end method

.method public getCharacter(II)Lcom/jme3/font/BitmapCharacter;
    .locals 2
    .parameter "index"
    .parameter "style"

    .prologue
    .line 125
    invoke-direct {p0, p2}, Lcom/jme3/font/BitmapCharacterSet;->getCharacterSet(I)Lcom/jme3/util/IntMap;

    move-result-object v0

    .line 126
    .local v0, map:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<Lcom/jme3/font/BitmapCharacter;>;"
    invoke-virtual {v0, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/font/BitmapCharacter;

    return-object v1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 8
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 89
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v2

    .line 90
    .local v2, ic:Lcom/jme3/export/InputCapsule;
    const-string v6, "lineHeight"

    invoke-interface {v2, v6, v7}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/jme3/font/BitmapCharacterSet;->lineHeight:I

    .line 91
    const-string v6, "base"

    invoke-interface {v2, v6, v7}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/jme3/font/BitmapCharacterSet;->base:I

    .line 92
    const-string v6, "renderedSize"

    invoke-interface {v2, v6, v7}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/jme3/font/BitmapCharacterSet;->renderedSize:I

    .line 93
    const-string v6, "width"

    invoke-interface {v2, v6, v7}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/jme3/font/BitmapCharacterSet;->width:I

    .line 94
    const-string v6, "height"

    invoke-interface {v2, v6, v7}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/jme3/font/BitmapCharacterSet;->height:I

    .line 95
    const-string v6, "pageSize"

    invoke-interface {v2, v6, v7}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/jme3/font/BitmapCharacterSet;->pageSize:I

    .line 96
    const-string v6, "styles"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v5

    .line 98
    .local v5, styles:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v0, v1

    .line 99
    .local v4, style:I
    iget-object v6, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-direct {p0, v2, v4}, Lcom/jme3/font/BitmapCharacterSet;->readCharset(Lcom/jme3/export/InputCapsule;I)Lcom/jme3/util/IntMap;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v4           #style:I
    :cond_0
    return-void
.end method

.method public setBase(I)V
    .locals 0
    .parameter "base"

    .prologue
    .line 153
    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->base:I

    .line 154
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 177
    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->height:I

    .line 178
    return-void
.end method

.method public setLineHeight(I)V
    .locals 0
    .parameter "lineHeight"

    .prologue
    .line 145
    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->lineHeight:I

    .line 146
    return-void
.end method

.method setPageSize(I)V
    .locals 0
    .parameter "pageSize"

    .prologue
    .line 221
    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->pageSize:I

    .line 222
    return-void
.end method

.method public setRenderedSize(I)V
    .locals 0
    .parameter "renderedSize"

    .prologue
    .line 161
    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->renderedSize:I

    .line 162
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 169
    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->width:I

    .line 170
    return-void
.end method
