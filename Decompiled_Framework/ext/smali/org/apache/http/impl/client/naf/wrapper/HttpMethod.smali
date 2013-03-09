.class public final enum Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

.field public static final enum DELETE:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

.field public static final enum GET:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

.field public static final enum NONE:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

.field public static final enum POST:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

.field public static final enum PUT:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

.field public static final enum UNKNOWN:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    const-string v1, "NONE"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->NONE:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->GET:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->POST:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->PUT:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->DELETE:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->UNKNOWN:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->NONE:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->GET:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->POST:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->PUT:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->DELETE:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->UNKNOWN:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->$VALUES:[Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

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

    iput-object p3, p0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->name:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->NONE:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    invoke-static {}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->values()[Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->UNKNOWN:Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;
    .locals 1

    const-class v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->$VALUES:[Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    invoke-virtual {v0}, [Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/HttpMethod;->name:Ljava/lang/String;

    return-object v0
.end method
