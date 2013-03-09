.class public Lcom/android/htccontacts/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri1"
    .parameter "uri2"

    .prologue
    .line 31
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    .line 34
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "uriString"

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static uriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 50
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
