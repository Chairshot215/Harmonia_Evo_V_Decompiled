.class public Ljavax/net/ssl/HandshakeCompletedEvent;
.super Ljava/util/EventObject;
.source "HandshakeCompletedEvent.java"


# instance fields
.field private transient session:Ljavax/net/ssl/SSLSession;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    return-void
.end method


# virtual methods
.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public getSocket()Ljavax/net/ssl/SSLSocket;
    .locals 1

    iget-object v0, p0, Ljava/util/EventObject;->source:Ljava/lang/Object;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method
