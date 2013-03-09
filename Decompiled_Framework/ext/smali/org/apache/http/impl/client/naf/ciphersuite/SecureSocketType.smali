.class public final enum Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;
.super Ljava/lang/Enum;
.source "SecureSocketType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

.field public static final enum SSL:Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

.field public static final enum TLS:Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

    const-string v1, "SSL"

    const-string v2, "SSL"

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;->SSL:Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

    const-string v1, "TLS"

    const-string v2, "TLS"

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;->TLS:Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

    sget-object v1, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;->SSL:Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;->TLS:Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;->$VALUES:[Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

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

    iput-object p3, p0, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;
    .locals 1

    const-class v0, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;->$VALUES:[Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

    invoke-virtual {v0}, [Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/SecureSocketType;->name:Ljava/lang/String;

    return-object v0
.end method
