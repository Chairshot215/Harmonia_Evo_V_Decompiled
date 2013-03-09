.class public Lcom/htc/android/mail/util/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# static fields
.field private static sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3
    .parameter "insecure"

    .prologue
    .line 33
    const-class v1, Lcom/htc/android/mail/util/SSLUtils;

    monitor-enter v1

    if-eqz p0, :cond_1

    .line 34
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/util/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/net/SSLCertificateSocketFactory;->getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/util/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 37
    :cond_0
    sget-object v0, Lcom/htc/android/mail/util/SSLUtils;->sInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :goto_0
    monitor-exit v1

    return-object v0

    .line 39
    :cond_1
    :try_start_1
    sget-object v0, Lcom/htc/android/mail/util/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_2

    .line 40
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/util/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 42
    :cond_2
    sget-object v0, Lcom/htc/android/mail/util/SSLUtils;->sSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
