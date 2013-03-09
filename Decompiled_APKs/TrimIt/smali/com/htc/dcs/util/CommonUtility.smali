.class public Lcom/htc/dcs/util/CommonUtility;
.super Ljava/lang/Object;
.source "CommonUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCustomHTTPHeader(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 7
    .parameter "extendSetting"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, customHeader:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 46
    const-string v5, "httpHeaderName"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "httpHeaderValue"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    const-string v5, "httpHeaderName"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, h:[Ljava/lang/String;
    const-string v5, "httpHeaderValue"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, v:[Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    array-length v5, v1

    array-length v6, v4

    if-ne v5, v6, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 52
    array-length v3, v1

    .line 53
    .local v3, totalH:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 54
    aget-object v5, v1, v2

    aget-object v6, v4, v2

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v1           #h:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #totalH:I
    .end local v4           #v:[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getHttpUtilWithCustomSetting(ZLandroid/os/Bundle;)Lcom/htc/util/http/HttpUtil;
    .locals 2
    .parameter "canRoamingAccess"
    .parameter "extendSetting"

    .prologue
    .line 19
    new-instance v0, Lcom/htc/util/http/HttpUtil;

    invoke-direct {v0}, Lcom/htc/util/http/HttpUtil;-><init>()V

    .line 20
    .local v0, httpUtil:Lcom/htc/util/http/HttpUtil;
    invoke-virtual {v0, p0}, Lcom/htc/util/http/HttpUtil;->setRoamingAccess(Z)V

    .line 22
    if-eqz p1, :cond_2

    .line 23
    const-string v1, "httpSocketTimeout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const-string v1, "httpSocketTimeout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/util/http/HttpUtil;->setSocketTimeout(I)V

    .line 26
    :cond_0
    const-string v1, "httpConnectionTimeout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    const-string v1, "httpConnectionTimeout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/util/http/HttpUtil;->setConnectionTimeout(I)V

    .line 29
    :cond_1
    const-string v1, "httpRetryTimes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    const-string v1, "httpRetryTimes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/util/http/HttpUtil;->setRetry(I)V

    .line 34
    :cond_2
    return-object v0
.end method
