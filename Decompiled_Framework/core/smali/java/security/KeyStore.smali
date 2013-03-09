.class public Ljava/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$TrustedCertificateEntry;,
        Ljava/security/KeyStore$SecretKeyEntry;,
        Ljava/security/KeyStore$PrivateKeyEntry;,
        Ljava/security/KeyStore$ProtectionParameter;,
        Ljava/security/KeyStore$PasswordProtection;,
        Ljava/security/KeyStore$LoadStoreParameter;,
        Ljava/security/KeyStore$Entry;,
        Ljava/security/KeyStore$CallbackHandlerProtection;,
        Ljava/security/KeyStore$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEYSTORE_TYPE:Ljava/lang/String; = "jks"

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final PROPERTYNAME:Ljava/lang/String; = "keystore.type"

.field private static final SERVICE:Ljava/lang/String; = "KeyStore"


# instance fields
.field private final implSpi:Ljava/security/KeyStoreSpi;

.field private isInit:Z

.field private final provider:Ljava/security/Provider;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyStore"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    iput-object p2, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    iput-object p1, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    return-void
.end method

.method static synthetic access$000(Ljava/security/KeyStore;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    return v0
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    const-string v1, "keystore.type"

    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "jks"

    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    :try_start_0
    sget-object v2, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    new-instance v3, Ljava/security/KeyStore;

    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v2, Ljava/security/KeyStoreSpi;

    iget-object v4, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v3, v2, v4, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Ljava/security/NoSuchProviderException;

    invoke-direct {v2, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    invoke-static {p0, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    if-nez p0, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_1
    :try_start_0
    sget-object v2, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/security/KeyStore;

    check-cast v1, Ljava/security/KeyStoreSpi;

    invoke-direct {v2, v1, p1, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static throwNotInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "KeyStore was not initialized"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final aliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final containsAlias(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final deleteEntry(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    return-void
.end method

.method public final entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entryClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final load(Ljava/io/InputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    return-void
.end method

.method public final load(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    return-void
.end method

.method public final setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public final setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entry == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    if-eqz p2, :cond_2

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    array-length v0, p4

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate chain is not defined for Private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    return-void
.end method

.method public final size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineSize()I

    move-result v0

    return v0
.end method

.method public final store(Ljava/io/OutputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    return-void
.end method

.method public final store(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V

    return-void
.end method
