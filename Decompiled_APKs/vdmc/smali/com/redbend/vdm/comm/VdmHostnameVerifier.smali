.class Lcom/redbend/vdm/comm/VdmHostnameVerifier;
.super Ljava/lang/Object;
.source "VdmHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
