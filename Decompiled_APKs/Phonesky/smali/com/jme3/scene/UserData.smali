.class public final Lcom/jme3/scene/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected type:B

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/jme3/scene/UserData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/scene/UserData;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(BLjava/lang/Object;)V
    .locals 1
    .parameter "type"
    .parameter "value"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-boolean v0, Lcom/jme3/scene/UserData;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_1
    iput-byte p1, p0, Lcom/jme3/scene/UserData;->type:B

    .line 74
    iput-object p2, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public static getObjectType(Ljava/lang/Object;)B
    .locals 3
    .parameter "type"

    .prologue
    .line 87
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 89
    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 92
    const/4 v0, 0x2

    goto :goto_0

    .line 93
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 94
    const/4 v0, 0x3

    goto :goto_0

    .line 95
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 96
    const/4 v0, 0x4

    goto :goto_0

    .line 98
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 134
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "type"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readByte(Ljava/lang/String;B)B

    move-result v1

    iput-byte v1, p0, Lcom/jme3/scene/UserData;->type:B

    .line 136
    iget-byte v1, p0, Lcom/jme3/scene/UserData;->type:B

    packed-switch v1, :pswitch_data_0

    .line 153
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 138
    :pswitch_0
    const-string v1, "intVal"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    .line 155
    :goto_0
    return-void

    .line 141
    :pswitch_1
    const-string v1, "floatVal"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    goto :goto_0

    .line 144
    :pswitch_2
    const-string v1, "boolVal"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    goto :goto_0

    .line 147
    :pswitch_3
    const-string v1, "strVal"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    goto :goto_0

    .line 150
    :pswitch_4
    const-string v1, "longVal"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jme3/scene/UserData;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
