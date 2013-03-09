.class public final Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;
.super Ljava/security/Provider;
.source "OpenSSLProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "AndroidOpenSSL"

    const-wide/high16 v1, 0x3ff0

    const-string v3, "Android\'s OpenSSL-backed security provider"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "SSLContext.SSL"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SSLContext.SSLv3"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SSLContext.TLS"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SSLContext.TLSv1"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SSLContext.Default"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MessageDigest.SHA-1"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.MessageDigest.SHA1"

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.MessageDigest.SHA"

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.MessageDigest.1.3.14.3.2.26"

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MessageDigest.SHA-256"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA256"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.MessageDigest.SHA256"

    const-string v1, "SHA-256"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.1"

    const-string v1, "SHA-256"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MessageDigest.SHA-384"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA384"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.MessageDigest.SHA384"

    const-string v1, "SHA-384"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.2"

    const-string v1, "SHA-384"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MessageDigest.SHA-512"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$SHA512"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.MessageDigest.SHA512"

    const-string v1, "SHA-512"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.3"

    const-string v1, "SHA-512"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MessageDigest.MD5"

    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLMessageDigestJDK$MD5"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.MessageDigest.1.2.840.113549.2.5"

    const-string v1, "MD5"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
