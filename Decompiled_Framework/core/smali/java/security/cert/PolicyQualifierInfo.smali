.class public Ljava/security/cert/PolicyQualifierInfo;
.super Ljava/lang/Object;
.source "PolicyQualifierInfo.java"


# instance fields
.field private final encoded:[B

.field private final policyQualifier:[B

.field private final policyQualifierId:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "encoded == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "encoded.length == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    array-length v2, v2

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lorg/apache/harmony/security/x509/PolicyQualifierInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v3

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifierId:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->encoded:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final getPolicyQualifier()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    iget-object v2, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final getPolicyQualifierId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifierId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PolicyQualifierInfo: [\npolicyQualifierId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifierId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\npolicyQualifier: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/PolicyQualifierInfo;->policyQualifier:[B

    const-string v2, " "

    invoke-static {v1, v2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
