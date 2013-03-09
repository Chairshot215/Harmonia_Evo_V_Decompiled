.class final enum Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;
.super Ljava/lang/Enum;
.source "Qop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/naf/wrapper/Qop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "QopValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

.field public static final enum QOP_AUTH:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

.field public static final enum QOP_AUTH_INT:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

.field public static final enum QOP_UNKNOWN_NOT_EMPTY:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

.field public static final enum QOP_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    const-string v1, "QOP_UNSPECIFIED"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    const-string v1, "QOP_AUTH"

    const-string v2, "auth"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    const-string v1, "QOP_AUTH_INT"

    const-string v2, "auth-int"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH_INT:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    const-string v1, "QOP_UNKNOWN_NOT_EMPTY"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_UNKNOWN_NOT_EMPTY:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH_INT:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_UNKNOWN_NOT_EMPTY:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->$VALUES:[Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;
    .locals 1

    const-class v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->$VALUES:[Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-virtual {v0}, [Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->name:Ljava/lang/String;

    return-object v0
.end method
