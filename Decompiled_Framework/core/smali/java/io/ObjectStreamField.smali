.class public Ljava/io/ObjectStreamField;
.super Ljava/lang/Object;
.source "ObjectStreamField.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isDeserialized:Z

.field private name:Ljava/lang/String;

.field offset:I

.field private type:Ljava/lang/Object;

.field private typeString:Ljava/lang/String;

.field private unshared:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    iput-object p2, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    iput-boolean p3, p0, Ljava/io/ObjectStreamField;->unshared:Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p2, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/io/ObjectStreamField;->defaultResolve()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectStreamField;->isDeserialized:Z

    return-void
.end method

.method private defaultResolve()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_0

    :sswitch_7
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_0
        0x4a -> :sswitch_5
        0x53 -> :sswitch_3
        0x5a -> :sswitch_4
    .end sparse-switch
.end method

.method private typeCodeOf(Ljava/lang/Class;)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)C"
        }
    .end annotation

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x49

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x42

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const/16 v0, 0x43

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const/16 v0, 0x53

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    const/16 v0, 0x5a

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    const/16 v0, 0x4a

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    const/16 v0, 0x46

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    const/16 v0, 0x44

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5b

    goto :goto_0

    :cond_8
    const/16 v0, 0x4c

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    move-object v0, p1

    check-cast v0, Ljava/io/ObjectStreamField;

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v1

    if-eq v2, v1, :cond_1

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Ljava/io/ObjectStreamField;->offset:I

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    iget-boolean v1, p0, Ljava/io/ObjectStreamField;->isDeserialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    const-class v0, Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getTypeCode()C
    .locals 1

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ObjectStreamField;->typeCodeOf(Ljava/lang/Class;)C

    move-result v0

    return v0
.end method

.method getTypeInternal()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public isPrimitive()Z
    .locals 2

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUnshared()Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectStreamField;->unshared:Z

    return v0
.end method

.method resolve(Ljava/lang/ClassLoader;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_1

    invoke-direct {p0}, Ljava/io/ObjectStreamField;->defaultResolve()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Ljava/io/ObjectStreamField;->typeString:Ljava/lang/String;

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_1
    iput-object v0, p0, Ljava/io/ObjectStreamField;->type:Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1
.end method

.method protected setOffset(I)V
    .locals 0

    iput p1, p0, Ljava/io/ObjectStreamField;->offset:I

    return-void
.end method

.method setUnshared(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/io/ObjectStreamField;->unshared:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeField(Ljava/io/DataOutputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ObjectStreamField;->typeCodeOf(Ljava/lang/Class;)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v1, p0, Ljava/io/ObjectStreamField;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
