.class public Lcom/htc/store/util/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# static fields
.field private static final APPLICATION_DETAIL_ACTION:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field private static final APPLICATION_DETAIL_EXTRA:Ljava/lang/String; = "pkg"

.field private static final APPLICATION_DETAIL_SCHEME:Ljava/lang/String; = "package:"

.field public static final EXTRA_APPICON:Ljava/lang/String; = "com.htc.appsharing.intent.extra.APPICON"

.field public static final EXTRA_APPICONURL:Ljava/lang/String; = "com.htc.appsharing.intent.extra.APPICONURL"

.field public static final EXTRA_APPNAME:Ljava/lang/String; = "com.htc.appsharing.intent.extra.APPNAME"

.field public static final EXTRA_APPTYPE:Ljava/lang/String; = "com.htc.appsharing.intent.extra.APPTYPE"

.field public static final EXTRA_PACKAGENAME:Ljava/lang/String; = "com.htc.appsharing.intent.extra.PACKAGENAME"

.field private static final MARKET_DETAIL_PREFIX:Ljava/lang/String; = "market://details?id="

.field private static final MARKET_SEARCH_PREFIX:Ljava/lang/String; = "market://search?q=pname:"

.field private static final TAG:Ljava/lang/String;

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/htc/store/util/ActivityUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/store/util/ActivityUtils;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccount(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 281
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static detailMarketApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 58
    invoke-static {p1}, Lcom/htc/store/util/ActivityUtils;->getDetailMarketAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 60
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    :cond_0
    return-void
.end method

.method private static getCategoryListIntent(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;ZZ)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "showPromoFeatured"
    .parameter "isOperator"

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, intent:Landroid/content/Intent;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/store/activity/list/ListCategory;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "category_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    const-string v1, "show_promo_featured"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    const-string v1, "is_operator"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    sget-object v1, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getCategoryListIntent: Can not generate intent due to empty content."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDetailMarketAppIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 46
    :cond_0
    return-object v0
.end method

.method public static getIntentToAudioDetail(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .parameter "onlineId"
    .parameter "contentType"

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 341
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.sdm.activity.SoundSetDetail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v1, "online_item_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v1, "online_item_audio_type"

    invoke-static {p1}, Lcom/htc/store/util/MediaUtils;->getAudioOrSoundsetTypeStringForSDM(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    return-object v0
.end method

.method public static getIntentToStoreDetail(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "onlineId"
    .parameter "contentType"

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/store/activity/detail/DetailTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "store_inside"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    const-string v1, "online_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v1, "online_item_content_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    return-object v0
.end method

.method private static getItemListIntent(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;Z)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "isOperator"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, intent:Landroid/content/Intent;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 117
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/store/activity/list/ListItem;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "category_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    const-string v1, "is_operator"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    :goto_0
    return-object v0

    .line 121
    :cond_0
    sget-object v1, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getItemListIntent: Can not generate intent due to empty content."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getPackageIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    .line 318
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 322
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 336
    :goto_0
    return-object v1

    .line 326
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 333
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSearchMarketAppIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://search?q=pname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    :cond_0
    return-object v0
.end method

.method public static getShareIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.appsharing.action.SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    return-object v0
.end method

.method public static getShareViaIntent(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 244
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.htc.appsharing.action.SHARE_VIA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.htc.appsharing.intent.extra.APPNAME"

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v1, "com.htc.appsharing.intent.extra.PACKAGENAME"

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v1, "com.htc.appsharing.intent.extra.APPTYPE"

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v2

    invoke-static {v2}, Lcom/htc/store/module/json/JSONUtils;->getV1AppType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "com.htc.appsharing.intent.extra.APPICON"

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/store/util/ImageUtils;->getItemBmpIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    const-string v1, "com.htc.appsharing.intent.extra.APPICONURL"

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 252
    :cond_0
    return-object v0
.end method

.method public static quitStore(Landroid/content/Context;)V
    .locals 0
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    return-void
.end method

.method public static restartStore(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->restartStore(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 294
    return-void
.end method

.method public static restartStore(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.store.action.FINISH_SELF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, finishIntent:Landroid/content/Intent;
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    if-eqz p0, :cond_0

    .line 300
    sget-object v2, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Send broadcast to finsih activities."

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/store/activity/EntryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 307
    :cond_1
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    invoke-static {p0, v1}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 309
    return-void
.end method

.method public static safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 356
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 358
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 363
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    sget-object v1, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "safelyStartActivity: Empty content."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static searchMarketApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 50
    invoke-static {p1}, Lcom/htc/store/util/ActivityUtils;->getSearchMarketAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 52
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    :cond_0
    return-void
.end method

.method public static setAccount(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.cs"

    const-string v2, "com.htc.cs.activity.accountactivities.CS_login"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "IntentSource"

    const-string v2, "thirdPartyWIntro"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 273
    return-void
.end method

.method public static setAccount(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.cs"

    const-string v2, "com.htc.cs.activity.accountactivities.CS_login"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v1, "IntentSource"

    const-string v2, "thirdParty"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method public static shareItem(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 238
    invoke-static {}, Lcom/htc/store/util/ActivityUtils;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 239
    return-void
.end method

.method public static shareItemVia(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;)V
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 256
    invoke-static {p0, p1}, Lcom/htc/store/util/ActivityUtils;->getShareViaIntent(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 257
    return-void
.end method

.method public static showSettings(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/store/activity/setting/SettingMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method public static showStaticShortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "string"

    .prologue
    .line 214
    sget-object v0, Lcom/htc/store/util/ActivityUtils;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/ActivityUtils;->mToast:Landroid/widget/Toast;

    .line 216
    sget-object v0, Lcom/htc/store/util/ActivityUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    sget-object v0, Lcom/htc/store/util/ActivityUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 221
    sget-object v0, Lcom/htc/store/util/ActivityUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startActivityByIntentString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "intentString"

    .prologue
    const v3, 0x7f0a0002

    const/4 v5, 0x0

    .line 73
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 77
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/store/util/ActivityUtils;->showStaticShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    sget-object v2, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 83
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/store/util/ActivityUtils;->showStaticShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    sget-object v2, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "startActivityByIntentString: Can not start due to empty content."

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static startCategoryListActivity(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;)V
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-static {p0, p1, v1, v1}, Lcom/htc/store/util/ActivityUtils;->getCategoryListIntent(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 104
    const-string v1, "clear_cache"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 107
    :cond_0
    return-void
.end method

.method public static startCategoryListActivity(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "showPromoFeatured"
    .parameter "isOperator"

    .prologue
    .line 110
    invoke-static {p0, p1, p2, p3}, Lcom/htc/store/util/ActivityUtils;->getCategoryListIntent(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public static startDetailActivityByItemItem(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;Z)V
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "isClearTop"

    .prologue
    const/4 v2, 0x1

    .line 182
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/store/activity/detail/DetailTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "item_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const-string v1, "store_inside"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    if-eqz p2, :cond_0

    .line 187
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    :cond_0
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 193
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-object v1, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "startDetailActivityByItemItem: Can not start due to empty content."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static startDetailActivityByOnlineIdAndType(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "onlineItemId"
    .parameter "itemType"

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/htc/store/util/ActivityUtils;->startDetailActivityByOnlineIdAndType(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 163
    return-void
.end method

.method public static startDetailActivityByOnlineIdAndType(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 5
    .parameter "context"
    .parameter "onlineItemId"
    .parameter "itemType"
    .parameter "isClearTop"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 166
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/store/activity/detail/DetailTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "store_inside"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    const-string v1, "online_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "online_item_content_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    if-eqz p3, :cond_0

    .line 172
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    sget-object v1, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "start activity with clear top"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_0
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 179
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 177
    :cond_1
    sget-object v1, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "startDetailActivityByOnlineIdAndType: Can not start due to empty content."

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static startDetailActivityByPromoItem(Landroid/content/Context;Lcom/htc/store/module/vo/PromoItem;)V
    .locals 5
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 140
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/store/activity/detail/DetailTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "store_inside"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    const-string v1, "online_item_id"

    invoke-virtual {p1}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "online_item_content_type"

    invoke-virtual {p1}, Lcom/htc/store/module/vo/PromoItem;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 149
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 147
    :cond_0
    sget-object v1, Lcom/htc/store/util/ActivityUtils;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "startDetailActivityByPromoItem: Can not start due to empty content."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static startItemListActivity(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;)V
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 127
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/htc/store/util/ActivityUtils;->getItemListIntent(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;Z)Landroid/content/Intent;

    move-result-object v0

    .line 128
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 129
    const-string v1, "clear_cache"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static startItemListActivity(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;Z)V
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "isOperator"

    .prologue
    .line 135
    invoke-static {p0, p1, p2}, Lcom/htc/store/util/ActivityUtils;->getItemListIntent(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;Z)Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public static startMarket(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, market:Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public static startOnlineFriend(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.myhtc.FRIENDLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 314
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 315
    return-void
.end method

.method public static viewAppDetail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 207
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pkg"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    invoke-static {p0, v0}, Lcom/htc/store/util/ActivityUtils;->safelyStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 210
    return-void
.end method
