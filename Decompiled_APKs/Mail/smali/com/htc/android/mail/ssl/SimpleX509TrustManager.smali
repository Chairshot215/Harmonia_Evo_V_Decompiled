.class public Lcom/htc/android/mail/ssl/SimpleX509TrustManager;
.super Ljava/lang/Object;
.source "SimpleX509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field public chain:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/android/mail/ssl/SimpleX509TrustManager;->chain:[Ljava/security/cert/X509Certificate;

    .line 13
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/android/mail/ssl/SimpleX509TrustManager;->chain:[Ljava/security/cert/X509Certificate;

    .line 18
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method
