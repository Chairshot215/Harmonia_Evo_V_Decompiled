.class public Lcom/jme3/texture/Texture2D;
.super Lcom/jme3/texture/Texture;
.source "Texture2D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/Texture2D$1;
    }
.end annotation


# instance fields
.field private wrapS:Lcom/jme3/texture/Texture$WrapMode;

.field private wrapT:Lcom/jme3/texture/Texture$WrapMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jme3/texture/Texture;-><init>()V

    .line 46
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture2D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 47
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture2D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image;)V
    .locals 1
    .parameter "img"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/jme3/texture/Texture;-><init>()V

    .line 46
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture2D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 47
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture2D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    .line 62
    invoke-virtual {p0, p1}, Lcom/jme3/texture/Texture2D;->setImage(Lcom/jme3/texture/Image;)V

    .line 63
    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image$Format;->isDepthFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {p0, v0}, Lcom/jme3/texture/Texture2D;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    .line 65
    sget-object v0, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p0, v0}, Lcom/jme3/texture/Texture2D;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public createSimpleClone()Lcom/jme3/texture/Texture;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/jme3/texture/Texture2D;

    invoke-direct {v0}, Lcom/jme3/texture/Texture2D;-><init>()V

    .line 102
    .local v0, clone:Lcom/jme3/texture/Texture2D;
    invoke-virtual {p0, v0}, Lcom/jme3/texture/Texture2D;->createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;

    .line 103
    return-object v0
.end method

.method public createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;
    .locals 2
    .parameter "rVal"

    .prologue
    .line 108
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    iget-object v1, p0, Lcom/jme3/texture/Texture2D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V

    .line 109
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    iget-object v1, p0, Lcom/jme3/texture/Texture2D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V

    .line 110
    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 186
    instance-of v2, p1, Lcom/jme3/texture/Texture2D;

    if-nez v2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 189
    check-cast v0, Lcom/jme3/texture/Texture2D;

    .line 190
    .local v0, that:Lcom/jme3/texture/Texture2D;
    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/jme3/texture/Texture2D;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v2

    sget-object v3, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v0, v3}, Lcom/jme3/texture/Texture2D;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 192
    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/jme3/texture/Texture2D;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v2

    sget-object v3, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v0, v3}, Lcom/jme3/texture/Texture2D;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 194
    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getType()Lcom/jme3/texture/Texture$Type;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    return-object v0
.end method

.method public getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;
    .locals 3
    .parameter "axis"

    .prologue
    .line 169
    sget-object v0, Lcom/jme3/texture/Texture2D$1;->$SwitchMap$com$jme3$texture$Texture$WrapAxis:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture$WrapAxis;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid WrapAxis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/jme3/texture/Texture2D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 173
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/jme3/texture/Texture2D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-super {p0}, Lcom/jme3/texture/Texture;->hashCode()I

    move-result v0

    .line 200
    .local v0, hash:I
    mul-int/lit8 v3, v0, 0x4f

    iget-object v1, p0, Lcom/jme3/texture/Texture2D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/texture/Texture2D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 201
    mul-int/lit8 v1, v0, 0x4f

    iget-object v3, p0, Lcom/jme3/texture/Texture2D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/jme3/texture/Texture2D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v2}, Lcom/jme3/texture/Texture$WrapMode;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 202
    return v0

    :cond_1
    move v1, v2

    .line 200
    goto :goto_0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->read(Lcom/jme3/export/JmeImporter;)V

    .line 216
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 217
    const-string v0, "wrapS"

    const-class v2, Lcom/jme3/texture/Texture$WrapMode;

    sget-object v3, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture2D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 218
    const-string v0, "wrapT"

    const-class v2, Lcom/jme3/texture/Texture$WrapMode;

    sget-object v3, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture2D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    .line 219
    return-void
.end method

.method public setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V
    .locals 2
    .parameter "axis"
    .parameter "mode"

    .prologue
    .line 125
    if-nez p2, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    if-nez p1, :cond_1

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "axis can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    sget-object v0, Lcom/jme3/texture/Texture2D$1;->$SwitchMap$com$jme3$texture$Texture$WrapAxis:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture$WrapAxis;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not applicable for 2D textures"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_0
    iput-object p2, p0, Lcom/jme3/texture/Texture2D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 140
    :goto_0
    return-void

    .line 135
    :pswitch_1
    iput-object p2, p0, Lcom/jme3/texture/Texture2D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setWrap(Lcom/jme3/texture/Texture$WrapMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/jme3/texture/Texture2D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 155
    iput-object p1, p0, Lcom/jme3/texture/Texture2D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    .line 156
    return-void
.end method
