.class Lcom/android/keychain/KeyChainService$1;
.super Landroid/security/IKeyChainService$Stub;
.source "KeyChainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keychain/KeyChainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mTrustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field final synthetic this$0:Lcom/android/keychain/KeyChainService;


# direct methods
.method constructor <init>(Lcom/android/keychain/KeyChainService;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/keychain/KeyChainService$1;->this$0:Lcom/android/keychain/KeyChainService;

    invoke-direct {p0}, Landroid/security/IKeyChainService$Stub;-><init>()V

    .line 79
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keychain/KeyChainService$1;->mKeyStore:Landroid/security/KeyStore;

    .line 80
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/keychain/KeyChainService$1;->mTrustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    return-void
.end method

.method private checkCaller(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "expectedPackage"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/keychain/KeyChainService$1;->this$0:Lcom/android/keychain/KeyChainService;

    invoke-virtual {v1}, Lcom/android/keychain/KeyChainService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/android/keychain/KeyChainService$1;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, actualPackage:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0           #actualPackage:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #actualPackage:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCertInstallerOrSystemCaller()V
    .locals 2

    .prologue
    .line 171
    const-string v1, "com.android.certinstaller"

    invoke-direct {p0, v1}, Lcom/android/keychain/KeyChainService$1;->checkCaller(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, actual:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/android/keychain/KeyChainService$1;->checkSystemCaller()V

    goto :goto_0
.end method

.method private checkSystemCaller()V
    .locals 2

    .prologue
    .line 178
    const-string v1, "android.uid.system:1000"

    invoke-direct {p0, v1}, Lcom/android/keychain/KeyChainService$1;->checkCaller(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, actual:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_0
    return-void
.end method

.method private deleteCertificateEntry(Ljava/lang/String;)Z
    .locals 5
    .parameter "alias"

    .prologue
    const/4 v1, 0x0

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/android/keychain/KeyChainService$1;->mTrustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->deleteCertificateEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    const/4 v1, 0x1

    .line 166
    :goto_0
    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/io/IOException;
    const-string v2, "KeyChain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem removing CA certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 165
    .local v0, e:Ljava/security/cert/CertificateException;
    const-string v2, "KeyChain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem removing CA certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getKeyStoreEntry(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .parameter "type"
    .parameter "alias"

    .prologue
    .line 92
    if-nez p2, :cond_0

    .line 93
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "alias == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/android/keychain/KeyChainService$1;->isKeyStoreUnlocked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "keystore locked"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_1
    invoke-static {}, Lcom/android/keychain/KeyChainService$1;->getCallingUid()I

    move-result v1

    .line 99
    .local v1, callingUid:I
    iget-object v3, p0, Lcom/android/keychain/KeyChainService$1;->this$0:Lcom/android/keychain/KeyChainService;

    iget-object v4, p0, Lcom/android/keychain/KeyChainService$1;->this$0:Lcom/android/keychain/KeyChainService;

    iget-object v4, v4, Lcom/android/keychain/KeyChainService;->mDatabaseHelper:Lcom/android/keychain/KeyChainService$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/keychain/KeyChainService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    #calls: Lcom/android/keychain/KeyChainService;->hasGrantInternal(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Z
    invoke-static {v3, v4, v1, p2}, Lcom/android/keychain/KeyChainService;->access$000(Lcom/android/keychain/KeyChainService;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t have permission to access the requested alias"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keychain/KeyChainService$1;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 105
    .local v0, bytes:[B
    if-nez v0, :cond_3

    .line 106
    const/4 v0, 0x0

    .line 108
    .end local v0           #bytes:[B
    :cond_3
    return-object v0
.end method

.method private isKeyStoreUnlocked()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/keychain/KeyChainService$1;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 130
    .local v0, cf:Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method


# virtual methods
.method public deleteCaCertificate(Ljava/lang/String;)Z
    .locals 1
    .parameter "alias"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/keychain/KeyChainService$1;->checkSystemCaller()V

    .line 154
    invoke-direct {p0, p1}, Lcom/android/keychain/KeyChainService$1;->deleteCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCertificate(Ljava/lang/String;)[B
    .locals 1
    .parameter "alias"

    .prologue
    .line 88
    const-string v0, "USRCERT_"

    invoke-direct {p0, v0, p1}, Lcom/android/keychain/KeyChainService$1;->getKeyStoreEntry(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)[B
    .locals 1
    .parameter "alias"

    .prologue
    .line 84
    const-string v0, "USRPKEY_"

    invoke-direct {p0, v0, p1}, Lcom/android/keychain/KeyChainService$1;->getKeyStoreEntry(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public hasGrant(ILjava/lang/String;)Z
    .locals 2
    .parameter "uid"
    .parameter "alias"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/keychain/KeyChainService$1;->checkSystemCaller()V

    .line 193
    iget-object v0, p0, Lcom/android/keychain/KeyChainService$1;->this$0:Lcom/android/keychain/KeyChainService;

    iget-object v1, p0, Lcom/android/keychain/KeyChainService$1;->this$0:Lcom/android/keychain/KeyChainService;

    iget-object v1, v1, Lcom/android/keychain/KeyChainService;->mDatabaseHelper:Lcom/android/keychain/KeyChainService$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/keychain/KeyChainService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    #calls: Lcom/android/keychain/KeyChainService;->hasGrantInternal(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Z
    invoke-static {v0, v1, p1, p2}, Lcom/android/keychain/KeyChainService;->access$000(Lcom/android/keychain/KeyChainService;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public installCaCertificate([B)V
    .locals 4
    .parameter "caCertificate"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/keychain/KeyChainService$1;->checkCertInstallerOrSystemCaller()V

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/android/keychain/KeyChainService$1;->mTrustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    :try_start_1
    iget-object v1, p0, Lcom/android/keychain/KeyChainService$1;->mTrustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {p0, p1}, Lcom/android/keychain/KeyChainService$1;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    .line 120
    monitor-exit v2

    .line 126
    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 123
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 124
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reset()Z
    .locals 5

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/keychain/KeyChainService$1;->checkSystemCaller()V

    .line 136
    iget-object v3, p0, Lcom/android/keychain/KeyChainService$1;->this$0:Lcom/android/keychain/KeyChainService;

    iget-object v4, p0, Lcom/android/keychain/KeyChainService$1;->this$0:Lcom/android/keychain/KeyChainService;

    iget-object v4, v4, Lcom/android/keychain/KeyChainService;->mDatabaseHelper:Lcom/android/keychain/KeyChainService$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/keychain/KeyChainService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    #calls: Lcom/android/keychain/KeyChainService;->removeAllGrants(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v3, v4}, Lcom/android/keychain/KeyChainService;->access$100(Lcom/android/keychain/KeyChainService;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    const/4 v2, 0x1

    .line 138
    .local v2, ok:Z
    iget-object v4, p0, Lcom/android/keychain/KeyChainService$1;->mTrustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    monitor-enter v4

    .line 140
    :try_start_0
    iget-object v3, p0, Lcom/android/keychain/KeyChainService$1;->mTrustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->aliases()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, alias:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-direct {p0, v0}, Lcom/android/keychain/KeyChainService$1;->deleteCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    const/4 v2, 0x0

    goto :goto_0

    .line 147
    .end local v0           #alias:Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return v2

    .line 148
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setGrant(ILjava/lang/String;Z)V
    .locals 2
    .parameter "uid"
    .parameter "alias"
    .parameter "value"

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/keychain/KeyChainService$1;->checkSystemCaller()V

    .line 198
    iget-object v0, p0, Lcom/android/keychain/KeyChainService$1;->this$0:Lcom/android/keychain/KeyChainService;

    iget-object v1, p0, Lcom/android/keychain/KeyChainService$1;->this$0:Lcom/android/keychain/KeyChainService;

    iget-object v1, v1, Lcom/android/keychain/KeyChainService;->mDatabaseHelper:Lcom/android/keychain/KeyChainService$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/keychain/KeyChainService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    #calls: Lcom/android/keychain/KeyChainService;->setGrantInternal(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Z)V
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/keychain/KeyChainService;->access$200(Lcom/android/keychain/KeyChainService;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Z)V

    .line 199
    return-void
.end method
