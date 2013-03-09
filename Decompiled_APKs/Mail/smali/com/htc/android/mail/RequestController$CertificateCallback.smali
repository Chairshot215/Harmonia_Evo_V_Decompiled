.class public Lcom/htc/android/mail/RequestController$CertificateCallback;
.super Ljava/lang/Object;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificateCallback"
.end annotation


# instance fields
.field private mAcceptRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mMailSslError:Lcom/htc/android/mail/ssl/MailSslError;

.field private mRejectRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1646
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1647
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mContext:Landroid/content/Context;

    .line 1648
    return-void
.end method

.method private storeCertificate(Lcom/htc/android/mail/ssl/MailSslError;)V
    .locals 11
    .parameter "error"

    .prologue
    .line 1681
    const/4 v3, 0x0

    .line 1684
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v8, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mContext:Landroid/content/Context;

    const-string v9, "keystore"

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1690
    :goto_0
    :try_start_1
    iget-object v8, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mContext:Landroid/content/Context;

    const-string v9, "keystore"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1693
    .local v6, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v8, "pwd"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1695
    .local v7, pwd:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 1696
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1697
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1698
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "pwd"

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1699
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1702
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 1703
    .local v5, ks:Ljava/security/KeyStore;
    if-eqz v3, :cond_1

    .line 1704
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v5, v3, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1705
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1711
    :goto_1
    iget-object v8, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mContext:Landroid/content/Context;

    const-string v9, "keystore"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 1712
    .local v4, fos:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Lcom/htc/android/mail/ssl/MailSslError;->getCertificate()Lcom/htc/android/mail/ssl/MailSslCertificate;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/android/mail/ssl/MailSslCertificate;->getX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 1713
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1714
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1725
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #ks:Ljava/security/KeyStore;
    .end local v6           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v7           #pwd:Ljava/lang/String;
    :goto_2
    return-void

    .line 1685
    :catch_0
    move-exception v1

    .line 1686
    .local v1, e:Ljava/io/IOException;
    const-string v8, "RequestController"

    const-string v9, "IOException "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1707
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #ks:Ljava/security/KeyStore;
    .restart local v6       #mSharedPreferences:Landroid/content/SharedPreferences;
    .restart local v7       #pwd:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 1716
    .end local v5           #ks:Ljava/security/KeyStore;
    .end local v6           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v7           #pwd:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1717
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v8, "RequestController"

    const-string v9, "Unable to get X509 Trust Manager "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1718
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 1719
    .local v1, e:Ljava/security/KeyStoreException;
    const-string v8, "RequestController"

    const-string v9, "Key Store exception while initializing TrustManagerFactory "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1720
    .end local v1           #e:Ljava/security/KeyStoreException;
    :catch_3
    move-exception v1

    .line 1721
    .local v1, e:Ljava/io/IOException;
    const-string v8, "RequestController"

    const-string v9, "IOException "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1722
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 1723
    .local v1, e:Ljava/security/cert/CertificateException;
    const-string v8, "RequestController"

    const-string v9, "CertificateException "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public acceptCertificate()V
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mAcceptRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mMailSslError:Lcom/htc/android/mail/ssl/MailSslError;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/RequestController$CertificateCallback;->storeCertificate(Lcom/htc/android/mail/ssl/MailSslError;)V

    .line 1669
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mAcceptRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1671
    :cond_0
    return-void
.end method

.method public getMailSslError()Lcom/htc/android/mail/ssl/MailSslError;
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mMailSslError:Lcom/htc/android/mail/ssl/MailSslError;

    return-object v0
.end method

.method public rejectCertificate()V
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mRejectRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mRejectRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1677
    :cond_0
    return-void
.end method

.method public setAcceptCertificateCallback(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mAcceptRunnable:Ljava/lang/Runnable;

    .line 1660
    return-void
.end method

.method public setMailSslError(Lcom/htc/android/mail/ssl/MailSslError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mMailSslError:Lcom/htc/android/mail/ssl/MailSslError;

    .line 1652
    return-void
.end method

.method public setRejectCertificateCallback(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$CertificateCallback;->mRejectRunnable:Ljava/lang/Runnable;

    .line 1664
    return-void
.end method
