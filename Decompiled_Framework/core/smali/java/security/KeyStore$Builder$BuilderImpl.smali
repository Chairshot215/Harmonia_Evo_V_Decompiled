.class Ljava/security/KeyStore$Builder$BuilderImpl;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final fileForLoad:Ljava/io/File;

.field private isGetKeyStore:Z

.field private keyStore:Ljava/security/KeyStore;

.field private lastException:Ljava/security/KeyStoreException;

.field private protParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private final providerForKeyStore:Ljava/security/Provider;

.field private final typeForKeyStore:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    iput-object p1, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    iput-object p2, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    iput-object p3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;

    iput-object p4, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    iput-object p5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    return-void
.end method


# virtual methods
.method public declared-synchronized getKeyStore()Ljava/security/KeyStore;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_0
    :try_start_1
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    :try_start_2
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    if-nez v5, :cond_2

    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    :goto_1
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v5, v5, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    check-cast v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v5}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v4

    :goto_2
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v5, :cond_5

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    iput-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    :try_start_7
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v5, v5, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v5, :cond_4

    iget-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    invoke-static {v5}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C

    move-result-object v4

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/security/KeyStoreException;

    const-string v6, "protectionParameter is neither PasswordProtection nor CallbackHandlerProtection instance"

    invoke-direct {v5, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    :try_start_8
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    iput-object v5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_1
    move-exception v5

    :goto_4
    :try_start_9
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    :cond_5
    new-instance v5, Ljava/security/KeyStore$Builder$TmpLSParameter;

    iget-object v6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    invoke-direct {v5, v6}, Ljava/security/KeyStore$Builder$TmpLSParameter;-><init>(Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catchall_2
    move-exception v5

    move-object v1, v2

    goto :goto_4
.end method

.method public declared-synchronized getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKeyStore() was not invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method
