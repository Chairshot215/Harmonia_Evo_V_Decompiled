.class public Lcom/google/android/voicesearch/util/ProtoDebugUtils;
.super Ljava/lang/Object;
.source "ProtoDebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/util/ProtoDebugUtils$1;,
        Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;,
        Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;
    }
.end annotation


# static fields
.field private static final PRIMITIVE_WRAPPERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    .line 43
    sget-object v0, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static asciiDebug(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "object"

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;-><init>(Lcom/google/android/voicesearch/util/ProtoDebugUtils$1;)V

    .line 57
    .local v1, logOutput:Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;
    const-string v2, "object"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v2, p0, v3}, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->debugObject(Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V

    .line 58
    invoke-virtual {v1}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    .end local v1           #logOutput:Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;
    :goto_0
    return-object v2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ProtoDebugUtils"

    const-string v3, "asciiDebug failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const-string v2, "Error: unable to output asciiDebug()"

    goto :goto_0
.end method

.method private static debugFields(Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 6
    .parameter "logOutput"
    .parameter "object"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    .local p2, visitedObjects:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    const-string v5, "[already printed this object]"

    invoke-interface {p0, v5}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void

    .line 85
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 87
    .local v1, current:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 90
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 88
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v5

    if-nez v5, :cond_2

    .line 99
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 100
    invoke-static {p0, v2, p1, p2}, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->debugSingleField(Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_2

    .line 102
    .end local v2           #field:Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private static debugObject(Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 2
    .parameter "logOutput"
    .parameter "fieldName"
    .parameter "object"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    .local p3, visitedObjects:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    sget-object v0, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 73
    invoke-interface {p0}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;->indent()V

    .line 74
    invoke-static {p0, p2, p3}, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->debugFields(Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;Ljava/lang/Object;Ljava/util/Set;)V

    .line 75
    invoke-interface {p0}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;->outdent()V

    .line 76
    const-string v0, "}"

    invoke-interface {p0, v0}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static debugSingleField(Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v0, "gaiaAuthenticationToken_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "gaiaAuthenticationToken_: *****"

    invoke-interface {p0, v0}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    if-nez v1, :cond_3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    const/4 v0, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 121
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 122
    if-eqz v3, :cond_5

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3, p3}, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->debugObject(Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V

    .line 120
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_6
    invoke-static {p0, v2, v1, p3}, Lcom/google/android/voicesearch/util/ProtoDebugUtils;->debugObject(Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V

    goto/16 :goto_0
.end method
