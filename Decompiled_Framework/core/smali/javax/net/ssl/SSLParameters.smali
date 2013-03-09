.class public Ljavax/net/ssl/SSLParameters;
.super Ljava/lang/Object;
.source "SSLParameters.java"


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field private needClientAuth:Z

.field private protocols:[Ljava/lang/String;

.field private wantClientAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    return v0
.end method

.method public getProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    return v0
.end method

.method public setCipherSuites([Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    return-void
.end method

.method public setProtocols([Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    return-void
.end method
