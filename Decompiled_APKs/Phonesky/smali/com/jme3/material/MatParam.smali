.class public Lcom/jme3/material/MatParam;
.super Ljava/lang/Object;
.source "MatParam.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/material/MatParam$1;
    }
.end annotation


# instance fields
.field protected ffBinding:Lcom/jme3/material/FixedFuncBinding;

.field protected name:Ljava/lang/String;

.field protected prefixedName:Ljava/lang/String;

.field protected type:Lcom/jme3/shader/VarType;

.field protected value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;Lcom/jme3/material/FixedFuncBinding;)V
    .locals 2
    .parameter "type"
    .parameter "name"
    .parameter "value"
    .parameter "ffBinding"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/jme3/material/MatParam;->type:Lcom/jme3/shader/VarType;

    .line 63
    iput-object p2, p0, Lcom/jme3/material/MatParam;->name:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/MatParam;->prefixedName:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    .line 66
    iput-object p4, p0, Lcom/jme3/material/MatParam;->ffBinding:Lcom/jme3/material/FixedFuncBinding;

    .line 67
    return-void
.end method


# virtual methods
.method apply(Lcom/jme3/renderer/Renderer;Lcom/jme3/material/Technique;)V
    .locals 5
    .parameter "r"
    .parameter "technique"

    .prologue
    .line 145
    invoke-virtual {p2}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v0

    .line 146
    .local v0, techDef:Lcom/jme3/material/TechniqueDef;
    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->isUsingShaders()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/jme3/material/MatParam;->getPrefixedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/jme3/material/Technique;->updateUniformParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;Z)V

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/jme3/material/MatParam;->ffBinding:Lcom/jme3/material/FixedFuncBinding;

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/jme3/renderer/GL1Renderer;

    if-eqz v1, :cond_1

    .line 150
    check-cast p1, Lcom/jme3/renderer/GL1Renderer;

    .end local p1
    iget-object v1, p0, Lcom/jme3/material/MatParam;->ffBinding:Lcom/jme3/material/FixedFuncBinding;

    invoke-virtual {p0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/jme3/renderer/GL1Renderer;->setFixedFuncBinding(Lcom/jme3/material/FixedFuncBinding;Ljava/lang/Object;)V

    .line 152
    :cond_1
    return-void
.end method

.method public clone()Lcom/jme3/material/MatParam;
    .locals 3

    .prologue
    .line 282
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MatParam;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .local v1, param:Lcom/jme3/material/MatParam;
    return-object v1

    .line 284
    .end local v1           #param:Lcom/jme3/material/MatParam;
    :catch_0
    move-exception v0

    .line 285
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
    .line 50
    invoke-virtual {p0}, Lcom/jme3/material/MatParam;->clone()Lcom/jme3/material/MatParam;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 332
    instance-of v2, p1, Lcom/jme3/material/MatParam;

    if-nez v2, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 336
    check-cast v0, Lcom/jme3/material/MatParam;

    .line 337
    .local v0, otherParam:Lcom/jme3/material/MatParam;
    iget-object v2, v0, Lcom/jme3/material/MatParam;->type:Lcom/jme3/shader/VarType;

    iget-object v3, p0, Lcom/jme3/material/MatParam;->type:Lcom/jme3/shader/VarType;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/jme3/material/MatParam;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/jme3/material/MatParam;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getFixedFuncBinding()Lcom/jme3/material/FixedFuncBinding;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jme3/material/MatParam;->ffBinding:Lcom/jme3/material/FixedFuncBinding;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jme3/material/MatParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jme3/material/MatParam;->prefixedName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 168
    sget-object v8, Lcom/jme3/material/MatParam$1;->$SwitchMap$com$jme3$shader$VarType:[I

    iget-object v9, p0, Lcom/jme3/material/MatParam;->type:Lcom/jme3/shader/VarType;

    invoke-virtual {v9}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 275
    const/4 v8, 0x0

    :goto_0
    return-object v8

    .line 172
    :pswitch_0
    iget-object v8, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v5, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    check-cast v5, Lcom/jme3/math/Vector2f;

    .line 175
    .local v5, v2:Lcom/jme3/math/Vector2f;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/jme3/math/Vector2f;->getX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/jme3/math/Vector2f;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 189
    .end local v5           #v2:Lcom/jme3/math/Vector2f;
    :pswitch_2
    iget-object v6, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    check-cast v6, Lcom/jme3/math/Vector3f;

    .line 190
    .local v6, v3:Lcom/jme3/math/Vector3f;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 239
    .end local v6           #v3:Lcom/jme3/math/Vector3f;
    :pswitch_3
    iget-object v8, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    instance-of v8, v8, Lcom/jme3/math/Vector4f;

    if-eqz v8, :cond_0

    .line 240
    iget-object v7, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    check-cast v7, Lcom/jme3/math/Vector4f;

    .line 241
    .local v7, v4:Lcom/jme3/math/Vector4f;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/jme3/math/Vector4f;->getW()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 243
    .end local v7           #v4:Lcom/jme3/math/Vector4f;
    :cond_0
    iget-object v8, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    instance-of v8, v8, Lcom/jme3/math/ColorRGBA;

    if-eqz v8, :cond_1

    .line 244
    iget-object v0, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    check-cast v0, Lcom/jme3/math/ColorRGBA;

    .line 245
    .local v0, color:Lcom/jme3/math/ColorRGBA;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/jme3/math/ColorRGBA;->getRed()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/jme3/math/ColorRGBA;->getGreen()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/jme3/math/ColorRGBA;->getBlue()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/jme3/math/ColorRGBA;->getAlpha()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 247
    .end local v0           #color:Lcom/jme3/math/ColorRGBA;
    :cond_1
    iget-object v8, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    instance-of v8, v8, Lcom/jme3/math/Quaternion;

    if-eqz v8, :cond_2

    .line 248
    iget-object v1, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    check-cast v1, Lcom/jme3/math/Quaternion;

    .line 249
    .local v1, quat:Lcom/jme3/math/Quaternion;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 252
    .end local v1           #quat:Lcom/jme3/math/Quaternion;
    :cond_2
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected Vector4 type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 259
    :pswitch_4
    iget-object v4, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    check-cast v4, Lcom/jme3/texture/Texture;

    .line 260
    .local v4, texVal:Lcom/jme3/texture/Texture;
    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v3

    check-cast v3, Lcom/jme3/asset/TextureKey;

    .line 261
    .local v3, texKey:Lcom/jme3/asset/TextureKey;
    if-nez v3, :cond_3

    .line 262
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "The specified MatParam cannot be represented in J3M"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 265
    :cond_3
    const-string v2, ""

    .line 266
    .local v2, ret:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 267
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Flip "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    :cond_4
    sget-object v8, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v4, v8}, Lcom/jme3/texture/Texture;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v8

    sget-object v9, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    if-ne v8, v9, :cond_5

    .line 270
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Repeat "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/jme3/asset/TextureKey;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getVarType()Lcom/jme3/shader/VarType;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jme3/material/MatParam;->type:Lcom/jme3/shader/VarType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 343
    const/4 v0, 0x5

    .line 344
    .local v0, hash:I
    iget-object v1, p0, Lcom/jme3/material/MatParam;->type:Lcom/jme3/shader/VarType;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/material/MatParam;->type:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit8 v0, v1, 0x55

    .line 345
    mul-int/lit8 v1, v0, 0x11

    iget-object v3, p0, Lcom/jme3/material/MatParam;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/jme3/material/MatParam;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 346
    return v0

    :cond_1
    move v1, v2

    .line 344
    goto :goto_0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 310
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 311
    const-string v0, "varType"

    const-class v2, Lcom/jme3/shader/VarType;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/VarType;

    iput-object v0, p0, Lcom/jme3/material/MatParam;->type:Lcom/jme3/shader/VarType;

    .line 312
    const-string v0, "name"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/MatParam;->name:Ljava/lang/String;

    .line 313
    const-string v0, "ff_binding"

    const-class v2, Lcom/jme3/material/FixedFuncBinding;

    invoke-interface {v1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/FixedFuncBinding;

    iput-object v0, p0, Lcom/jme3/material/MatParam;->ffBinding:Lcom/jme3/material/FixedFuncBinding;

    .line 314
    sget-object v0, Lcom/jme3/material/MatParam$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {p0}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 325
    const-string v0, "value_savable"

    invoke-interface {v1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    .line 328
    :goto_0
    return-void

    .line 316
    :pswitch_0
    const-string v0, "value_bool"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    goto :goto_0

    .line 319
    :pswitch_1
    const-string v0, "value_float"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    goto :goto_0

    .line 322
    :pswitch_2
    const-string v0, "value_int"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/jme3/material/MatParam;->name:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/MatParam;->prefixedName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/material/MatParam;->type:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/material/MatParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/material/MatParam;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
