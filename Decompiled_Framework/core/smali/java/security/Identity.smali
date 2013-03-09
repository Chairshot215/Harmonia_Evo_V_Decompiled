.class public abstract Ljava/security/Identity;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x321904f09f5e92d3L


# instance fields
.field private certificates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;

.field private scope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "no additional info"

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "no additional info"

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    iput-object p1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Ljava/security/IdentityScope;->addIdentity(Ljava/security/Identity;)V

    iput-object p2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    :cond_0
    return-void
.end method

.method private static checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v4, v3

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    :goto_2
    return v2

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_2
.end method


# virtual methods
.method public addCertificate(Ljava/security/Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-static {v1, v0}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/KeyManagementException;

    const-string v2, "Cert\'s public key does not match Identity\'s public key"

    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    :cond_1
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    :cond_2
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public certificates()[Ljava/security/Certificate;
    .locals 2

    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/security/Certificate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljava/security/Certificate;

    iget-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Ljava/security/Identity;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/security/Identity;

    iget-object v2, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v3, v0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    iget-object v3, v0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/security/Identity;->identityEquals(Ljava/security/Identity;)Z

    move-result v1

    goto :goto_0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final getScope()Ljava/security/IdentityScope;
    .locals 1

    iget-object v0, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v1}, Ljava/security/IdentityScope;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method protected identityEquals(Ljava/security/Identity;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v2, p1, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v1, :cond_2

    iget-object v1, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    iget-object v1, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-static {v0, v1}, Ljava/security/Identity;->checkKeysEqual(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeCertificate(Ljava/security/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Certificate not found"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v1, p1}, Ljava/security/IdentityScope;->getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    new-instance v1, Ljava/security/KeyManagementException;

    const-string v2, "key already used in scope"

    invoke-direct {v1, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2}, Ljava/security/IdentityScope;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
