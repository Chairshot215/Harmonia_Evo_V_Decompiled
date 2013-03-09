.class public Lcom/htc/cslib/util/CSCookie;
.super Ljava/lang/Object;
.source "CSCookie.java"


# instance fields
.field private mCookieManager:Landroid/webkit/CookieManager;

.field private mCookieSyncManager:Landroid/webkit/CookieSyncManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cslib/util/CSCookie;->mCookieSyncManager:Landroid/webkit/CookieSyncManager;

    .line 14
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cslib/util/CSCookie;->mCookieManager:Landroid/webkit/CookieManager;

    .line 16
    return-void
.end method

.method private deleteCookie()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/cslib/util/CSCookie;->mCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    .line 37
    iget-object v0, p0, Lcom/htc/cslib/util/CSCookie;->mCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 39
    return-void
.end method


# virtual methods
.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/cslib/util/CSCookie;->mCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    .line 30
    iget-object v0, p0, Lcom/htc/cslib/util/CSCookie;->mCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "cookie"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/cslib/util/CSCookie;->mCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    .line 22
    iget-object v0, p0, Lcom/htc/cslib/util/CSCookie;->mCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method
