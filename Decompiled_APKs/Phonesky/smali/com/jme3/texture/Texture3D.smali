.class public Lcom/jme3/texture/Texture3D;
.super Lcom/jme3/texture/Texture;
.source "Texture3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/Texture3D$1;
    }
.end annotation


# instance fields
.field private wrapR:Lcom/jme3/texture/Texture$WrapMode;

.field private wrapS:Lcom/jme3/texture/Texture$WrapMode;

.field private wrapT:Lcom/jme3/texture/Texture$WrapMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/jme3/texture/Texture;-><init>()V

    .line 45
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture3D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 46
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture3D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    .line 47
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture3D;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    .line 54
    return-void
.end method


# virtual methods
.method public createSimpleClone()Lcom/jme3/texture/Texture;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/jme3/texture/Texture3D;

    invoke-direct {v0}, Lcom/jme3/texture/Texture3D;-><init>()V

    .line 103
    .local v0, clone:Lcom/jme3/texture/Texture3D;
    invoke-virtual {p0, v0}, Lcom/jme3/texture/Texture3D;->createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;

    .line 104
    return-object v0
.end method

.method public createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;
    .locals 2
    .parameter "rVal"

    .prologue
    .line 109
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    iget-object v1, p0, Lcom/jme3/texture/Texture3D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V

    .line 110
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    iget-object v1, p0, Lcom/jme3/texture/Texture3D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V

    .line 111
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->R:Lcom/jme3/texture/Texture$WrapAxis;

    iget-object v1, p0, Lcom/jme3/texture/Texture3D;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V

    .line 112
    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 191
    instance-of v2, p1, Lcom/jme3/texture/Texture3D;

    if-nez v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 194
    check-cast v0, Lcom/jme3/texture/Texture3D;

    .line 195
    .local v0, that:Lcom/jme3/texture/Texture3D;
    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/jme3/texture/Texture3D;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v2

    sget-object v3, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v0, v3}, Lcom/jme3/texture/Texture3D;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 198
    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/jme3/texture/Texture3D;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v2

    sget-object v3, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v0, v3}, Lcom/jme3/texture/Texture3D;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 201
    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->R:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/jme3/texture/Texture3D;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v2

    sget-object v3, Lcom/jme3/texture/Texture$WrapAxis;->R:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v0, v3}, Lcom/jme3/texture/Texture3D;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 204
    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getType()Lcom/jme3/texture/Texture$Type;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    return-object v0
.end method

.method public getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;
    .locals 3
    .parameter "axis"

    .prologue
    .line 173
    sget-object v0, Lcom/jme3/texture/Texture3D$1;->$SwitchMap$com$jme3$texture$Texture$WrapAxis:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture$WrapAxis;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 181
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

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/jme3/texture/Texture3D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 179
    :goto_0
    return-object v0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/jme3/texture/Texture3D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lcom/jme3/texture/Texture3D;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 218
    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->read(Lcom/jme3/export/JmeImporter;)V

    .line 219
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 220
    const-string v0, "wrapS"

    const-class v2, Lcom/jme3/texture/Texture$WrapMode;

    sget-object v3, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture3D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 221
    const-string v0, "wrapT"

    const-class v2, Lcom/jme3/texture/Texture$WrapMode;

    sget-object v3, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture3D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    .line 222
    const-string v0, "wrapR"

    const-class v2, Lcom/jme3/texture/Texture$WrapMode;

    sget-object v3, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture3D;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    .line 223
    return-void
.end method

.method public setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V
    .locals 2
    .parameter "axis"
    .parameter "mode"

    .prologue
    .line 127
    if-nez p2, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    if-nez p1, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "axis can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    sget-object v0, Lcom/jme3/texture/Texture3D$1;->$SwitchMap$com$jme3$texture$Texture$WrapAxis:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Texture$WrapAxis;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iput-object p2, p0, Lcom/jme3/texture/Texture3D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_0

    .line 137
    :pswitch_1
    iput-object p2, p0, Lcom/jme3/texture/Texture3D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_0

    .line 140
    :pswitch_2
    iput-object p2, p0, Lcom/jme3/texture/Texture3D;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setWrap(Lcom/jme3/texture/Texture$WrapMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/jme3/texture/Texture3D;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 158
    iput-object p1, p0, Lcom/jme3/texture/Texture3D;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    .line 159
    iput-object p1, p0, Lcom/jme3/texture/Texture3D;->wrapR:Lcom/jme3/texture/Texture$WrapMode;

    .line 160
    return-void
.end method
