.class public Lcom/google/android/finsky/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
    }
.end annotation


# static fields
.field private static final BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final MAGAZINES_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

.field private static final VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$1;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 182
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$2;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$2;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 238
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$3;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$3;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 274
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$4;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$4;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MAGAZINES_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 315
    new-instance v0, Lcom/google/android/finsky/utils/IntentUtils$5;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/IntentUtils$5;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/IntentUtils;->createLaunchIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildConsumptionAppLaunchIntent(Landroid/content/pm/PackageManager;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "packageManager"
    .parameter "contentType"
    .parameter "accountName"

    .prologue
    .line 412
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewCollectionIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildConsumptionAppManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 431
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildConsumptionAppViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "pm"
    .parameter "doc"
    .parameter "accountName"

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;->buildViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "doc"

    .prologue
    .line 535
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 538
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f070177

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    return-object v0
.end method

.method public static canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 3
    .parameter "pm"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 371
    .local v0, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static canResolveUrl(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "pm"
    .parameter "packageName"
    .parameter "url"

    .prologue
    .line 611
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 613
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static createAccountSpecificIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "context"
    .parameter
    .parameter "accountKey"
    .parameter "accountName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    return-object v0
.end method

.method public static createBrowseIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 671
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 672
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 673
    const-string v1, "com.google.android.finsky.VIEW_BROWSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string v1, "backend_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    const-string v1, "referrer_url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const-string v1, "clear_back_stack"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 678
    return-object v0
.end method

.method public static createContinueUrlIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "packageName"
    .parameter "url"

    .prologue
    .line 625
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 627
    .local v1, uri:Landroid/net/Uri$Builder;
    const-string v2, "market"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 628
    const-string v2, "details"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 629
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 630
    const-string v2, "url"

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 631
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 632
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    return-object v0
.end method

.method public static createForwardToMainActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 552
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    const-string v2, "authAccount"

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->createAccountSpecificIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 555
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 556
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    return-object v0
.end method

.method public static createIntentForReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 569
    invoke-virtual {p0, p2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 570
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 573
    .local v2, result:Landroid/content/Intent;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v2           #result:Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 578
    :cond_1
    const-string v3, "Could not find receiver for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static createLaunchIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 4
    .parameter "packageName"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "pm"

    .prologue
    const/4 v3, 0x0

    .line 584
    const/4 v0, 0x0

    .line 587
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    invoke-static {p0, p2}, Lcom/google/android/finsky/utils/IntentUtils;->createContinueUrlIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/google/android/finsky/utils/IntentUtils;->makeResolvableIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 591
    :cond_0
    if-nez v0, :cond_1

    .line 593
    invoke-virtual {p3, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 594
    if-nez v0, :cond_1

    .line 595
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v3, v3, v2}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 600
    :cond_1
    return-object v0
.end method

.method public static createSendIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "uri"

    .prologue
    .line 501
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 506
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 507
    return-object v0
.end method

.method public static createViewDocumentIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "document"

    .prologue
    .line 638
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 639
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "referrer_cookie"

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    return-object v0
.end method

.method public static createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 644
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 645
    const-string v1, "com.google.android.finsky.DETAILS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 647
    return-object v0
.end method

.method public static createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter "uri"

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 443
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 448
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 449
    return-object v0
.end method

.method public static createYouTubeIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "pm"
    .parameter "uri"
    .parameter "accountName"

    .prologue
    const/4 v2, 0x1

    .line 477
    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 480
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 483
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v1, "force_fullscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    const-string v1, "finish_on_ended"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 493
    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->makeResolvableIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static getBackendId(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 91
    const-string v0, "com.google.android.apps.books"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    .line 93
    :cond_0
    const-string v0, "com.google.android.videos"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x4

    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "com.google.android.music"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :cond_2
    const-string v0, "com.google.android.apps.magazines"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const/4 v0, 0x6

    goto :goto_0

    .line 99
    :cond_3
    const-string v0, "com.android.vending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    const/4 v0, 0x3

    goto :goto_0

    .line 102
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getConsumptionApp(Landroid/content/pm/PackageManager;I)Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;
    .locals 3
    .parameter "pm"
    .parameter "backendId"

    .prologue
    .line 389
    packed-switch p1, :pswitch_data_0

    .line 401
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->BOOKS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    .line 399
    :goto_0
    return-object v0

    .line 393
    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MY_APPS:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    .line 395
    :pswitch_3
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MUSIC_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    .line 397
    :pswitch_4
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->VIDEOS_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    .line 399
    :pswitch_5
    sget-object v0, Lcom/google/android/finsky/utils/IntentUtils;->MAGAZINES_APP:Lcom/google/android/finsky/utils/IntentUtils$ConsumptionApp;

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static getMinimumRequiredVideosAppVersion()I
    .locals 2

    .prologue
    .line 685
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/finsky/config/G;->minimumVideosVersionCodePreHoneycomb:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/google/android/finsky/config/G;->minimumVideosVersionCodeHoneycombPlus:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static getPackageName(I)Ljava/lang/String;
    .locals 1
    .parameter "backendId"

    .prologue
    .line 70
    packed-switch p0, :pswitch_data_0

    .line 82
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 72
    :pswitch_1
    const-string v0, "com.google.android.music"

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "com.google.android.videos"

    goto :goto_0

    .line 76
    :pswitch_3
    const-string v0, "com.google.android.apps.books"

    goto :goto_0

    .line 78
    :pswitch_4
    const-string v0, "com.google.android.apps.magazines"

    goto :goto_0

    .line 80
    :pswitch_5
    const-string v0, "com.android.vending"

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .parameter "pm"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 353
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v2

    .line 356
    :cond_1
    const/high16 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 358
    .local v1, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isBooksAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 1
    .parameter "pm"

    .prologue
    .line 335
    const-string v0, "com.google.android.apps.books"

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z
    .locals 3
    .parameter "pm"
    .parameter "backendId"

    .prologue
    .line 375
    packed-switch p1, :pswitch_data_0

    .line 385
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :pswitch_1
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isBooksAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    .line 383
    :goto_0
    return v0

    .line 379
    :pswitch_2
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isVideosAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_0

    .line 381
    :pswitch_3
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isMusicAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_0

    .line 383
    :pswitch_4
    invoke-static {p0}, Lcom/google/android/finsky/utils/IntentUtils;->isMagazinesAppInstalled(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static isMagazinesAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 1
    .parameter "pm"

    .prologue
    .line 348
    const-string v0, "com.google.android.apps.magazines"

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/IntentUtils;->isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isMusicAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 3
    .parameter "pm"

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.music.PLAY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, musicIntent:Landroid/content/Intent;
    const/high16 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 366
    .local v1, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isVideosAppInstalled(Landroid/content/pm/PackageManager;)Z
    .locals 4
    .parameter "pm"

    .prologue
    const/4 v1, 0x0

    .line 339
    const-string v2, "com.google.android.videos"

    invoke-static {p0, v2}, Lcom/google/android/finsky/utils/IntentUtils;->isAppInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v2

    const-string v3, "com.google.android.videos"

    invoke-interface {v2, v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v2

    iget v0, v2, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 342
    .local v0, videosVersion:I
    invoke-static {}, Lcom/google/android/finsky/utils/IntentUtils;->getMinimumRequiredVideosAppVersion()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    .line 344
    .end local v0           #videosVersion:I
    :cond_0
    return v1
.end method

.method private static makeResolvableIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .parameter "pm"
    .parameter "intent"

    .prologue
    .line 459
    const/high16 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 460
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 461
    .local v0, fallback:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 464
    .end local v0           #fallback:Landroid/content/Intent;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
