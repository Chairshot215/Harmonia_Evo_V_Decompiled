.class final enum Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;
.super Ljava/lang/Enum;
.source "Algorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/naf/wrapper/Algorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AlgorithmValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

.field public static final enum ALGORITHM_MD5:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

.field public static final enum ALGORITHM_MD5_SESS:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

.field public static final enum ALGORITHM_UNKNOWN_NOT_EMPTY:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

.field public static final enum ALGORITHM_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    const-string v1, "ALGORITHM_UNSPECIFIED"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    const-string v1, "ALGORITHM_MD5"

    const-string v2, "MD5"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_MD5:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    const-string v1, "ALGORITHM_MD5_SESS"

    const-string v2, "MD5-sess"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_MD5_SESS:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    const-string v1, "ALGORITHM_UNKNOWN_NOT_EMPTY"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_UNKNOWN_NOT_EMPTY:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_MD5:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_MD5_SESS:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->ALGORITHM_UNKNOWN_NOT_EMPTY:Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->$VALUES:[Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

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

    iput-object p3, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;
    .locals 1

    const-class v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->$VALUES:[Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    invoke-virtual {v0}, [Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/wrapper/Algorithm$AlgorithmValues;->name:Ljava/lang/String;

    return-object v0
.end method
