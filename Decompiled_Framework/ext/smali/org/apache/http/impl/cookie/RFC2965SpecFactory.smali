.class public Lorg/apache/http/impl/cookie/RFC2965SpecFactory;
.super Ljava/lang/Object;
.source "RFC2965SpecFactory.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 4

    if-eqz p1, :cond_0

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965Spec;

    const-string v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const-string v2, "http.protocol.single-cookie-header"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965Spec;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>()V

    goto :goto_0
.end method
