.class public Lcom/htc/android/mail/ssl/MailSslCertificate;
.super Landroid/net/http/SslCertificate;
.source "MailSslCertificate.java"


# instance fields
.field private mX509Certificate:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 13
    iput-object p1, p0, Lcom/htc/android/mail/ssl/MailSslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 14
    return-void
.end method


# virtual methods
.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/android/mail/ssl/MailSslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method
