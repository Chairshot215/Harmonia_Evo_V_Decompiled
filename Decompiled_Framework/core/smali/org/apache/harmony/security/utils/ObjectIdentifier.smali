.class public final Lorg/apache/harmony/security/utils/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"


# instance fields
.field private group:Ljava/lang/Object;

.field private hash:I

.field private name:Ljava/lang/String;

.field private final oid:[I

.field private sOID:Ljava/lang/String;

.field private soid:Ljava/lang/String;


# direct methods
.method public constructor <init>([I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    invoke-static {p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->validateOid([I)V

    iput-object p1, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    return-void
.end method

.method public constructor <init>([ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "oidGroup == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->group:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toOIDString()Ljava/lang/String;

    return-void
.end method

.method public static hashIntArray([I)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2
.end method

.method public static validateOid([I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "oid == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p0

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OID MUST have at least 2 subidentifiers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget v0, p0, v2

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid values for first subidentifier are 0, 1 and 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget v0, p0, v2

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    aget v0, p0, v0

    const/16 v1, 0x27

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If the first subidentifier has 0 or 1 value the second subidentifier value MUST be less than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    check-cast p1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    iget-object v1, p1, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getGroup()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->group:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOid()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    invoke-static {v0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hashIntArray([I)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    return v0
.end method

.method public toOIDString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OID."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    iget-object v3, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    return-object v2
.end method
