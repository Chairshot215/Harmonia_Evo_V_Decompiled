.class public Lorg/apache/http/impl/auth/BasicSchemeFactory;
.super Ljava/lang/Object;
.source "BasicSchemeFactory.java"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    return-object v0
.end method
