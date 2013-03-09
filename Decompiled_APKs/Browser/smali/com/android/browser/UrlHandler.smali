.class public Lcom/android/browser/UrlHandler;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/UrlHandler$RLZTask;
    }
.end annotation


# static fields
.field static final RLZ_PROVIDER:Ljava/lang/String; = "com.google.android.partnersetup.rlzappprovider"

.field static final RLZ_PROVIDER_URI:Landroid/net/Uri; = null

.field static final SCHEME_WTAI:Ljava/lang/String; = "wtai://wp/"

.field static final SCHEME_WTAI_AP:Ljava/lang/String; = "wtai://wp/ap;"

.field static final SCHEME_WTAI_MC:Ljava/lang/String; = "wtai://wp/mc;"

.field static final SCHEME_WTAI_SD:Ljava/lang/String; = "wtai://wp/sd;"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mController:Lcom/android/browser/Controller;

.field private mIsProviderPresent:Ljava/lang/Boolean;

.field private mRlzUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "content://com.google.android.partnersetup.rlzappprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/UrlHandler;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/Controller;)V
    .locals 1
    .parameter "controller"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    .line 54
    iput-object v0, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    .line 57
    iput-object p1, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    .line 58
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/UrlHandler;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/browser/UrlHandler;->getRlzUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getRlzUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, ap:Ljava/lang/String;
    sget-object v1, Lcom/android/browser/UrlHandler;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    .line 299
    .end local v0           #ap:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mRlzUri:Landroid/net/Uri;

    return-object v1
.end method

.method private isSpecializedHandlerAvailable(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 199
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 200
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x40

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 202
    .local v1, handlers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v5

    .line 205
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 206
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 207
    .local v0, filter:Landroid/content/IntentFilter;
    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v6

    if-eqz v6, :cond_2

    .line 216
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static needsRlzString(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 306
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "http"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "https"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "q"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "rlz"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 310
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, host:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 340
    .end local v2           #host:Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 314
    .restart local v2       #host:Ljava/lang/String;
    :cond_2
    const-string v6, "\\."

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, hostComponents:[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 319
    array-length v6, v3

    add-int/lit8 v1, v6, -0x2

    .line 320
    .local v1, googleComponent:I
    aget-object v0, v3, v1

    .line 321
    .local v0, component:Ljava/lang/String;
    const-string v6, "google"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 322
    array-length v6, v3

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    const-string v6, "co"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 326
    :cond_3
    array-length v6, v3

    add-int/lit8 v1, v6, -0x3

    .line 327
    const-string v6, "google"

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 333
    :cond_4
    if-lez v1, :cond_5

    const-string v6, "corp"

    add-int/lit8 v7, v1, -0x1

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 338
    :cond_5
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private rlzProviderPresent()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 286
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "com.google.android.partnersetup.rlzappprovider"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    .line 288
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/UrlHandler;->mIsProviderPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method


# virtual methods
.method handleMenuClick(Lcom/android/browser/Tab;Ljava/lang/String;)Z
    .locals 5
    .parameter "tab"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 224
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->isMenuDown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v3, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v3, p2, v0, v2, v1}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    .line 228
    iget-object v0, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 232
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 225
    goto :goto_0

    :cond_2
    move v1, v2

    .line 232
    goto :goto_1
.end method

.method shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "tab"
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v2

    .line 68
    :cond_1
    const-string v4, "wtai://wp/"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    const-string v4, "wtai://wp/mc;"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "wtai://wp/mc;"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    iget-object v2, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->closeEmptyTab()V

    move v2, v3

    .line 81
    goto :goto_0

    .line 85
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-string v4, "wtai://wp/sd;"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    const-string v4, "wtai://wp/ap;"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    :cond_3
    const-string v4, "about:"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/browser/UrlHandler;->rlzProviderPresent()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, siteUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/browser/UrlHandler;->needsRlzString(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    new-instance v4, Lcom/android/browser/UrlHandler$RLZTask;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/browser/UrlHandler$RLZTask;-><init>(Lcom/android/browser/UrlHandler;Lcom/android/browser/Tab;Landroid/net/Uri;Landroid/webkit/WebView;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/android/browser/UrlHandler$RLZTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v3

    .line 114
    goto :goto_0

    .line 118
    .end local v1           #siteUri:Landroid/net/Uri;
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/browser/UrlHandler;->startActivityForUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 119
    goto :goto_0

    .line 122
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/android/browser/UrlHandler;->handleMenuClick(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 123
    goto/16 :goto_0
.end method

.method startActivityForUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z
    .locals 9
    .parameter "tab"
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 133
    const/4 v6, 0x1

    :try_start_0
    invoke-static {p2, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 141
    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_1

    .line 142
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, packagename:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 144
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market://search?q=pname:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v5, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 152
    iget-object v5, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v5}, Lcom/android/browser/Controller;->closeEmptyTab()V

    .line 191
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #packagename:Ljava/lang/String;
    :goto_0
    return v4

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, ex:Ljava/net/URISyntaxException;
    const-string v4, "Browser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 136
    goto :goto_0

    .end local v0           #ex:Ljava/net/URISyntaxException;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #packagename:Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 155
    goto :goto_0

    .line 161
    .end local v3           #packagename:Ljava/lang/String;
    :cond_1
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 164
    if-eqz p1, :cond_3

    .line 165
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.android.browser-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 168
    :cond_2
    const-string v6, "com.android.browser.application_id"

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :cond_3
    sget-object v6, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 174
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v1}, Lcom/android/browser/UrlHandler;->isSpecializedHandlerAvailable(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 175
    goto :goto_0

    .line 178
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mActivity:Landroid/app/Activity;

    const/4 v7, -0x1

    invoke-virtual {v6, v1, v7}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 183
    iget-object v6, p0, Lcom/android/browser/UrlHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v6}, Lcom/android/browser/Controller;->closeEmptyTab()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 186
    :catch_1
    move-exception v4

    :cond_5
    move v4, v5

    .line 191
    goto/16 :goto_0
.end method
