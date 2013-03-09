.class public Ljava/io/ObjectOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectOutputStream$PutField;
    }
.end annotation


# static fields
.field private static final NOT_SC_BLOCK_DATA:B = -0x9t

.field private static final WRITE_UNSHARED_PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentHandle:I

.field private currentObject:Ljava/lang/Object;

.field private currentPutField:Ljava/io/EmulatedFieldsForDumping;

.field private enableReplace:Z

.field private nestedException:Ljava/io/StreamCorruptedException;

.field private nestedLevels:I

.field private objectsWritten:Ljava/io/SerializationHandleMap;

.field private output:Ljava/io/DataOutputStream;

.field private primitiveTypes:Ljava/io/DataOutputStream;

.field private primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

.field private protocolVersion:I

.field private final proxyClassDesc:Ljava/io/ObjectStreamClass;

.field private subclassOverridingImplementation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    sput-object v0, Ljava/io/ObjectOutputStream;->WRITE_UNSHARED_PARAM_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-class v0, Ljava/lang/reflect/Proxy;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-class v0, Ljava/lang/reflect/Proxy;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataOutputStream;

    :goto_0
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    const/4 v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->writeStreamHeader()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    return-void

    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private checkWritePrimitiveTypes()V
    .locals 2

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    :cond_0
    return-void
.end method

.method private computePutField()V
    .locals 2

    new-instance v0, Ljava/io/EmulatedFieldsForDumping;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {v0, p0, v1}, Ljava/io/EmulatedFieldsForDumping;-><init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    return-void
.end method

.method private dumpCycle(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v2, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeCyclicReference(I)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static native getFieldL(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private nextHandle()I
    .locals 2

    iget v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    return v0
.end method

.method private registerObjectWritten(Ljava/lang/Object;)I
    .locals 2

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v0

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v1, p1, v0}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    return v0
.end method

.method private removeUnsharedReference(Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0, p1, p2}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0, p1}, Ljava/io/SerializationHandleMap;->remove(Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private resetSeenObjects()V
    .locals 1

    new-instance v0, Ljava/io/SerializationHandleMap;

    invoke-direct {v0}, Ljava/io/SerializationHandleMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    const/high16 v0, 0x7e

    iput v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    return-void
.end method

.method private resetState()V
    .locals 1

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    return-void
.end method

.method private writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x78

    const/4 v5, -0x1

    if-nez p1, :cond_1

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    move v1, v5

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v1

    :cond_2
    if-ne v1, v5, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v4, -0x1

    if-eqz p2, :cond_3

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v5, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v4

    :cond_3
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateProxyClass(Ljava/lang/Class;)V

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v6, 0x72

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v5, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    const/4 v5, 0x0

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    goto :goto_2
.end method

.method private writeCyclicReference(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method private writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Z)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x12

    invoke-virtual {p2, v6}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    const/4 v2, -0x1

    if-eqz p3, :cond_0

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v4, p2}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v2

    :cond_0
    const/4 v1, -0x1

    if-nez p3, :cond_1

    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v1

    :cond_1
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v4, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v6}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4, v3, p3}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    :goto_1
    if-eqz p3, :cond_2

    invoke-direct {p0, p2, v2}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    :cond_2
    return-object p2

    :cond_3
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {p0, p2}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    const/4 v4, 0x0

    iput-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x70

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_1
.end method

.method private writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    sget-object v6, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    if-eq v4, v6, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    array-length v1, v2

    :cond_0
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v0, v2, v3

    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v6}, Ljava/io/ObjectStreamField;->writeField(Ljava/io/DataOutputStream;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForDumping;->emulatedFields()Ljava/io/EmulatedFields;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_10

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/io/EmulatedFields$ObjectSlot;->getFieldValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/EmulatedFields$ObjectSlot;->getField()Ljava/io/ObjectStreamField;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v7, v8

    goto :goto_1

    :cond_1
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    :goto_3
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_2

    :cond_2
    move v7, v8

    goto :goto_3

    :cond_3
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v7

    :goto_4
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_2

    :cond_4
    move v7, v8

    goto :goto_4

    :cond_5
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_7

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_6

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v7

    :goto_5
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_2

    :cond_6
    move v7, v8

    goto :goto_5

    :cond_7
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_9

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_6
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_2

    :cond_8
    move v7, v8

    goto :goto_6

    :cond_9
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_b

    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_a

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_7
    invoke-virtual {v7, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_2

    :cond_a
    const-wide/16 v9, 0x0

    goto :goto_7

    :cond_b
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_d

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_c

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    :goto_8
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_2

    :cond_c
    const/4 v7, 0x0

    goto :goto_8

    :cond_d
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_f

    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    :goto_9
    invoke-virtual {v7, v9, v10}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto/16 :goto_2

    :cond_e
    const-wide/16 v9, 0x0

    goto :goto_9

    :cond_f
    invoke-virtual {p0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_10
    return-void
.end method

.method private writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_a

    aget-object v2, v0, v3

    :try_start_0
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p2, v2}, Ljava/io/ObjectStreamClass;->getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v9, Ljava/io/InvalidClassException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " doesn\'t have a field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v4

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    :cond_0
    :try_start_1
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_1

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_2

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeChar(I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    :try_start_2
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_3

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_1

    :cond_3
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_4

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    :cond_4
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_5

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    :cond_5
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_6

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1

    :cond_6
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_7

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    :cond_7
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_8

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_1

    :cond_8
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream;->writeUnshared(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method private writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    const/4 v10, 0x0

    if-nez p1, :cond_0

    new-instance v8, Ljava/io/NotActiveException;

    invoke-direct {v8}, Ljava/io/NotActiveException;-><init>()V

    throw v8

    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getHierarchy()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v5, v1, :cond_5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/ObjectStreamClass;

    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->hasMethodWriteObject()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getMethodWriteObject()Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    const/4 v8, 0x1

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v9, 0x78

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_2

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v8

    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    throw v8

    :cond_2
    :try_start_4
    instance-of v8, v2, Ljava/lang/Error;

    if-eqz v8, :cond_3

    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_3
    check-cast v2, Ljava/io/IOException;

    throw v2

    :catch_1
    move-exception v0

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_5
    return-void
.end method

.method private writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Ljava/lang/Class;Z)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v13, 0x75

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v12}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v6

    if-nez p5, :cond_0

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v6}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_1

    check-cast p1, [I

    move-object/from16 v8, p1

    check-cast v8, [I

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v8

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v7, 0x0

    :goto_0
    array-length v12, v8

    if-ge v7, v12, :cond_2

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget v13, v8, v7

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_3

    check-cast p1, [B

    move-object/from16 v2, p1

    check-cast v2, [B

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v2

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v13, 0x0

    array-length v14, v2

    invoke-virtual {v12, v2, v13, v14}, Ljava/io/DataOutputStream;->write([BII)V

    :cond_2
    return v6

    :cond_3
    sget-object v12, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_4

    check-cast p1, [C

    move-object/from16 v3, p1

    check-cast v3, [C

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v3

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v7, 0x0

    :goto_1
    array-length v12, v3

    if-ge v7, v12, :cond_2

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-char v13, v3, v7

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_5

    check-cast p1, [S

    move-object/from16 v11, p1

    check-cast v11, [S

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v11

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v7, 0x0

    :goto_2
    array-length v12, v11

    if-ge v7, v12, :cond_2

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-short v13, v11, v7

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_6

    check-cast p1, [Z

    move-object/from16 v1, p1

    check-cast v1, [Z

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v1

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v7, 0x0

    :goto_3
    array-length v12, v1

    if-ge v7, v12, :cond_2

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-boolean v13, v1, v7

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_7

    check-cast p1, [J

    move-object/from16 v9, p1

    check-cast v9, [J

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v9

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v7, 0x0

    :goto_4
    array-length v12, v9

    if-ge v7, v12, :cond_2

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-wide v13, v9, v7

    invoke-virtual {v12, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_8

    check-cast p1, [F

    move-object/from16 v5, p1

    check-cast v5, [F

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v7, 0x0

    :goto_5
    array-length v12, v5

    if-ge v7, v12, :cond_2

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget v13, v5, v7

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_9

    check-cast p1, [D

    move-object/from16 v4, p1

    check-cast v4, [D

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v4

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v7, 0x0

    :goto_6
    array-length v12, v4

    if-ge v7, v12, :cond_2

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    aget-wide v13, v4, v7

    invoke-virtual {v12, v13, v14}, Ljava/io/DataOutputStream;->writeDouble(D)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    new-instance v12, Ljava/io/InvalidClassException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Wrong base type in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_a
    check-cast p1, [Ljava/lang/Object;

    move-object/from16 v10, p1

    check-cast v10, [Ljava/lang/Object;

    iget-object v12, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v7, 0x0

    :goto_7
    array-length v12, v10

    if-ge v7, v12, :cond_2

    aget-object v12, v10, v7

    invoke-virtual {p0, v12}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7
.end method

.method private writeNewClass(Ljava/lang/Class;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v3, 0x76

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0, p2}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    :goto_0
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v1

    if-nez p2, :cond_0

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v2, p1, v1}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0, v0, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    goto :goto_0
.end method

.method private writeNewClassDesc(Ljava/io/ObjectStreamClass;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v1

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v2, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    and-int/lit8 v2, v1, -0x9

    int-to-byte v1, v2

    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x12

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V

    :goto_1
    return-void

    :cond_1
    or-int/lit8 v2, v1, 0x8

    int-to-byte v1, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1
.end method

.method private writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    iget-object v5, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    const/4 v9, 0x0

    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v10, 0x7e

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    const/4 v6, -0x1

    if-eqz p3, :cond_1

    iget-object v9, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v9, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v6

    :cond_1
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v9, v2

    if-le v9, v11, :cond_4

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v9

    aget-object v10, v2, v11

    invoke-virtual {v9, v10}, Ljava/io/ObjectStreamClass;->getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v9, Ljava/lang/NoSuchFieldError;

    invoke-direct {v9}, Ljava/lang/NoSuchFieldError;-><init>()V

    throw v9

    :cond_2
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, -0x1

    if-nez p3, :cond_3

    invoke-direct {p0, v7}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v8

    :cond_3
    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    invoke-direct {p0, v7, p3}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    if-eqz p3, :cond_5

    invoke-direct {p0, p1, v6}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    :cond_5
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    return v3

    :catch_0
    move-exception v4

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9
.end method

.method private writeNewException(Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    invoke-direct {p0, p1, v2, v2, v2}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    return-void
.end method

.method private writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v1

    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v6

    if-nez v1, :cond_0

    if-nez v6, :cond_0

    new-instance v7, Ljava/io/NotSerializableException;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v8, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v9, 0x73

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-direct {p0, p3, v7}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    const/4 v5, -0x1

    if-eqz p4, :cond_1

    iget-object v8, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v8, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    move-result v5

    :cond_1
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    move-result v2

    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    iput-object p3, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    if-eqz v1, :cond_7

    :try_start_0
    iget v8, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    if-ne v8, v3, :cond_4

    :goto_0
    if-eqz v3, :cond_2

    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/io/Externalizable;

    move-object v7, v0

    invoke-interface {v7, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    if-eqz v3, :cond_5

    const/4 v7, 0x0

    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz p4, :cond_3

    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    :cond_3
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    return v2

    :cond_4
    move v3, v7

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz p4, :cond_6

    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    :cond_6
    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    iput-object v10, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    throw v7

    :cond_7
    :try_start_2
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, p1, v7}, Ljava/io/ObjectOutputStream;->writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private writeNewString(Ljava/lang/String;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {p1, v8}, Ljava/nio/charset/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v1

    const/4 v4, 0x0

    const-wide/32 v6, 0xffff

    cmp-long v6, v1, v6

    if-gtz v6, :cond_1

    long-to-int v6, v1

    add-int/lit8 v6, v6, 0x3

    new-array v0, v6, [B

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x74

    aput-byte v6, v0, v4

    long-to-int v6, v1

    int-to-short v6, v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v6, v7}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    add-int/lit8 v4, v5, 0x2

    :goto_0
    invoke-static {v0, v4, p1}, Ljava/nio/charset/ModifiedUtf8;->encode([BILjava/lang/String;)V

    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    array-length v7, v0

    invoke-virtual {v6, v0, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    move-result v3

    if-nez p2, :cond_0

    iget-object v6, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v6, p1, v3}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    :cond_0
    return v3

    :cond_1
    long-to-int v6, v1

    add-int/lit8 v6, v6, 0x9

    new-array v0, v6, [B

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x7c

    aput-byte v6, v0, v4

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v1, v2, v6}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    add-int/lit8 v4, v5, 0x8

    goto :goto_0
.end method

.method private writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method private writeObject(Ljava/lang/Object;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    if-ne v3, v4, :cond_2

    :goto_0
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    :cond_0
    iget-boolean v3, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    if-eqz v3, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObjectOverride(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v3, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    if-eqz v2, :cond_1

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    iput-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget v3, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    if-nez v3, :cond_4

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    if-eq v0, v3, :cond_4

    :try_start_1
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeNewException(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    throw v0

    :catch_1
    move-exception v1

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    invoke-virtual {v3}, Ljava/io/StreamCorruptedException;->fillInStackTrace()Ljava/lang/Throwable;

    iget-object v3, p0, Ljava/io/ObjectOutputStream;->nestedException:Ljava/io/StreamCorruptedException;

    throw v3
.end method

.method private writeObjectInternal(Ljava/lang/Object;ZZZ)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    const/4 v14, -0x1

    :goto_0
    return v14

    :cond_0
    const/4 v9, -0x1

    if-nez p2, :cond_1

    invoke-direct/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    move-result v9

    const/4 v3, -0x1

    if-eq v9, v3, :cond_1

    move v14, v9

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v6

    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-eqz v3, :cond_2

    if-nez p4, :cond_4

    :cond_2
    sget-object v3, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_3

    check-cast p1, Ljava/lang/Class;

    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v3, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_4

    check-cast p1, Ljava/io/ObjectStreamClass;

    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p3, :cond_8

    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->hasMethodWriteReplace()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->getMethodWriteReplace()Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    const/4 v13, 0x0

    const/4 v3, 0x0

    :try_start_3
    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v13

    :goto_1
    move-object/from16 v0, p1

    if-eq v13, v0, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v13, v3, v4, v1}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    move-result v14

    const/4 v3, -0x1

    if-eq v14, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v14}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    :catch_0
    move-exception v10

    move-object/from16 v13, p1

    goto :goto_1

    :catch_1
    move-exception v11

    :try_start_5
    invoke-virtual {v11}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v3, v0, Ljava/io/ObjectStreamException;

    if-eqz v3, :cond_6

    check-cast v16, Ljava/io/ObjectStreamException;

    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    throw v3

    :cond_6
    :try_start_6
    move-object/from16 v0, v16

    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_7

    check-cast v16, Ljava/lang/Error;

    throw v16

    :cond_7
    check-cast v16, Ljava/lang/RuntimeException;

    throw v16

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-eqz v3, :cond_a

    if-eqz p4, :cond_a

    invoke-virtual/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p1

    if-eq v15, v0, :cond_a

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v15, v3, v1, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    move-result v14

    const/4 v3, -0x1

    if-eq v14, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v14}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    :cond_a
    :try_start_7
    sget-object v3, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_b

    check-cast p1, Ljava/lang/Class;

    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    :cond_b
    :try_start_8
    sget-object v3, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_c

    check-cast p1, Ljava/io/ObjectStreamClass;

    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    :cond_c
    :try_start_9
    sget-object v3, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    if-ne v5, v3, :cond_d

    check-cast p1, Ljava/lang/String;

    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    :cond_d
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Ljava/io/ObjectOutputStream;->writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Ljava/lang/Class;Z)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    :cond_e
    :try_start_b
    move-object/from16 v0, p1

    instance-of v3, v0, Ljava/lang/Enum;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v2}, Ljava/io/ObjectOutputStream;->writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0

    :cond_f
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v5, v6, v2}, Ljava/io/ObjectOutputStream;->writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected annotateClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected annotateProxyClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->flush()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method public defaultWriteObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    return-void
.end method

.method protected drain()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v3, 0x400

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_4

    array-length v4, v2

    sub-int/2addr v4, v0

    if-le v4, v3, :cond_2

    move v1, v3

    :goto_2
    const/16 v4, 0x100

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x77

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    int-to-byte v5, v1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_3
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v2, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    array-length v4, v2

    sub-int v1, v4, v0

    goto :goto_2

    :cond_3
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v5, 0x7a

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_3

    :cond_4
    iput-object v6, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    iput-object v6, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    goto :goto_0
.end method

.method protected enableReplaceObject(Z)Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    iput-boolean p1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    return v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public putFields()Ljava/io/ObjectOutputStream$PutField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    if-nez v0, :cond_1

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->computePutField()V

    :cond_1
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    return-object v0
.end method

.method protected replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    return-void
.end method

.method public useProtocolVersion(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    invoke-virtual {v0}, Ljava/io/SerializationHandleMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set protocol version when stream in use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method public writeChar(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    return-void
.end method

.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    return-void
.end method

.method public writeFields()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected writeObjectOverride(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method protected writeStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/16 v1, -0x5313

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public writeUnshared(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    return-void
.end method
