.class Ljava/io/EmulatedFields;
.super Ljava/lang/Object;
.source "EmulatedFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/EmulatedFields$ObjectSlot;
    }
.end annotation


# instance fields
.field private declaredFields:[Ljava/io/ObjectStreamField;

.field private slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;


# direct methods
.method public constructor <init>([Ljava/io/ObjectStreamField;[Ljava/io/ObjectStreamField;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Ljava/io/EmulatedFields;->buildSlots([Ljava/io/ObjectStreamField;)V

    iput-object p2, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method private buildSlots([Ljava/io/ObjectStreamField;)V
    .locals 3

    array-length v2, p1

    new-array v2, v2, [Ljava/io/EmulatedFields$ObjectSlot;

    iput-object v2, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    new-instance v1, Ljava/io/EmulatedFields$ObjectSlot;

    invoke-direct {v1}, Ljava/io/EmulatedFields$ObjectSlot;-><init>()V

    iget-object v2, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    aput-object v1, v2, v0

    aget-object v2, p1, v0

    iput-object v2, v1, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/EmulatedFields$ObjectSlot;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method private findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/EmulatedFields$ObjectSlot;"
        }
    .end annotation

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    aget-object v3, v5, v1

    iget-object v5, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_2

    iget-object v5, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p2, :cond_3

    :cond_0
    :goto_2
    return-object v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    iget-object v5, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    if-eqz v5, :cond_8

    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Ljava/io/EmulatedFields;->declaredFields:[Ljava/io/ObjectStreamField;

    aget-object v0, v5, v1

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne p2, v5, :cond_7

    :cond_5
    new-instance v3, Ljava/io/EmulatedFields$ObjectSlot;

    invoke-direct {v3}, Ljava/io/EmulatedFields$ObjectSlot;-><init>()V

    iput-object v0, v3, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    iput-boolean v4, v3, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findSlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return v1
.end method

.method public get(Ljava/lang/String;B)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    :goto_0
    return p2

    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;C)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    :goto_0
    return p2

    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;F)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    :goto_0
    return p2

    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    :goto_0
    return p2

    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object p2, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(Ljava/lang/String;S)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    :goto_0
    return p2

    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result p2

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    iget-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    if-eqz v1, :cond_0

    :goto_0
    return p2

    :cond_0
    iget-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public put(Ljava/lang/String;B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :cond_0
    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    iput-object p2, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/EmulatedFields;->findMandatorySlot(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    return-void
.end method

.method public slots()[Ljava/io/EmulatedFields$ObjectSlot;
    .locals 1

    iget-object v0, p0, Ljava/io/EmulatedFields;->slotsToSerialize:[Ljava/io/EmulatedFields$ObjectSlot;

    return-object v0
.end method
