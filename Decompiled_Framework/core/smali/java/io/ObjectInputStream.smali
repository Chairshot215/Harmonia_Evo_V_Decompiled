.class public Ljava/io/ObjectInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$GetField;,
        Ljava/io/ObjectInputStream$InputValidationDesc;
    }
.end annotation


# static fields
.field private static final PRIMITIVE_CLASSES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final UNSHARED_OBJ:Ljava/lang/Object;

.field private static final bootstrapLoader:Ljava/lang/ClassLoader;

.field private static final systemLoader:Ljava/lang/ClassLoader;


# instance fields
.field private cachedSuperclasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private callerClassLoader:Ljava/lang/ClassLoader;

.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentObject:Ljava/lang/Object;

.field private descriptorHandle:I

.field private emptyStream:Ljava/io/InputStream;

.field private enableResolve:Z

.field private hasPushbackTC:Z

.field private input:Ljava/io/DataInputStream;

.field private mustResolve:Z

.field private nestedLevels:I

.field private nextHandle:I

.field private objectsRead:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private primitiveData:Ljava/io/InputStream;

.field private primitiveTypes:Ljava/io/DataInputStream;

.field private pushbackTC:B

.field private subclassOverridingImplementation:Z

.field private validations:[Ljava/io/ObjectInputStream$InputValidationDesc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectInputStream;->bootstrapLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectInputStream;->systemLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataInputStream;

    :goto_0
    iput-object p1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    iput v2, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    return-void

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private cacheSuperclassesFor(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private checkReadPrimitiveTypes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    :cond_1
    const/4 v0, 0x0

    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    :goto_1
    iget-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    int-to-byte v1, v0

    iput-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    goto :goto_1

    :pswitch_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    return-void
.end method

.method private corruptStream(B)Ljava/io/StreamCorruptedException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private discardData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v2, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    :goto_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    return-void

    :cond_0
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readContent(B)Ljava/lang/Object;

    goto :goto_0
.end method

.method private findStreamSuperclass(Ljava/lang/Class;Ljava/util/List;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;I)I"
        }
    .end annotation

    move v2, p3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/ObjectStreamClass;

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private static formatClassSig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    :goto_1
    const-string v2, "[L"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getClosestUserClassLoader()Ljava/lang/ClassLoader;
    .locals 7

    const/4 v6, -0x1

    invoke-static {v6}, Ldalvik/system/VMStack;->getClasses(I)[Ljava/lang/Class;

    move-result-object v5

    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v6, Ljava/io/ObjectInputStream;->bootstrapLoader:Ljava/lang/ClassLoader;

    if-eq v3, v6, :cond_0

    sget-object v6, Ljava/io/ObjectInputStream;->systemLoader:Ljava/lang/ClassLoader;

    if-eq v3, v6, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private missingClassDescriptor()Ljava/io/InvalidClassException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Read null attempting to read class descriptor for object"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextHandle()I
    .locals 2

    iget v0, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    return v0
.end method

.method private nextTC()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    :goto_0
    iget-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    return v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    goto :goto_0
.end method

.method private pushbackTC()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    return-void
.end method

.method private readBlockData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    return-object v0
.end method

.method private readBlockDataLong()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    return-object v0
.end method

.method private readClassDesc()Ljava/io/ObjectStreamClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v3

    throw v3

    :sswitch_0
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    :goto_0
    return-object v1

    :sswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewProxyClassDesc()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v1

    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v3

    invoke-direct {p0, v1, v3, v4}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/ObjectStreamClass;

    move-object v1, v3

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private readContent(B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v1

    throw v1

    :pswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    move-result-object v1

    :goto_0
    :pswitch_2
    return-object v1

    :pswitch_3
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    move-result-object v1

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_a
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    move-result-object v0

    new-instance v1, Ljava/io/WriteAbortedException;

    const-string v2, "Read an exception"

    invoke-direct {v1, v2, v0}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_2
        :pswitch_a
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_3
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method private readCyclicReference()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->registeredObjectRead(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readEnum(Z)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v5

    throw v5

    :pswitch_1
    if-eqz p1, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    new-instance v5, Ljava/io/InvalidObjectException;

    const-string v6, "Unshared read of back reference"

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    invoke-direct {p0, v3, v2, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    return-object v3

    :pswitch_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private readEnumDesc()Ljava/io/ObjectStreamClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v1

    throw v1

    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDescInternal()Ljava/io/ObjectStreamClass;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readEnumDescInternal()Ljava/io/ObjectStreamClass;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v4

    iput v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v0

    iget v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    iput v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    iget-object v4, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incompatible class (SUID): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    goto :goto_0
.end method

.method private readException()Ljava/lang/Exception;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/WriteAbortedException;,
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    return-object v0
.end method

.method private readFieldDescriptors(Ljava/io/ObjectStreamClass;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    new-array v3, v6, [Ljava/io/ObjectStreamField;

    invoke-virtual {p1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    int-to-char v8, v9

    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/io/ObjectStreamClass;->isPrimitiveType(C)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ljava/io/ObjectInputStream;->formatClassSig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectStreamField;

    invoke-direct {v1, v0, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v3, v4

    add-int/lit8 v9, v4, 0x1

    int-to-short v4, v9

    goto :goto_0

    :cond_0
    iget-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    const/4 v9, 0x0

    :try_start_0
    iput-boolean v9, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    goto :goto_1

    :catchall_0
    move-exception v9

    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    throw v9

    :cond_1
    return-void
.end method

.method private readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/io/InvalidClassException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForLoading;->emulatedFields()Ljava/io/EmulatedFields;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v5

    move-object v0, v5

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_8

    aget-object v2, v0, v3

    const/4 v7, 0x0

    iput-boolean v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    iget-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_0

    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_2

    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readChar()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3

    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_4

    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5

    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_6

    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_7

    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    :cond_7
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v7, Ljava/io/InvalidClassException;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    return-void
.end method

.method private readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    move-result-object v14

    if-nez v14, :cond_0

    sget-object v14, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v8

    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->mustResolve:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    new-instance v27, Ljava/lang/ClassNotFoundException;

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_1
    move-object v3, v14

    array-length v0, v3

    move/from16 v20, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    aget-object v11, v3, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/ObjectStreamClass;->getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v10

    :try_start_0
    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v24

    sget-object v27, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    if-eqz v10, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    :cond_2
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_3
    sget-object v27, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readChar()C

    move-result v5

    if-eqz v10, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v5}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v17

    new-instance v27, Ljava/lang/AssertionError;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v27

    :cond_4
    :try_start_1
    sget-object v27, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v6

    if-eqz v10, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v6, v7}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    :catch_1
    move-exception v27

    goto :goto_1

    :cond_5
    sget-object v27, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    if-eqz v10, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v9}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    :cond_6
    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    if-eqz v10, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v15}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_7
    sget-object v27, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    if-eqz v10, :cond_2

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v10, v0, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_1

    :cond_8
    sget-object v27, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readShort()S

    move-result v22

    if-eqz v10, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto/16 :goto_1

    :cond_9
    sget-object v27, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v26

    if-eqz v10, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v23

    :goto_2
    if-eqz v23, :cond_2

    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v27

    if-nez v27, :cond_c

    new-instance v27, Ljava/lang/ClassCastException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " not compatible with "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v23

    goto :goto_2

    :cond_c
    if-eqz v10, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method private readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget-boolean v10, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/io/NotActiveException;

    invoke-direct {v10}, Ljava/io/NotActiveException;-><init>()V

    throw v10

    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getHierarchy()Ljava/util/List;

    move-result-object v7

    if-nez p1, :cond_1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/ObjectStreamClass;

    const/4 v10, 0x0

    invoke-direct {p0, v10, v6}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_0

    :cond_1
    iget-object v10, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {p0, v10}, Ljava/io/ObjectInputStream;->cacheSuperclassesFor(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    :cond_2
    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-direct {p0, v8, v7, v5}, Ljava/io/ObjectInputStream;->findStreamSuperclass(Ljava/lang/Class;Ljava/util/List;I)I

    move-result v3

    const/4 v10, -0x1

    if-ne v3, v10, :cond_3

    invoke-static {v8}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v10

    invoke-direct {p0, p1, v8, v10}, Ljava/io/ObjectInputStream;->readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_3
    if-gt v4, v3, :cond_4

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/ObjectStreamClass;

    invoke-direct {p0, p1, v10}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private readNewArray(Z)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v19

    throw v19

    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    move/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v14, v2}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_b

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_1

    move-object/from16 v19, v16

    check-cast v19, [I

    move-object/from16 v12, v19

    check-cast v12, [I

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    aput v19, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    sget-object v19, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_4

    move-object/from16 v19, v16

    check-cast v19, [B

    move-object/from16 v5, v19

    check-cast v5, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->enableResolve:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v14, v2}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    :cond_3
    return-object v16

    :cond_4
    sget-object v19, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_5

    move-object/from16 v19, v16

    check-cast v19, [C

    move-object/from16 v6, v19

    check-cast v6, [C

    const/4 v11, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readChar()C

    move-result v19

    aput-char v19, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    sget-object v19, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_6

    move-object/from16 v19, v16

    check-cast v19, [S

    move-object/from16 v17, v19

    check-cast v17, [S

    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    aput-short v19, v17, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_7

    move-object/from16 v19, v16

    check-cast v19, [Z

    move-object/from16 v4, v19

    check-cast v4, [Z

    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v19

    aput-boolean v19, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    sget-object v19, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_8

    move-object/from16 v19, v16

    check-cast v19, [J

    move-object/from16 v13, v19

    check-cast v13, [J

    const/4 v11, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v19

    aput-wide v19, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_8
    sget-object v19, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_9

    move-object/from16 v19, v16

    check-cast v19, [F

    move-object/from16 v10, v19

    check-cast v10, [F

    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readFloat()F

    move-result v19

    aput v19, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_9
    sget-object v19, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_a

    move-object/from16 v19, v16

    check-cast v19, [D

    move-object/from16 v9, v19

    check-cast v9, [D

    const/4 v11, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v19

    aput-wide v19, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    new-instance v19, Ljava/lang/ClassNotFoundException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Wrong base type in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_b
    move-object/from16 v19, v16

    check-cast v19, [Ljava/lang/Object;

    move-object/from16 v15, v19

    check-cast v15, [Ljava/lang/Object;

    const/4 v11, 0x0

    :goto_7
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v15, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_7
.end method

.method private readNewClass(Z)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v2

    throw v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    :cond_1
    return-object v1
.end method

.method private readNewClassDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v9, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget v8, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v9

    iput v9, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v7

    iget v9, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    invoke-direct {p0, v7, v9, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    iput v8, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    iget-object v9, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v9, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    :try_start_0
    invoke-virtual {p0, v7}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->verifyAndInit(Ljava/io/ObjectStreamClass;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    :cond_1
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v9

    if-nez v9, :cond_2

    iget-object v6, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    invoke-virtual {v2, v6}, Ljava/io/ObjectStreamField;->resolve(Ljava/lang/ClassLoader;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    iget-boolean v9, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v9, :cond_0

    throw v1

    :cond_2
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    return-object v7
.end method

.method private readNewHandle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readNewLongString(Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->decodeUTF(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    return-object v2
.end method

.method private readNewObject(Z)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v12

    throw v12

    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v6

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    invoke-virtual {v2, v7}, Ljava/io/ObjectStreamClass;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    move/from16 v0, p1

    invoke-direct {p0, v9, v6, v0}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    move-object v8, v9

    :goto_0
    :try_start_0
    iput-object v9, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    iput-object v2, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v13

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_7

    move v11, v1

    :goto_1
    if-eqz v11, :cond_a

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v13

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_8

    :goto_2
    if-nez v1, :cond_1

    iget-object v12, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v12, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    :cond_1
    iget-boolean v12, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v12, :cond_2

    move-object v0, v9

    check-cast v0, Ljava/io/Externalizable;

    move-object v3, v0

    invoke-interface {v3, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    :cond_2
    if-eqz v1, :cond_9

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasMethodReadResolve()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getMethodReadResolve()Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v12, 0x0

    :try_start_1
    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v5, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    :cond_3
    :goto_4
    if-eqz v9, :cond_4

    iget-boolean v12, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v12, :cond_4

    invoke-virtual {p0, v9}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :cond_4
    if-eq v8, v9, :cond_5

    move/from16 v0, p1

    invoke-direct {p0, v9, v6, v0}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    :cond_5
    return-object v9

    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    move v11, v12

    goto :goto_1

    :cond_8
    move v1, v12

    goto :goto_2

    :cond_9
    :try_start_2
    iget-object v12, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v12, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v12

    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    throw v12

    :cond_a
    :try_start_3
    invoke-direct {p0, v9, v2}, Ljava/io/ObjectInputStream;->readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v10

    instance-of v12, v10, Ljava/io/ObjectStreamException;

    if-eqz v12, :cond_b

    check-cast v10, Ljava/io/ObjectStreamException;

    throw v10

    :cond_b
    instance-of v12, v10, Ljava/lang/Error;

    if-eqz v12, :cond_c

    check-cast v10, Ljava/lang/Error;

    throw v10

    :cond_c
    check-cast v10, Ljava/lang/RuntimeException;

    throw v10

    :catch_1
    move-exception v12

    goto :goto_4
.end method

.method private readNewProxyClassDesc()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    return-object v3
.end method

.method private readNewString(Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    return-object v0
.end method

.method private readNonPrimitiveContent(Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v0, Ljava/io/OptionalDataException;

    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    iput v3, v0, Ljava/io/OptionalDataException;->length:I

    throw v0

    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v3

    throw v3

    :pswitch_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    move-result-object v3

    :goto_0
    return-object v3

    :pswitch_3
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v3

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_9
    if-eqz p1, :cond_1

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string v4, "Unshared read of back reference"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    move-result-object v1

    new-instance v3, Ljava/io/WriteAbortedException;

    const-string v4, "Read an exception"

    invoke-direct {v3, v4, v1}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :pswitch_c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    new-instance v0, Ljava/io/OptionalDataException;

    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v0, Ljava/io/OptionalDataException;->eof:Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private readObject(Z)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget-object v8, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-ne v7, v8, :cond_2

    move v4, v6

    :goto_0
    if-eqz v4, :cond_0

    iget-object v7, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v7, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    :cond_0
    iget-boolean v7, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    if-eqz v7, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    move-result-object v5

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    :try_start_0
    iget v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-ne v7, v6, :cond_4

    invoke-static {}, Ljava/io/ObjectInputStream;->getClosestUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    iput-object v6, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    :cond_4
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonPrimitiveContent(Z)Ljava/lang/Object;

    move-result-object v5

    if-eqz v4, :cond_5

    iget-object v6, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_6

    iput-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    :cond_6
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_1

    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v0, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    iget-object v6, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    invoke-interface {v6}, Ljava/io/ObjectInputValidation;->validateObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_0
    move-exception v6

    iget v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v7, :cond_7

    iput-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    :cond_7
    throw v6

    :cond_8
    iput-object v9, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    goto :goto_1

    :catchall_1
    move-exception v6

    iput-object v9, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    throw v6
.end method

.method private readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    iput-object p1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    iput-object p2, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    :goto_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-boolean v5, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-nez v5, :cond_3

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    return-void

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getMethodReadObject()Ljava/lang/reflect/Method;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/ClassNotFoundException;

    if-eqz v5, :cond_4

    check-cast v1, Ljava/lang/ClassNotFoundException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v5

    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    throw v5

    :cond_4
    :try_start_4
    instance-of v5, v1, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_5

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_5
    instance-of v5, v1, Ljava/lang/Error;

    if-eqz v5, :cond_6

    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_6
    check-cast v1, Ljava/io/IOException;

    throw v1

    :catch_1
    move-exception v0

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->hasMethodReadObjectNoData()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->getMethodReadObjectNoData()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_2
    instance-of v3, v1, Ljava/lang/Error;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_3
    check-cast v1, Ljava/io/ObjectStreamException;

    throw v1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private registerObjectRead(Ljava/lang/Object;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    sget-object p1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    :cond_0
    const/high16 v2, 0x7e

    sub-int v0, p2, v2

    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-le v0, v1, :cond_1

    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private registeredObjectRead(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    const/high16 v2, 0x7e

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Cannot read back reference to unshared object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private resetSeenObjects()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    const/high16 v0, 0x7e

    iput v0, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    return-void
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    return-void
.end method

.method private verifyAndInit(Ljava/io/ObjectStreamClass;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incompatible class (SUID): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Incompatible class (base name): %s but expected %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/ObjectStreamClass;->initPrivateFields(Ljava/io/ObjectStreamClass;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public defaultReadObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0
.end method

.method protected enableResolveObject(Z)Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v1, Ljava/io/ObjectStreamClass;

    invoke-direct {v1}, Ljava/io/ObjectStreamClass;-><init>()V

    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "The stream is corrupted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    iget v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    iput v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    :cond_1
    iget v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readFieldDescriptors(Ljava/io/ObjectStreamClass;)V

    return-object v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/NotActiveException;

    invoke-direct {v1}, Ljava/io/NotActiveException;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/EmulatedFieldsForLoading;

    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {v0, v1}, Ljava/io/EmulatedFieldsForLoading;-><init>(Ljava/io/ObjectStreamClass;)V

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V

    return-object v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected readObjectOverride()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method protected readStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/16 v1, -0x5313

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public declared-synchronized registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/NotActiveException;

    invoke-direct {v6}, Ljava/io/NotActiveException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    new-instance v6, Ljava/io/InvalidObjectException;

    const-string v7, "Callback object cannot be null"

    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    new-instance v1, Ljava/io/ObjectInputStream$InputValidationDesc;

    invoke-direct {v1}, Ljava/io/ObjectInputStream$InputValidationDesc;-><init>()V

    iput-object p1, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    iput p2, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    if-nez v6, :cond_2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    const/4 v7, 0x0

    aput-object v1, v6, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    const/4 v2, 0x0

    :goto_1
    :try_start_2
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    aget-object v5, v6, v2

    iget v6, v5, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    if-lt p2, v6, :cond_4

    :cond_3
    iget-object v4, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    array-length v0, v4

    add-int/lit8 v6, v0, 0x1

    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    const/4 v6, 0x0

    iget-object v7, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    add-int/lit8 v7, v2, 0x1

    sub-int v8, v0, v2

    invoke-static {v4, v2, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    aput-object v1, v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    array-length v4, p1

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    aget-object v4, p1, v1

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v3, v2}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public skipBytes(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    sub-int v4, p1, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    :goto_1
    return v0

    :cond_1
    long-to-int v3, v1

    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_1
.end method
