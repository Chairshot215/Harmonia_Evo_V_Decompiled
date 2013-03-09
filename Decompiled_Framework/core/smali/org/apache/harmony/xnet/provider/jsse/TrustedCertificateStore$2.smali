.class Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$2;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isTrustAnchor(Ljava/security/cert/X509Certificate;)Z
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

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$2;->this$0:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$2;->val$c:Ljava/security/cert/X509Certificate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/X509Certificate;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$2;->val$c:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
