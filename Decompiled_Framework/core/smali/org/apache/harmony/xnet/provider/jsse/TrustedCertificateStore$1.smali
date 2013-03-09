.class Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$1;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field final synthetic val$x:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$1;->val$x:Ljava/security/cert/X509Certificate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/X509Certificate;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore$1;->val$x:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
