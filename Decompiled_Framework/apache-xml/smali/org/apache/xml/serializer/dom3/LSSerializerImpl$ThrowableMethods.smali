.class Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;
.super Ljava/lang/Object;
.source "LSSerializerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/dom3/LSSerializerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThrowableMethods"
.end annotation


# static fields
.field private static fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

.field private static fgThrowableMethodsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    sput-object v7, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    sput-boolean v6, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    :try_start_0
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "initCause"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v7, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    sput-boolean v6, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
