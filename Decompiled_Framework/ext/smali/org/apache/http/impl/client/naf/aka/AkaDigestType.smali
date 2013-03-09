.class public final enum Lorg/apache/http/impl/client/naf/aka/AkaDigestType;
.super Ljava/lang/Enum;
.source "AkaDigestType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/client/naf/aka/AkaDigestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

.field public static final enum AKA_DIGEST_REQUEST:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

.field public static final enum AKA_DIGEST_RESPONSE:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    const-string v1, "AKA_DIGEST_REQUEST"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;->AKA_DIGEST_REQUEST:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    new-instance v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    const-string v1, "AKA_DIGEST_RESPONSE"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;->AKA_DIGEST_RESPONSE:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    sget-object v1, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;->AKA_DIGEST_REQUEST:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;->AKA_DIGEST_RESPONSE:Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;->$VALUES:[Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/aka/AkaDigestType;
    .locals 1

    const-class v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/impl/client/naf/aka/AkaDigestType;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/aka/AkaDigestType;->$VALUES:[Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    invoke-virtual {v0}, [Lorg/apache/http/impl/client/naf/aka/AkaDigestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/client/naf/aka/AkaDigestType;

    return-object v0
.end method
