.class public Lorg/apache/http/cookie/CookiePathComparator;
.super Ljava/lang/Object;
.source "CookiePathComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/http/cookie/Cookie;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x68695b9a07ff953aL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private normalizePath(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "/"

    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/http/cookie/Cookie;

    check-cast p2, Lorg/apache/http/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/cookie/CookiePathComparator;->compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/apache/http/cookie/CookiePathComparator;->normalizePath(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/http/cookie/CookiePathComparator;->normalizePath(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
