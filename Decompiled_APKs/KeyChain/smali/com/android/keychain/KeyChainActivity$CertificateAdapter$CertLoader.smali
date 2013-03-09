.class Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;
.super Landroid/os/AsyncTask;
.source "KeyChainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keychain/KeyChainActivity$CertificateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapterPosition:I

.field private final mSubjectView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/keychain/KeyChainActivity$CertificateAdapter;


# direct methods
.method private constructor <init>(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;ILandroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter "adapterPosition"
    .parameter "subjectView"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->this$1:Lcom/android/keychain/KeyChainActivity$CertificateAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 318
    iput p2, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->mAdapterPosition:I

    .line 319
    iput-object p3, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->mSubjectView:Landroid/widget/TextView;

    .line 320
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;ILandroid/widget/TextView;Lcom/android/keychain/KeyChainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;-><init>(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;ILandroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 314
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 322
    iget-object v9, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->this$1:Lcom/android/keychain/KeyChainActivity$CertificateAdapter;

    #getter for: Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;
    invoke-static {v9}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->access$400(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->mAdapterPosition:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    .local v0, alias:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->this$1:Lcom/android/keychain/KeyChainActivity$CertificateAdapter;

    iget-object v9, v9, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->this$0:Lcom/android/keychain/KeyChainActivity;

    #getter for: Lcom/android/keychain/KeyChainActivity;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v9}, Lcom/android/keychain/KeyChainActivity;->access$100(Lcom/android/keychain/KeyChainActivity;)Landroid/security/KeyStore;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 324
    .local v1, bytes:[B
    if-nez v1, :cond_0

    .line 339
    :goto_0
    return-object v8

    .line 327
    :cond_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 330
    .local v5, in:Ljava/io/InputStream;
    :try_start_0
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 331
    .local v3, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .local v2, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 337
    .local v7, subjectPrincipal:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v6

    .line 338
    .local v6, subjectName:Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    const/4 v9, 0x1

    sget-object v10, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {v6, v9, v10}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, subjectString:Ljava/lang/String;
    goto :goto_0

    .line 332
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #cf:Ljava/security/cert/CertificateFactory;
    .end local v6           #subjectName:Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .end local v7           #subjectPrincipal:Ljavax/security/auth/x500/X500Principal;
    .end local v8           #subjectString:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 333
    .local v4, ignored:Ljava/security/cert/CertificateException;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 314
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "subjectString"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->this$1:Lcom/android/keychain/KeyChainActivity$CertificateAdapter;

    #getter for: Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mSubjects:Ljava/util/List;
    invoke-static {v0}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->access$800(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->mAdapterPosition:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity$CertificateAdapter$CertLoader;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method
