.class public final Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$1;,
        Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SecureX509TrustManager;,
        Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SimpleX509TrustManager;
    }
.end annotation


# static fields
.field private static sUnsecureTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SimpleX509TrustManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SimpleX509TrustManager;-><init>(Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$1;)V

    sput-object v0, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->sUnsecureTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method static synthetic access$100([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->logCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    return-void
.end method

.method public static get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;
    .locals 2
    .parameter "host"
    .parameter "secure"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    new-instance v0, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SecureX509TrustManager;

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SecureX509TrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->sUnsecureTrustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_0
.end method

.method private static logCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    .locals 0
    .parameter "chain"
    .parameter "caller"
    .parameter "verbose"

    .prologue
    .line 110
    return-void
.end method
