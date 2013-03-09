.class public Ljava/io/ObjectStreamClass;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ARRAY_OF_FIELDS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final CLASSCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_MODIFIERS_MASK:I = 0x611

.field private static final CLINIT_MODIFIERS:I = 0x8

.field private static final CLINIT_NAME:Ljava/lang/String; = "<clinit>"

.field private static final CLINIT_SIGNATURE:Ljava/lang/String; = "()V"

.field static final CONSTRUCTOR_IS_NOT_RESOLVED:J = -0x1L

.field private static final EXTERNALIZABLE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Externalizable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MODIFIERS_MASK:I = 0xdf

.field private static final METHOD_MODIFIERS_MASK:I = 0xd3f

.field public static final NO_FIELDS:[Ljava/io/ObjectStreamField; = null

.field static final OBJECTSTREAMCLASSCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private static final READ_PARAM_TYPES:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SERIALIZABLE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field static final STRINGCLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UID_FIELD_NAME:Ljava/lang/String; = "serialVersionUID"

.field private static final WRITE_PARAM_TYPES:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x54f190e511018478L

.field private static storage:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient arePropertiesResolved:Z

.field private volatile transient cachedHierarchy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation
.end field

.field private transient className:Ljava/lang/String;

.field private transient constructor:J

.field private transient fields:[Ljava/io/ObjectStreamField;

.field private transient flags:B

.field private transient isEnum:Z

.field private transient isExternalizable:Z

.field private transient isProxy:Z

.field private transient isSerializable:Z

.field private transient loadFields:[Ljava/io/ObjectStreamField;

.field private transient methodReadObject:Ljava/lang/reflect/Method;

.field private transient methodReadObjectNoData:Ljava/lang/reflect/Method;

.field private transient methodReadResolve:Ljava/lang/reflect/Method;

.field private transient methodWriteObject:Ljava/lang/reflect/Method;

.field private transient methodWriteReplace:Ljava/lang/reflect/Method;

.field private transient reflectionFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/ObjectStreamField;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private transient resolvedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient resolvedConstructorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private transient resolvedConstructorMethodId:I

.field private transient superclass:Ljava/io/ObjectStreamClass;

.field private transient svUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/io/ObjectInputStream;

    aput-object v2, v1, v3

    sput-object v1, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/io/ObjectOutputStream;

    aput-object v2, v1, v3

    sput-object v1, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    new-array v1, v3, [Ljava/io/ObjectStreamField;

    sput-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    :try_start_0
    const-string v1, "[Ljava.io.ObjectStreamField;"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v1, Ljava/io/Serializable;

    sput-object v1, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    const-class v1, Ljava/io/Externalizable;

    sput-object v1, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sput-object v1, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    const-class v1, Ljava/lang/Class;

    sput-object v1, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    const-class v1, Ljava/io/ObjectStreamClass;

    sput-object v1, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/io/ObjectStreamClass;->constructor:J

    return-void
.end method

.method private static computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ")J"
        }
    .end annotation

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_1

    aget-object v8, p1, v11

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    sget-object v25, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v24

    if-eqz v24, :cond_0

    const-string v24, "serialVersionUID"

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v24, 0x0

    :try_start_0
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v24

    :goto_1
    return-wide v24

    :catch_0
    move-exception v12

    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Error fetching SUID: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v24, "SHA"

    invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_2
    new-instance v21, Ljava/io/DataOutputStream;

    invoke-direct/range {v21 .. v22}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v2, v0, 0x611

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isArray()Z

    move-result v15

    if-eqz v15, :cond_2

    or-int/lit16 v2, v2, 0x400

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v24

    if-nez v24, :cond_3

    and-int/lit16 v2, v2, -0x401

    :cond_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-nez v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v14

    array-length v0, v14

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    new-instance v13, Ljava/io/ObjectStreamClass$1;

    invoke-direct {v13}, Ljava/io/ObjectStreamClass$1;-><init>()V

    invoke-static {v14, v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_4
    const/4 v11, 0x0

    :goto_2
    array-length v0, v14

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_5

    aget-object v24, v14, v11

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :catch_1
    move-exception v7

    new-instance v24, Ljava/lang/Error;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v24

    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    new-instance v9, Ljava/io/ObjectStreamClass$2;

    invoke-direct {v9}, Ljava/io/ObjectStreamClass$2;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_6
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_a

    aget-object v8, p1, v11

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xdf

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v24

    if-nez v24, :cond_7

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v24

    if-eqz v24, :cond_9

    :cond_7
    const/16 v23, 0x1

    :goto_4
    if-nez v23, :cond_8

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {v8}, Ljava/io/ObjectStreamClass;->getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/io/ObjectStreamClass;->descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_9
    const/16 v23, 0x0

    goto :goto_4

    :cond_a
    invoke-static/range {p0 .. p0}, Ljava/io/ObjectStreamClass;->hasClinit(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_b

    const-string v24, "<clinit>"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/16 v24, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v24, "()V"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    array-length v0, v5

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    new-instance v4, Ljava/io/ObjectStreamClass$3;

    invoke-direct {v4}, Ljava/io/ObjectStreamClass$3;-><init>()V

    invoke-static {v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_c
    const/4 v11, 0x0

    :goto_5
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_e

    aget-object v3, v5, v11

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xd3f

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v16

    if-nez v16, :cond_d

    const-string v24, "<init>"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {v3}, Ljava/io/ObjectStreamClass;->getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2f

    const/16 v26, 0x2e

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    new-instance v18, Ljava/io/ObjectStreamClass$4;

    invoke-direct/range {v18 .. v18}, Ljava/io/ObjectStreamClass$4;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_f
    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_11

    aget-object v17, v19, v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xd3f

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v16

    if-nez v16, :cond_10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static/range {v17 .. v17}, Ljava/io/ObjectStreamClass;->getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/io/ObjectStreamClass;->descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2f

    const/16 v26, 0x2e

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :catch_2
    move-exception v7

    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " computing SHA-1/SUID"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_11
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    const/16 v24, 0x0

    sget-object v25, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    move-result-wide v24

    goto/16 :goto_1
.end method

.method private copyFieldAttributes()V
    .locals 6

    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    aget-object v3, v5, v1

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v5, v2

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setUnshared(Z)V

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamField;->setOffset(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static createClassDesc(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    new-instance v7, Ljava/io/ObjectStreamClass;

    invoke-direct {v7}, Ljava/io/ObjectStreamClass;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v8

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v8, v7, Ljava/io/ObjectStreamClass;->isSerializable:Z

    iput-boolean v1, v7, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    :cond_0
    const/4 v0, 0x0

    if-nez v8, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_2
    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    :cond_3
    :goto_0
    if-eqz v8, :cond_6

    if-nez v5, :cond_6

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_4
    invoke-virtual {v7, v0}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    :goto_1
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    if-eqz v2, :cond_8

    array-length v10, v2

    new-array v6, v10, [Ljava/io/ObjectStreamField;

    const/4 v4, 0x0

    :goto_2
    array-length v10, v2

    if-ge v4, v10, :cond_7

    new-instance v10, Ljava/io/ObjectStreamField;

    aget-object v11, v2, v4

    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v2, v4

    invoke-virtual {v12}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v12

    aget-object v13, v2, v4

    invoke-virtual {v13}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v13

    invoke-direct {v10, v11, v12, v13}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    aput-object v10, v6, v4

    aget-object v10, v6, v4

    invoke-virtual {v10}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->computeSerialVersionUID(Ljava/lang/Class;[Ljava/lang/reflect/Field;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    goto :goto_0

    :cond_6
    sget-object v10, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {v7, v10}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v7, v6}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    :cond_8
    const/4 v3, 0x0

    if-eqz v1, :cond_b

    const/4 v10, 0x4

    int-to-byte v3, v10

    or-int/lit8 v10, v3, 0x8

    int-to-byte v3, v10

    :cond_9
    :goto_3
    const-string v10, "writeReplace"

    invoke-static {p0, v10}, Ljava/io/ObjectStreamClass;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    const-string v10, "readResolve"

    invoke-static {p0, v10}, Ljava/io/ObjectStreamClass;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    const-string v10, "writeObject"

    sget-object v11, Ljava/io/ObjectStreamClass;->WRITE_PARAM_TYPES:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    const-string v10, "readObject"

    sget-object v11, Ljava/io/ObjectStreamClass;->READ_PARAM_TYPES:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    const-string v10, "readObjectNoData"

    sget-object v11, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-static {p0, v10, v11}, Ljava/io/ObjectStreamClass;->findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, v7, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->hasMethodWriteObject()Z

    move-result v10

    if-eqz v10, :cond_a

    or-int/lit8 v10, v3, 0x1

    int-to-byte v3, v10

    :cond_a
    invoke-virtual {v7, v3}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    return-object v7

    :cond_b
    if-eqz v8, :cond_9

    const/4 v10, 0x2

    int-to-byte v3, v10

    goto :goto_3
.end method

.method private static descriptorForFieldSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static descriptorForSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    const-string v2, "serialPersistentFields"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/io/ObjectStreamClass;->ARRAY_OF_FIELDS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v1, p0

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :try_start_0
    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eq v1, p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :goto_1
    return-object v2

    :catch_0
    move-exception v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_1
.end method

.method static findPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCache()Ljava/util/WeakHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    sget-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ObjectStreamClass$5;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass$5;-><init>()V

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Ljava/io/ObjectStreamClass;->storage:Ljava/lang/ref/SoftReference;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    return-object v1
.end method

.method private static native getConstructorId(Ljava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation
.end method

.method static native getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private static native getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;
.end method

.method static native getMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;
.end method

.method private static native hasClinit(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method private inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/16 v5, 0x2e

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4, v3, v4, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method static isExternalizable(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/io/ObjectStreamClass;->EXTERNALIZABLE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static isPrimitiveType(C)Z
    .locals 1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSerializable(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/io/ObjectStreamClass;->SERIALIZABLE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lookupAny(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method static lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    invoke-static {}, Ljava/io/ObjectStreamClass;->getCache()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ObjectStreamClass;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/io/ObjectStreamClass;->createClassDesc(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private makeHierarchy()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static native newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private primitiveSize(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_6

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    :cond_6
    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private resolveConstructorClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    if-eqz v10, :cond_0

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    iget-byte v10, p0, Ljava/io/ObjectStreamClass;->flags:B

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1

    move v8, v7

    :goto_1
    if-eqz v8, :cond_2

    :goto_2
    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_2

    :cond_1
    move v8, v9

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    if-eqz v2, :cond_3

    :try_start_0
    sget-object v10, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_3
    :goto_3
    if-nez v1, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v9, Ljava/io/InvalidClassException;

    const-string v10, "IllegalAccessException"

    invoke-direct {v9, v0, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    iget-byte v10, p0, Ljava/io/ObjectStreamClass;->flags:B

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_7

    :goto_5
    if-nez v4, :cond_6

    if-eqz v7, :cond_8

    if-nez v6, :cond_8

    :cond_6
    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "IllegalAccessException"

    invoke-direct {v9, v10, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    :cond_7
    move v7, v9

    goto :goto_5

    :cond_8
    if-nez v6, :cond_9

    if-nez v5, :cond_9

    invoke-direct {p0, v2, p1}, Ljava/io/ObjectStreamClass;->inSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_9

    new-instance v9, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "IllegalAccessException"

    invoke-direct {v9, v10, v11}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    :cond_9
    iput-object v2, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    iget-object v9, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorClass:Ljava/lang/Class;

    invoke-static {v9}, Ljava/io/ObjectStreamClass;->getConstructorId(Ljava/lang/Class;)I

    move-result v9

    iput v9, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorMethodId:I

    goto :goto_0

    :catch_0
    move-exception v10

    goto :goto_3
.end method

.method private resolveProperties()V
    .locals 2

    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->arePropertiesResolved:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->isSerializable(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isSerializable:Z

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->isExternalizable(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->arePropertiesResolved:Z

    goto :goto_0
.end method


# virtual methods
.method buildFieldDescriptors([Ljava/lang/reflect/Field;)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/io/ObjectStreamClass;->fieldSerialPersistentFields(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_0

    const/16 v17, 0x1

    :goto_0
    const/4 v2, 0x0

    if-nez v17, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/io/ObjectStreamField;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/io/ObjectStreamField;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    :goto_2
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    aget-object v18, v2, v8

    invoke-virtual/range {v18 .. v18}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->isPrimitive()Z

    move-result v18

    if-eqz v18, :cond_5

    aget-object v18, v2, v8

    move-object/from16 v0, v18

    iput v14, v0, Ljava/io/ObjectStreamField;->offset:I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/ObjectStreamClass;->primitiveSize(Ljava/lang/Class;)I

    move-result v18

    add-int v14, v14, v18

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v18, Ljava/lang/AssertionError;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v3, p1

    array-length v10, v3

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v10, :cond_3

    aget-object v4, v3, v9

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v18

    if-nez v18, :cond_2

    new-instance v7, Ljava/io/ObjectStreamField;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_4

    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    goto :goto_1

    :cond_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/ObjectStreamField;

    goto/16 :goto_1

    :cond_5
    aget-object v18, v2, v8

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, v18

    iput v12, v0, Ljava/io/ObjectStreamField;->offset:I

    move v12, v13

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method fields()[Ljava/io/ObjectStreamField;
    .locals 2

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->buildFieldDescriptors([Ljava/lang/reflect/Field;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    return-object v1

    :cond_1
    sget-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {p0, v1}, Ljava/io/ObjectStreamClass;->setFields([Ljava/io/ObjectStreamField;)V

    goto :goto_0
.end method

.method public forClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/Class;

    return-object v0
.end method

.method getConstructor()J
    .locals 2

    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->constructor:J

    return-wide v0
.end method

.method public getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;
    .locals 4

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFields()[Ljava/io/ObjectStreamField;
    .locals 1

    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->copyFieldAttributes()V

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/ObjectStreamField;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/ObjectStreamField;

    goto :goto_0
.end method

.method getFlags()B
    .locals 1

    iget-byte v0, p0, Ljava/io/ObjectStreamClass;->flags:B

    return v0
.end method

.method getHierarchy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cachedHierarchy:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->makeHierarchy()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->cachedHierarchy:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method getLoadFields()[Ljava/io/ObjectStreamField;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    return-object v0
.end method

.method getMethodReadObject()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodReadObjectNoData()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodReadResolve()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodWriteObject()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method getMethodWriteReplace()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    return-object v0
.end method

.method getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;
    .locals 5

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    monitor-exit v4

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->reflectionFields:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSerialVersionUID()J
    .locals 2

    iget-wide v0, p0, Ljava/io/ObjectStreamClass;->svUID:J

    return-wide v0
.end method

.method getSuperclass()Ljava/io/ObjectStreamClass;
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method hasMethodReadObject()Z
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodReadObjectNoData()Z
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodReadResolve()Z
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodWriteObject()Z
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMethodWriteReplace()Z
    .locals 1

    iget-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initPrivateFields(Ljava/io/ObjectStreamClass;)V
    .locals 1

    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteReplace:Ljava/lang/reflect/Method;

    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadResolve:Ljava/lang/reflect/Method;

    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodWriteObject:Ljava/lang/reflect/Method;

    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObject:Ljava/lang/reflect/Method;

    iget-object v0, p1, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->methodReadObjectNoData:Ljava/lang/reflect/Method;

    return-void
.end method

.method isEnum()Z
    .locals 1

    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    return v0
.end method

.method isExternalizable()Z
    .locals 1

    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isExternalizable:Z

    return v0
.end method

.method isProxy()Z
    .locals 1

    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    return v0
.end method

.method isSerializable()Z
    .locals 1

    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->resolveProperties()V

    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isSerializable:Z

    return v0
.end method

.method newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/ObjectStreamClass;->resolveConstructorClass(Ljava/lang/Class;)Ljava/lang/Class;

    iget v0, p0, Ljava/io/ObjectStreamClass;->resolvedConstructorMethodId:I

    invoke-static {p1, v0}, Ljava/io/ObjectStreamClass;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->resolvedClass:Ljava/lang/Class;

    return-void
.end method

.method setConstructor(J)V
    .locals 0

    iput-wide p1, p0, Ljava/io/ObjectStreamClass;->constructor:J

    return-void
.end method

.method setFields([Ljava/io/ObjectStreamField;)V
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method setFlags(B)V
    .locals 0

    iput-byte p1, p0, Ljava/io/ObjectStreamClass;->flags:B

    return-void
.end method

.method setLoadFields([Ljava/io/ObjectStreamField;)V
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->loadFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->className:Ljava/lang/String;

    return-void
.end method

.method setSerialVersionUID(J)V
    .locals 0

    iput-wide p1, p0, Ljava/io/ObjectStreamClass;->svUID:J

    return-void
.end method

.method setSuperclass(Ljava/io/ObjectStreamClass;)V
    .locals 0

    iput-object p1, p0, Ljava/io/ObjectStreamClass;->superclass:Ljava/io/ObjectStreamClass;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": static final long serialVersionUID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
