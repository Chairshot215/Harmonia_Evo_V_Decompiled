.class Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/encrypt/CertInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavingTrustManager"
.end annotation


# instance fields
.field private chain:[Ljava/security/cert/X509Certificate;

.field private final tm:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0
    .parameter "tm"

    .prologue
    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;->tm:Ljavax/net/ssl/X509TrustManager;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;->chain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;->chain:[Ljava/security/cert/X509Certificate;

    .line 211
    iget-object v0, p0, Lcom/android/providers/htcCheckin/encrypt/CertInstaller$SavingTrustManager;->tm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
