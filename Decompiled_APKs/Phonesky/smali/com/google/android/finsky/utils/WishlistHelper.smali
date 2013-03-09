.class public Lcom/google/android/finsky/utils/WishlistHelper;
.super Ljava/lang/Object;
.source "WishlistHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static isInWishlist(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z
    .locals 5
    .parameter "document"
    .parameter "account"

    .prologue
    .line 49
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v3, "u-wl"

    const/4 v4, 0x1

    invoke-static {v2, v3, p0, v4}, Lcom/google/android/finsky/library/LibraryEntry;->fromDocument(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v1

    .line 51
    .local v1, entry:Lcom/google/android/finsky/library/LibraryEntry;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v0

    .line 53
    .local v0, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/AccountLibrary;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z

    move-result v2

    return v2
.end method

.method public static processWishlistClick(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V
    .locals 10
    .parameter "document"
    .parameter "dfeApi"
    .parameter "listener"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 63
    if-nez p0, :cond_0

    .line 64
    const-string v4, "Tried to wishlist an item but there is no document active"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-interface {p1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/android/finsky/utils/WishlistHelper;->isInWishlist(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v1

    .line 69
    .local v1, wasInWishlist:Z
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, docId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, docTitle:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 72
    .local v2, res:Landroid/content/res/Resources;
    new-instance v6, Lcom/google/android/finsky/utils/WishlistHelper$1;

    invoke-direct {v6, p1}, Lcom/google/android/finsky/utils/WishlistHelper$1;-><init>(Lcom/google/android/finsky/api/DfeApi;)V

    .line 82
    .local v6, modifyResponseListener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;>;"
    new-instance v0, Lcom/google/android/finsky/utils/WishlistHelper$2;

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/WishlistHelper$2;-><init>(ZLandroid/content/res/Resources;Ljava/lang/String;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Ljava/lang/String;)V

    .line 98
    .local v0, errorListener:Lcom/android/volley/Response$ErrorListener;
    if-eqz v1, :cond_1

    .line 99
    new-array v4, v7, [Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v4}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v9, "u-wl"

    invoke-interface {p1, v4, v9, v6, v0}, Lcom/google/android/finsky/api/DfeApi;->removeFromLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 107
    :goto_1
    if-nez v1, :cond_2

    move v4, v7

    :goto_2
    invoke-interface {p2, v5, v4}, Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;->onWishlistStatusChanged(Ljava/lang/String;Z)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    const v9, 0x7f070261

    invoke-static {v4, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 104
    new-array v4, v7, [Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v4}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v9, "u-wl"

    invoke-interface {p1, v4, v9, v6, v0}, Lcom/google/android/finsky/api/DfeApi;->addToLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_1

    :cond_2
    move v4, v8

    .line 107
    goto :goto_2
.end method

.method public static processWishlistClick(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V
    .locals 1
    .parameter "navigationManager"
    .parameter "dfeApi"
    .parameter "listener"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/WishlistHelper;->processWishlistClick(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V

    .line 59
    return-void
.end method

.method public static shouldHideWishlistAction(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;)Z
    .locals 7
    .parameter "document"
    .parameter "dfeApi"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 31
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-static {p0, v3, v6}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    .line 34
    .local v2, owner:Landroid/accounts/Account;
    const/4 v1, 0x0

    .line 35
    .local v1, isInstalled:Z
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, appPackageName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v3

    if-eqz v3, :cond_3

    move v1, v4

    .line 41
    .end local v0           #appPackageName:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    sget-object v3, Lcom/google/android/finsky/config/G;->wishlistEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v5, v4

    .line 45
    :cond_2
    return v5

    .restart local v0       #appPackageName:Ljava/lang/String;
    :cond_3
    move v1, v5

    .line 37
    goto :goto_0
.end method
