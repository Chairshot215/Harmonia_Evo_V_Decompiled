.class public Lcom/google/android/finsky/ads/AdSettings;
.super Ljava/lang/Object;
.source "AdSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/ads/AdSettings$AdPrefsRequest;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/volley/RequestQueue;)V
    .locals 0
    .parameter "context"
    .parameter "queue"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/finsky/ads/AdSettings;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/google/android/finsky/ads/AdSettings;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 47
    return-void
.end method

.method private getSettingsUrl(Z)Ljava/lang/String;
    .locals 4
    .parameter "enable"

    .prologue
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.com/ads/preferences/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v2, "mobile_optin"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, baseUrl:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/ads/AdSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/finsky/ads/AdSettings;->getSigString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, sigString:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 104
    const/4 v2, 0x0

    .line 106
    :goto_1
    return-object v2

    .line 100
    .end local v0           #baseUrl:Ljava/lang/String;
    .end local v1           #sigString:Ljava/lang/String;
    :cond_0
    const-string v2, "mobile_optout"

    goto :goto_0

    .line 106
    .restart local v0       #baseUrl:Ljava/lang/String;
    .restart local v1       #sigString:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?sig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&vv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getSigString(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, androidId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 124
    .end local v0           #androidId:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 116
    .restart local v0       #androidId:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v3, v4, v0}, Lcom/google/android/finsky/ads/Crypto;->encryptMobileId(IILjava/lang/String;)[B

    move-result-object v1

    .line 118
    .local v1, sig:[B
    const/16 v3, 0xb

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    .local v2, sigString:Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0           #androidId:Ljava/lang/String;
    .end local v1           #sig:[B
    .end local v2           #sigString:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 121
    :catch_1
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public enableInterestBasedAds(ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .parameter "enable"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/ads/AdSettings;->getSettingsUrl(Z)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 87
    new-instance v2, Lcom/android/volley/VolleyError;

    invoke-direct {v2}, Lcom/android/volley/VolleyError;-><init>()V

    invoke-interface {p3, v2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/google/android/finsky/ads/AdSettings$AdPrefsRequest;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/google/android/finsky/ads/AdSettings$AdPrefsRequest;-><init>(Lcom/google/android/finsky/ads/AdSettings;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 92
    .local v0, request:Lcom/google/android/finsky/ads/AdSettings$AdPrefsRequest;
    iget-object v2, p0, Lcom/google/android/finsky/ads/AdSettings;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method
