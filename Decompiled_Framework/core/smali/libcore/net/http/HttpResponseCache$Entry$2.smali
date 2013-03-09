.class Llibcore/net/http/HttpResponseCache$Entry$2;
.super Ljava/net/SecureCacheResponse;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/net/http/HttpResponseCache$Entry;->newSecureCacheResponse(Ljava/io/InputStream;)Ljava/net/SecureCacheResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/net/http/HttpResponseCache$Entry;

.field final synthetic val$in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Llibcore/net/http/HttpResponseCache$Entry;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    iput-object p2, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/net/SecureCacheResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->val$in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$500(Llibcore/net/http/HttpResponseCache$Entry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$400(Llibcore/net/http/HttpResponseCache$Entry;)Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificateChain()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry$2;->this$0:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
