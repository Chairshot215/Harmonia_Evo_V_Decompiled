.class public Lgov/nist/javax/sip/header/ProxyAuthorizationList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ProxyAuthorizationList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ProxyAuthorization;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    const-string v1, "Proxy-Authorization"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthorizationList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthorizationList;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ProxyAuthorizationList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    return-object v0
.end method
