.class public Lcom/htc/android/mail/ssl/MailSslError;
.super Ljava/lang/Object;
.source "MailSslError.java"


# static fields
.field public static final SSL_EXPIRED:I = 0x1

.field public static final SSL_IDMISMATCH:I = 0x2

.field public static final SSL_MAX_ERROR:I = 0x4

.field public static final SSL_NOTYETVALID:I = 0x0

.field public static final SSL_UNTRUSTED:I = 0x3


# instance fields
.field mCertificate:Lcom/htc/android/mail/ssl/MailSslCertificate;

.field mErrors:I


# direct methods
.method public constructor <init>(ILcom/htc/android/mail/ssl/MailSslCertificate;)V
    .locals 0
    .parameter "error"
    .parameter "certificate"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ssl/MailSslError;->addError(I)Z

    .line 55
    iput-object p2, p0, Lcom/htc/android/mail/ssl/MailSslError;->mCertificate:Lcom/htc/android/mail/ssl/MailSslCertificate;

    .line 56
    return-void
.end method

.method public constructor <init>(ILjava/security/cert/X509Certificate;)V
    .locals 1
    .parameter "error"
    .parameter "certificate"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ssl/MailSslError;->addError(I)Z

    .line 65
    new-instance v0, Lcom/htc/android/mail/ssl/MailSslCertificate;

    invoke-direct {v0, p2}, Lcom/htc/android/mail/ssl/MailSslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v0, p0, Lcom/htc/android/mail/ssl/MailSslError;->mCertificate:Lcom/htc/android/mail/ssl/MailSslCertificate;

    .line 66
    return-void
.end method


# virtual methods
.method public addError(I)Z
    .locals 3
    .parameter "error"

    .prologue
    const/4 v1, 0x1

    .line 81
    if-ltz p1, :cond_1

    const/4 v2, 0x4

    if-ge p1, v2, :cond_1

    move v0, v1

    .line 82
    .local v0, rval:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 83
    iget v2, p0, Lcom/htc/android/mail/ssl/MailSslError;->mErrors:I

    shl-int/2addr v1, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/mail/ssl/MailSslError;->mErrors:I

    .line 86
    :cond_0
    return v0

    .line 81
    .end local v0           #rval:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCertificate()Lcom/htc/android/mail/ssl/MailSslCertificate;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/mail/ssl/MailSslError;->mCertificate:Lcom/htc/android/mail/ssl/MailSslCertificate;

    return-object v0
.end method

.method public getPrimaryError()I
    .locals 3

    .prologue
    .line 106
    iget v1, p0, Lcom/htc/android/mail/ssl/MailSslError;->mErrors:I

    if-eqz v1, :cond_1

    .line 108
    const/4 v0, 0x3

    .local v0, error:I
    :goto_0
    if-ltz v0, :cond_1

    .line 109
    iget v1, p0, Lcom/htc/android/mail/ssl/MailSslError;->mErrors:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 115
    .end local v0           #error:I
    :goto_1
    return v0

    .line 108
    .restart local v0       #error:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 115
    .end local v0           #error:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasError(I)Z
    .locals 5
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 94
    if-ltz p1, :cond_1

    const/4 v3, 0x4

    if-ge p1, v3, :cond_1

    move v0, v1

    .line 95
    .local v0, rval:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 96
    iget v3, p0, Lcom/htc/android/mail/ssl/MailSslError;->mErrors:I

    shl-int v4, v1, p1

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move v0, v1

    .line 99
    :cond_0
    :goto_1
    return v0

    .end local v0           #rval:Z
    :cond_1
    move v0, v2

    .line 94
    goto :goto_0

    .restart local v0       #rval:Z
    :cond_2
    move v0, v2

    .line 96
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primary error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/mail/ssl/MailSslError;->getPrimaryError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/android/mail/ssl/MailSslError;->getCertificate()Lcom/htc/android/mail/ssl/MailSslCertificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
