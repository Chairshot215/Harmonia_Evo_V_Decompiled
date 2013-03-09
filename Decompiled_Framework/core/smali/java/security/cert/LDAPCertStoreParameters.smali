.class public Ljava/security/cert/LDAPCertStoreParameters;
.super Ljava/lang/Object;
.source "LDAPCertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# static fields
.field private static final DEFAULT_LDAP_PORT:I = 0x185

.field private static final DEFAULT_LDAP_SERVER_NAME:Ljava/lang/String; = "localhost"


# instance fields
.field private final port:I

.field private final serverName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "localhost"

    iput-object v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    const/16 v0, 0x185

    iput v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x185

    iput v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    iput-object p1, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    iget-object v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    iput-object p1, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    iget-object v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LDAPCertStoreParameters: [\n serverName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/cert/LDAPCertStoreParameters;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/LDAPCertStoreParameters;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
