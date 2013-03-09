.class public Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCookies(Ljava/net/CookieHandler;)Z
    .locals 1

    instance-of v0, p0, Ljava/net/CookieManager;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/net/CookieManager;

    invoke-virtual {p0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCookieManager()Ljava/net/CookieHandler;
    .locals 1

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    return-object v0
.end method
