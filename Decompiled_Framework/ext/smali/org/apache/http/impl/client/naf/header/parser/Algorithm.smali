.class public final enum Lorg/apache/http/impl/client/naf/header/parser/Algorithm;
.super Ljava/lang/Enum;
.source "Algorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/client/naf/header/parser/Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

.field public static final enum AKAv1_MD5:Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

.field public static final enum MD5:Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

.field public static final enum MD5Sess:Lorg/apache/http/impl/client/naf/header/parser/Algorithm;


# instance fields
.field private final strValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    const-string v1, "MD5"

    const-string v2, "MD5"

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->MD5:Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    new-instance v0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    const-string v1, "MD5Sess"

    const-string v2, "MD5Sess"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->MD5Sess:Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    new-instance v0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    const-string v1, "AKAv1_MD5"

    const-string v2, "AKAv1-MD5"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->AKAv1_MD5:Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    sget-object v1, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->MD5:Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->MD5Sess:Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->AKAv1_MD5:Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->$VALUES:[Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

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

    iput-object p3, p0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->strValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/header/parser/Algorithm;
    .locals 1

    const-class v0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/impl/client/naf/header/parser/Algorithm;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->$VALUES:[Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    invoke-virtual {v0}, [Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/client/naf/header/parser/Algorithm;

    return-object v0
.end method


# virtual methods
.method public stringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->strValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Algorithm{strValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/header/parser/Algorithm;->strValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
