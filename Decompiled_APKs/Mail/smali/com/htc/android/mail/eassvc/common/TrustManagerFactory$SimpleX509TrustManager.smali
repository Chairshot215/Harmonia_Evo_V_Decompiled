.class Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SimpleX509TrustManager;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleX509TrustManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory$SimpleX509TrustManager;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .parameter "chain"
    .parameter "authType"

    .prologue
    .line 45
    const-string v0, "Trusting client"

    const/4 v1, 0x0

    #calls: Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->logCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    invoke-static {p1, v0, v1}, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->access$100([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .parameter "chain"
    .parameter "authType"

    .prologue
    .line 49
    const-string v0, "Trusting server"

    const/4 v1, 0x0

    #calls: Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->logCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V
    invoke-static {p1, v0, v1}, Lcom/htc/android/mail/eassvc/common/TrustManagerFactory;->access$100([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method
