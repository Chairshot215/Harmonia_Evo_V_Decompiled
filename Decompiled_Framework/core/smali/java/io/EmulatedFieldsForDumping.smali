.class Ljava/io/EmulatedFieldsForDumping;
.super Ljava/io/ObjectOutputStream$PutField;
.source "EmulatedFieldsForDumping.java"


# instance fields
.field private emulatedFields:Ljava/io/EmulatedFields;

.field private final oos:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor <init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V
    .locals 3

    invoke-direct {p0}, Ljava/io/ObjectOutputStream$PutField;-><init>()V

    iput-object p1, p0, Ljava/io/EmulatedFieldsForDumping;->oos:Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/EmulatedFields;

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/io/ObjectStreamField;

    invoke-direct {v1, v2, v0}, Ljava/io/EmulatedFields;-><init>([Ljava/io/ObjectStreamField;[Ljava/io/ObjectStreamField;)V

    iput-object v1, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    return-void
.end method


# virtual methods
.method emulatedFields()Ljava/io/EmulatedFields;
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    return-object v0
.end method

.method public put(Ljava/lang/String;B)V
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;B)V

    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;C)V

    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;F)V

    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;S)V

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v0, p1, p2}, Ljava/io/EmulatedFields;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public write(Ljava/io/ObjectOutput;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    iget-object v6, p0, Ljava/io/EmulatedFieldsForDumping;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Attempting to write to a different stream than the one that created this PutField"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p0, Ljava/io/EmulatedFieldsForDumping;->emulatedFields:Ljava/io/EmulatedFields;

    invoke-virtual {v6}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_11

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/EmulatedFields$ObjectSlot;->getFieldValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/EmulatedFields$ObjectSlot;->getField()Ljava/io/ObjectStreamField;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_2

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_4

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    :goto_3
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeByte(I)V

    goto :goto_2

    :cond_3
    move v6, v7

    goto :goto_3

    :cond_4
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_6

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v6

    :goto_4
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeChar(I)V

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_4

    :cond_6
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_8

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v6

    :goto_5
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeShort(I)V

    goto :goto_2

    :cond_7
    move v6, v7

    goto :goto_5

    :cond_8
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_a

    if-eqz v1, :cond_9

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_6
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    goto :goto_2

    :cond_9
    move v6, v7

    goto :goto_6

    :cond_a
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_c

    if-eqz v1, :cond_b

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_7
    invoke-interface {p1, v8, v9}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_2

    :cond_b
    const-wide/16 v8, 0x0

    goto :goto_7

    :cond_c
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_e

    if-eqz v1, :cond_d

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :goto_8
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeFloat(F)V

    goto :goto_2

    :cond_d
    const/4 v6, 0x0

    goto :goto_8

    :cond_e
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_10

    if-eqz v1, :cond_f

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :goto_9
    invoke-interface {p1, v8, v9}, Ljava/io/ObjectOutput;->writeDouble(D)V

    goto/16 :goto_2

    :cond_f
    const-wide/16 v8, 0x0

    goto :goto_9

    :cond_10
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_11
    return-void
.end method
