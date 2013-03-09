.class Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$3;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field final synthetic val$c:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$3;->this$0:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$3;->val$c:Ljava/security/cert/X509Certificate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/X509Certificate;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$3;->val$c:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method
