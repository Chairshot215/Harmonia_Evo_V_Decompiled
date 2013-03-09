.class public final enum Lorg/apache/harmony/security/x509/tsp/PKIStatus;
.super Ljava/lang/Enum;
.source "PKIStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/harmony/security/x509/tsp/PKIStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum GRANTED:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum GRANTED_WITH_MODS:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum REJECTION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum REVOCATION_NOTIFICATION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum REVOCATION_WARNING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field public static final enum WAITING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;


# instance fields
.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "GRANTED"

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "GRANTED_WITH_MODS"

    invoke-direct {v0, v1, v5, v5}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED_WITH_MODS:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "REJECTION"

    invoke-direct {v0, v1, v6, v6}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REJECTION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v7, v7}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->WAITING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "REVOCATION_WARNING"

    invoke-direct {v0, v1, v8, v8}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_WARNING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const-string v1, "REVOCATION_NOTIFICATION"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_NOTIFICATION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->GRANTED_WITH_MODS:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REJECTION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->WAITING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_WARNING:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->REVOCATION_NOTIFICATION:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->$VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->status:I

    return-void
.end method

.method public static getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .locals 6

    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->values()[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    iget v4, v1, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->status:I

    if-ne p0, v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string v5, "Unknown PKIStatus value"

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .locals 1

    const-class v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    return-object v0
.end method

.method public static values()[Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .locals 1

    sget-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->$VALUES:[Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    invoke-virtual {v0}, [Lorg/apache/harmony/security/x509/tsp/PKIStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->status:I

    return v0
.end method
