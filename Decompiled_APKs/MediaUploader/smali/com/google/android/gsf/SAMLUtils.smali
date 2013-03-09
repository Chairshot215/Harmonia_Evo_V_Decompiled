.class public Lcom/google/android/gsf/SAMLUtils;
.super Ljava/lang/Object;
.source "SAMLUtils.java"


# static fields
.field private static final DEFAULT_HOSTED_BASE_PATH:Ljava/lang/String; = "https://www.google.com"

.field private static final HOSTED_PREFIX:Ljava/lang/String; = "/a/"

.field private static final TEST_GAIA_HOSTED_BASE_PATH:Ljava/lang/String; = "http://dasher-qa.corp.google.com"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static extractCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 109
    if-nez p0, :cond_0

    .line 110
    const-string v0, ""

    .line 119
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const-string v0, "; "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    array-length v1, v0

    move v2, v6

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 114
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 115
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    aget-object v4, v3, v6

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    const/4 v0, 0x1

    aget-object v0, v3, v0

    goto :goto_0

    .line 113
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static extractHID(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-static {v2, p1}, Lcom/google/android/gsf/SAMLUtils;->makeHIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HID"

    invoke-static {v0, v1}, Lcom/google/android/gsf/SAMLUtils;->extractCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-static {v2, p1}, Lcom/google/android/gsf/SAMLUtils;->makeLSIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSID"

    invoke-static {v0, v1}, Lcom/google/android/gsf/SAMLUtils;->extractCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    return-object v0
.end method

.method private static final getHostedBaseUrl(Z)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "http://dasher-qa.corp.google.com"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/a/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "https://www.google.com"

    goto :goto_0
.end method

.method private static makeHIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/google/android/gsf/SAMLUtils;->makeHostedGaiaBasePath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeHostedGaiaBasePath(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/android/gsf/SAMLUtils;->getHostedBaseUrl(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeLSIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    if-eqz p0, :cond_0

    const-string v0, "http://dasher-qa.corp.google.com"

    .line 79
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accounts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    const-string v0, "https://www.google.com"

    goto :goto_0
.end method

.method public static makeWebLoginStartUrl(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/google/android/gsf/SAMLUtils;->makeHostedGaiaBasePath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ServiceLogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
