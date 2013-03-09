.class public Lgov/nist/javax/sip/header/ims/ServiceRouteList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ServiceRouteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/ServiceRoute;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3b2fa7686c711c17L


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    const-string v1, "Service-Route"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lgov/nist/javax/sip/header/ims/ServiceRouteList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/ServiceRouteList;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/ServiceRouteList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
