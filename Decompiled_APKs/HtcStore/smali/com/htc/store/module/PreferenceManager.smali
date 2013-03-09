.class public Lcom/htc/store/module/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# static fields
.field private static final DEFAULT_NOTIFICATION_SOUND_URI:Landroid/net/Uri; = null

.field private static final PREF_ACCOUNT_ID:Ljava/lang/String; = "com.hstc.store.account.id"

.field private static final PREF_BUY_URI:Ljava/lang/String; = "com.htc.store.buy.uri"

.field private static final PREF_CATEGORY_URI:Ljava/lang/String; = "com.htc.store.category.uri"

.field private static final PREF_COMMENT_LIKE_COUNT_URI:Ljava/lang/String; = "com.htc.store.commentlike.count.uri"

.field private static final PREF_COMMENT_URI:Ljava/lang/String; = "com.htc.store.comment.uri"

.field private static final PREF_CURRENCY_PREFIX:Ljava/lang/String; = "com.htc.store.currency.prefix"

.field private static final PREF_CURRENCY_SUFFIX:Ljava/lang/String; = "com.htc.store.currency.suffix"

.field private static final PREF_DETAIL_URI:Ljava/lang/String; = "com.htc.store.detail.uri"

.field private static final PREF_FEATURED_URI:Ljava/lang/String; = "com.htc.store.featured.uri"

.field private static final PREF_FILTER_TYPE_IN_MY_ACTIVITY:Ljava/lang/String; = "com.htc.store.filter.type.in.my.activity"

.field private static final PREF_FIRST_LAUNCH:Ljava/lang/String; = "com.htc.store.first.launch"

.field private static final PREF_FIRST_SYNC_MY_ACTIVITY:Ljava/lang/String; = "com.htc.store.first.sync.my.activity"

.field private static final PREF_FRIENDS_COMMENTS_AND_LIKES_URI:Ljava/lang/String; = "com.htc.store.friends.comments.and.likes.uri"

.field private static final PREF_FRIEND_COMMENTS_AND_LIKES_URI:Ljava/lang/String; = "com.htc.store.friend.comments.and.likes.uri"

.field private static final PREF_FRIEND_FEEDBACK_URI:Ljava/lang/String; = "com.htc.store.friend.feedback.uri"

.field private static final PREF_GET_MARKED_ITEMS_URI:Ljava/lang/String; = "com.htc.store.get.marked.items.uri"

.field private static final PREF_GET_MORE_URI:Ljava/lang/String; = "com.htc.store.get.more.uri"

.field private static final PREF_IMAGE_TTL:Ljava/lang/String; = "com.htc.store.image.ttl"

.field private static final PREF_ITEMLIST_URI:Ljava/lang/String; = "com.htc.store.itemlist.uri"

.field private static final PREF_LANGUAGE:Ljava/lang/String; = "com.htc.store.language"

.field private static final PREF_LAST_TIME_MILLIS_CHECK_UPDATES:Ljava/lang/String; = "pref_last_time_millis_check_updates"

.field private static final PREF_LAST_TIME_MILLIS_CLEAR_CACHED_IMAGES:Ljava/lang/String; = "pref_last_time_millis_clear_cached_images"

.field private static final PREF_LIKE_URI:Ljava/lang/String; = "com.htc.store.like.uri"

.field private static final PREF_LOCALE:Ljava/lang/String; = "com.htc.store.locale"

.field private static final PREF_MARKITEM_URI:Ljava/lang/String; = "com.htc.store.markitem.uri"

.field private static final PREF_NAME:Ljava/lang/String; = "com.htc.store_preferences"

.field private static final PREF_NAVLIST_URI:Ljava/lang/String; = "com.htc.store.navlist.uri"

.field public static final PREF_NOTIFICATION_SOUND:Ljava/lang/String; = "pref_notification_sound"

.field public static final PREF_NOTIFICATION_SOUND_SWITCH:Ljava/lang/String; = "pref_notification_sound_switch"

.field public static final PREF_NOTIFICATION_SWITCH_MARKED_ITEMS:Ljava/lang/String; = "pref_notification_switch_marked_items"

.field public static final PREF_NOTIFICATION_SWITCH_UPDATES:Ljava/lang/String; = "pref_notification_switch_updates"

.field public static final PREF_NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_notification_vibrate"

.field private static final PREF_OPERATOR:Ljava/lang/String; = "com.htc.store.poerator"

.field private static final PREF_OPERATOR_URI:Ljava/lang/String; = "com.htc.store.operator.uri"

.field private static final PREF_ORDER_HISTORY_URI:Ljava/lang/String; = "com.htc.store.order.history.uri"

.field private static final PREF_PROMO_ROTATION_TIME:Ljava/lang/String; = "com.htc.store.promo.rotation.time"

.field private static final PREF_PROMO_URI:Ljava/lang/String; = "com.htc.store.promo.uri"

.field private static final PREF_RELAUNCH_NEXT_TIME:Ljava/lang/String; = "pref_relaunch_next_time"

.field private static final PREF_SETUP_TTL:Ljava/lang/String; = "com.htc.store.setup.ttl"

.field private static final PREF_SETUP_VERSION:Ljava/lang/String; = "com.htc.store.setup.version"

.field private static final PREF_SIMILAR_URI:Ljava/lang/String; = "com.htc.store.similar.uri"

.field private static final PREF_TAB_RESOURCE_DOWNLOADED:Ljava/lang/String; = "com.htc.store.tab.downloaded"

.field private static final PREF_TRACKING_CAMPAIGN_PARAMETER:Ljava/lang/String; = "com.htc.store.tracking.campaign.parameter"

.field private static final PREF_USE_DEFAULT_IMAGE:Ljava/lang/String; = "pref_use_default_image"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/PreferenceManager;->TAG:Ljava/lang/String;

    .line 67
    const-string v0, "content://settings/system/notification_sound"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/PreferenceManager;->DEFAULT_NOTIFICATION_SOUND_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "com.htc.store_preferences"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    .line 75
    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.hstc.store.account.id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuyURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.buy.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.category.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentLikeURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.commentlike.count.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.comment.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.currency.prefix"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencySuffix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.currency.suffix"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.detail.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturedURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.featured.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterTypeInMyActivity()I
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.filter.type.in.my.activity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFriendCommentsAndLikesURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.friend.comments.and.likes.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendFeedbackURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.friend.feedback.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsCommentsAndLikesURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.friends.comments.and.likes.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGetMarkedItemsURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.get.marked.items.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGetMoreURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.get.more.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageTTL()J
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.image.ttl"

    const-wide/32 v2, 0x5265c00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemlistURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.itemlist.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.language"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastTimeMillisCheckUpdates()J
    .locals 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_last_time_millis_check_updates"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastTimeMillisClearCachedImages()J
    .locals 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_last_time_millis_clear_cached_images"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLikeURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.like.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.locale"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarkItemURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.markitem.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavlistURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.navlist.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationSound()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_notification_sound"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, uriString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    .line 449
    :cond_0
    sget-object v0, Lcom/htc/store/module/PreferenceManager;->DEFAULT_NOTIFICATION_SOUND_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.poerator"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.operator.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderHistoryURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.order.history.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromoRotationTimeInSecond()I
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.promo.rotation.time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPromoURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.promo.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelaunchNextTime()Z
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_relaunch_next_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSetupTTL()J
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.setup.ttl"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSetupVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.setup.version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimilarURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.similar.uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingCampaignParameter()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.tracking.campaign.parameter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseDefaultImages()Ljava/lang/String;
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_use_default_image"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAlreadyFirstSync()Z
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.first.sync.my.activity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstLaunch()Z
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.first.launch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isMarkedItemsNotificationEnabled()Z
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_notification_switch_marked_items"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotificationSoundEnabled()Z
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_notification_sound_switch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotificationVibrateEnabled()Z
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_notification_vibrate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTabResourceDownloaded()Z
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "com.htc.store.tab.downloaded"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUpdatesNotificationEnabled()Z
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_notification_switch_updates"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.hstc.store.account.id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 363
    return-void
.end method

.method public setBuyURI(Ljava/lang/String;)V
    .locals 2
    .parameter "buyURI"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.buy.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    return-void
.end method

.method public setCategoryURI(Ljava/lang/String;)V
    .locals 2
    .parameter "categoryURI"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.category.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    return-void
.end method

.method public setCommentLikeURI(Ljava/lang/String;)V
    .locals 2
    .parameter "likeCommentURI"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.commentlike.count.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 261
    return-void
.end method

.method public setCommentURI(Ljava/lang/String;)V
    .locals 2
    .parameter "commentsUrl"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 249
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.comment.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    return-void
.end method

.method public setCurrencyPrefix(Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"

    .prologue
    .line 308
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.currency.prefix"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 311
    return-void
.end method

.method public setCurrencySuffix(Ljava/lang/String;)V
    .locals 2
    .parameter "suffix"

    .prologue
    .line 318
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 319
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.currency.suffix"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    return-void
.end method

.method public setDetailURI(Ljava/lang/String;)V
    .locals 2
    .parameter "detailURI"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.detail.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    return-void
.end method

.method public setFeaturedURI(Ljava/lang/String;)V
    .locals 2
    .parameter "featuredURI"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.featured.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    return-void
.end method

.method public setFilterTypeInMyActivity(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 410
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.filter.type.in.my.activity"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 412
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 413
    return-void
.end method

.method public setFirstLaunch(Z)V
    .locals 2
    .parameter "isFirstLaunch"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 381
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.first.launch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 383
    return-void
.end method

.method public setFirstSyncMyActivity(Z)V
    .locals 2
    .parameter "isFirstSync"

    .prologue
    .line 390
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 391
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.first.sync.my.activity"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 393
    return-void
.end method

.method public setFriendCommentsAndLikesURI(Ljava/lang/String;)V
    .locals 2
    .parameter "friendCommentsLikesURI"

    .prologue
    .line 278
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 279
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.friend.comments.and.likes.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    return-void
.end method

.method public setFriendFeedbackURI(Ljava/lang/String;)V
    .locals 2
    .parameter "friendFeedbackURI"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.friend.feedback.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 271
    return-void
.end method

.method public setFriendsCommentsAndLikesURI(Ljava/lang/String;)V
    .locals 2
    .parameter "friendsCommentsLikesURI"

    .prologue
    .line 288
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 289
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.friends.comments.and.likes.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    return-void
.end method

.method public setGetMarkedItemsURI(Ljava/lang/String;)V
    .locals 2
    .parameter "getItemsMarkedURI"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.get.marked.items.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    return-void
.end method

.method public setGetMoreURI(Ljava/lang/String;)V
    .locals 2
    .parameter "getMoreURI"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.get.more.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    return-void
.end method

.method public setImageTTL(J)V
    .locals 2
    .parameter "ttl"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.image.ttl"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    return-void
.end method

.method public setItemlistURI(Ljava/lang/String;)V
    .locals 2
    .parameter "itemlistURI"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.itemlist.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2
    .parameter "language"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 339
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.language"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 342
    return-void
.end method

.method public setLastTimeMillisCheckUpdates(J)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 459
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 460
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_last_time_millis_check_updates"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 461
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 462
    return-void
.end method

.method public setLastTimeMillisClearCachedImages(J)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 469
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 470
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_last_time_millis_clear_cached_images"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 472
    return-void
.end method

.method public setLikeURI(Ljava/lang/String;)V
    .locals 2
    .parameter "likesUrl"

    .prologue
    .line 238
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.like.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 350
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 351
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.locale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 353
    return-void
.end method

.method public setMarkItemURI(Ljava/lang/String;)V
    .locals 2
    .parameter "markitemURI"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.markitem.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    return-void
.end method

.method public setNavlistURI(Ljava/lang/String;)V
    .locals 2
    .parameter "navlistURI"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.navlist.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    return-void
.end method

.method public setNotificationSound(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 436
    if-eqz p1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 438
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_notification_sound"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 439
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 441
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 2
    .parameter "operator"

    .prologue
    .line 370
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 371
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.poerator"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 373
    return-void
.end method

.method public setOperatorURI(Ljava/lang/String;)V
    .locals 2
    .parameter "operatorURI"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.operator.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    return-void
.end method

.method public setOrderHistoryURI(Ljava/lang/String;)V
    .locals 2
    .parameter "orderHistoryURI"

    .prologue
    .line 218
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.order.history.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    return-void
.end method

.method public setPromoRotationTime(Ljava/lang/String;)V
    .locals 3
    .parameter "time"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.promo.rotation.time"

    invoke-static {p1}, Lcom/htc/store/util/DateTimeUtils;->toSeconds(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    return-void
.end method

.method public setPromoURI(Ljava/lang/String;)V
    .locals 2
    .parameter "promoURI"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.promo.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    return-void
.end method

.method public setRelaunchNextTime(Z)V
    .locals 2
    .parameter "isRelaunch"

    .prologue
    .line 485
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 486
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_relaunch_next_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 488
    return-void
.end method

.method public setSetupTTL(J)V
    .locals 2
    .parameter "ttl"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.setup.ttl"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    return-void
.end method

.method public setSetupVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "setupVersion"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.setup.version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    return-void
.end method

.method public setSimilarURI(Ljava/lang/String;)V
    .locals 2
    .parameter "similarURI"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.similar.uri"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    return-void
.end method

.method public setTabResourceDownloaded(Z)V
    .locals 2
    .parameter "downloaded"

    .prologue
    .line 400
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.tab.downloaded"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 403
    return-void
.end method

.method public setTrackingCampaignParameter(Ljava/lang/String;)V
    .locals 2
    .parameter "parameter"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 329
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.htc.store.tracking.campaign.parameter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    return-void
.end method

.method public setUseDefaultImages(Ljava/lang/String;)V
    .locals 2
    .parameter "onlineIds"

    .prologue
    .line 475
    iget-object v1, p0, Lcom/htc/store/module/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 476
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_use_default_image"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 478
    return-void
.end method
