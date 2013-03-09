.class public final enum Lorg/apache/http/impl/client/naf/gba/GbaType;
.super Ljava/lang/Enum;
.source "GbaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/client/naf/gba/GbaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/client/naf/gba/GbaType;

.field public static final enum GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

.field public static final enum GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

.field public static final enum GBA_U_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;


# instance fields
.field private final typeId:I

.field private final userAgentIndicator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    const-string v1, "GBA_NOT_SUPPORTED"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/apache/http/impl/client/naf/gba/GbaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    const-string v1, "GBA_ME_SUPPORTED"

    const-string v2, "3gpp-gba"

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/apache/http/impl/client/naf/gba/GbaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    const-string v1, "GBA_U_SUPPORTED"

    const-string v2, "3gpp-gba-uicc"

    invoke-direct {v0, v1, v5, v5, v2}, Lorg/apache/http/impl/client/naf/gba/GbaType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_U_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/http/impl/client/naf/gba/GbaType;

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_ME_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_U_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/GbaType;->$VALUES:[Lorg/apache/http/impl/client/naf/gba/GbaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/http/impl/client/naf/gba/GbaType;->typeId:I

    iput-object p4, p0, Lorg/apache/http/impl/client/naf/gba/GbaType;->userAgentIndicator:Ljava/lang/String;

    return-void
.end method

.method public static parse(I)Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 6

    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/GbaType;->values()[Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lorg/apache/http/impl/client/naf/gba/GbaType;->getTypeId()I

    move-result v5

    if-ne v5, p0, :cond_1

    move-object v3, v4

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 1

    const-class v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/GbaType;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/gba/GbaType;->$VALUES:[Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-virtual {v0}, [Lorg/apache/http/impl/client/naf/gba/GbaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/client/naf/gba/GbaType;

    return-object v0
.end method


# virtual methods
.method public getTypeId()I
    .locals 1

    iget v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaType;->typeId:I

    return v0
.end method

.method public getUserAgentIndicator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaType;->userAgentIndicator:Ljava/lang/String;

    return-object v0
.end method
