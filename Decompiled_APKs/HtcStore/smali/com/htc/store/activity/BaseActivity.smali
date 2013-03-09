.class public Lcom/htc/store/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/BaseActivity$BaseUiHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CHECK_UPDATES:Ljava/lang/String; = "com.htc.store.action.CHECK_UPDATES"

.field public static final ACTION_CLEAR_CACHED_IMAGES:Ljava/lang/String; = "com.htc.store.action.CLEAR_CACHED_IMAGES"

.field public static final ACTION_DOWNLOAD_ITEM:Ljava/lang/String; = "com.htc.store.action.DOWNLOAD_ITEM"

.field public static final ACTION_DOWNLOAD_SOUNDSET:Ljava/lang/String; = "com.htc.store.action.DOWNLOAD_SOUNDSET"

.field public static final ACTION_FINISH_SELF:Ljava/lang/String; = "com.htc.store.action.FINISH_SELF"

.field public static final ACTION_GET_MY_ACTIVITY_ONLINE_ITEM_IDS:Ljava/lang/String; = "com.htc.store.action.GET_MY_ACTIVITY_ONLINE_ITEM_IDS"

.field public static final ACTION_GET_MY_ACTIVITY_ONLINE_ITEM_IDS_RESULT:Ljava/lang/String; = "com.htc.store.action.ACTION_GET_MY_ACTIVITY_ONLINE_ITEM_IDS_RESULT"

.field public static final ACTION_GET_ONLINE_ITEMS:Ljava/lang/String; = "com.htc.store.action.GET_ONLINE_ITEMS"

.field public static final ACTION_GET_ONLINE_ITEMS_RESULT:Ljava/lang/String; = "com.htc.store.action.GET_ONLINE_ITEMS_RESULT"

.field public static final ACTION_INITIALIZE_DOWNLOAD_SOUNDSET_TASK:Ljava/lang/String; = "com.htc.store.action.INITIALIZE_DOWNLOAD_SOUNDSET_TASK"

.field public static final ACTION_NOTIFY_OAD:Ljava/lang/String; = "com.htc.store.action.NOTIFY_OAD"

.field public static final ACTION_NOTIFY_SDM:Ljava/lang/String; = "com.htc.store.action.NOTIFY_SDM"

.field public static final ACTION_SHOW_INSTALL_STATUS:Ljava/lang/String; = "com.htc.store.action.SHOW.INSTALL.STATUS"

.field public static final ACTION_UPDATE_DOWNLOAD_STATUS:Ljava/lang/String; = "com.htc.store.action.UPDATE_DOWNLOAD_STATUS"

.field private static final DIALOG_COMMON_ERROR:I = -0x4

.field private static final DIALOG_COMMON_ERROR_TO_FINISH:I = -0x5

.field private static final DIALOG_INTERNAL_STORAGE_LOW_CANCEL_TO_FINISH:I = -0x6

.field private static final DIALOG_NO_NETWORK:I = -0x1

.field private static final DIALOG_NO_NETWORK_CANCEL_TO_FINISH:I = -0x3

.field private static final DIALOG_NO_NETWORK_TO_FINISH:I = -0x2

.field public static final EXTRA_CATEGORY_ITEM:Ljava/lang/String; = "category_item"

.field public static final EXTRA_CLEAR_CACHE_WHEN_DESTROY:Ljava/lang/String; = "clear_cache"

.field public static final EXTRA_DEFAULT_TAB:Ljava/lang/String; = "default_tab"

.field public static final EXTRA_DEFAULT_TAB_DETAIL:Ljava/lang/String; = "default_tab_detail"

.field public static final EXTRA_DIRECT_TO_KEY:Ljava/lang/String; = "direct_to"

.field public static final EXTRA_DIRECT_TO_VALUE_DETAIL:Ljava/lang/String; = "direct_to_detail"

.field public static final EXTRA_DIRECT_TO_VALUE_MY_ACTIVITY:Ljava/lang/String; = "direct_to_my_activity"

.field public static final EXTRA_IS_OPERATOR:Ljava/lang/String; = "is_operator"

.field public static final EXTRA_ITEM_ACTION_KEY:Ljava/lang/String; = "online_item_action"

.field public static final EXTRA_ITEM_ACTION_VALUE_CANCEL_DL:I = 0x1

.field public static final EXTRA_ITEM_ACTION_VALUE_DOWNLOAD:I = 0x0

.field public static final EXTRA_ITEM_ACTION_VALUE_GO_TO:I = 0x2

.field public static final EXTRA_ITEM_ACTION_VALUE_UNINSTALL:I = 0x3

.field public static final EXTRA_ITEM_ACTION_VALUE_UNKNOWN:I = -0x1

.field public static final EXTRA_ITEM_DOWNLOAD_FOR_UPDATE:Ljava/lang/String; = "item_download_for_update"

.field public static final EXTRA_ITEM_DOWNLOAD_MESSAGE:Ljava/lang/String; = "download_message"

.field public static final EXTRA_ITEM_DOWNLOAD_SRC:Ljava/lang/String; = "item_download_src"

.field public static final EXTRA_ITEM_DOWNLOAD_STATUS_KEY:Ljava/lang/String; = "download_status"

.field public static final EXTRA_ITEM_DOWNLOAD_STATUS_VALUE_DOWNLOADED:I = 0x2

.field public static final EXTRA_ITEM_DOWNLOAD_STATUS_VALUE_DOWNLOADING:I = 0x1

.field public static final EXTRA_ITEM_DOWNLOAD_STATUS_VALUE_DOWNLOADING_FOR_UPDATE:I = 0x5

.field public static final EXTRA_ITEM_DOWNLOAD_STATUS_VALUE_INSTALLING:I = 0x3

.field public static final EXTRA_ITEM_DOWNLOAD_STATUS_VALUE_INSTALLING_FOR_UPDATE:I = 0x6

.field public static final EXTRA_ITEM_DOWNLOAD_STATUS_VALUE_NOT_DOWNLOADED:I = 0x0

.field public static final EXTRA_ITEM_DOWNLOAD_STATUS_VALUE_UNINSTALLING:I = 0x4

.field public static final EXTRA_ITEM_DOWNLOAD_STATUS_VALUE_UNKNOWN:I = -0x1

.field public static final EXTRA_ITEM_DOWNLOAD_TITLE:Ljava/lang/String; = "item_download_title"

.field public static final EXTRA_ITEM_INSATLL_STATUS:Ljava/lang/String; = "install_status"

.field public static final EXTRA_ITEM_ITEM:Ljava/lang/String; = "item_item"

.field public static final EXTRA_ITEM_MAKE_NOISE:Ljava/lang/String; = "item_make_noise"

.field public static final EXTRA_ITEM_OPTIONAL_DATA:Ljava/lang/String; = "online_item_optional_data"

.field public static final EXTRA_ITEM_OPTIONAL_ICON:Ljava/lang/String; = "online_item_optional_icon"

.field public static final EXTRA_ITEM_OPTIONAL_LABEL:Ljava/lang/String; = "online_item_optional_label"

.field public static final EXTRA_ITEM_OPTIONAL_VERSION:Ljava/lang/String; = "online_item_optional_version"

.field public static final EXTRA_ITEM_REQUESTER_KEY:Ljava/lang/String; = "requester"

.field public static final EXTRA_ITEM_REQUESTER_VALUE_DEALS:Ljava/lang/String; = "com.htc.store_deals"

.field public static final EXTRA_ITEM_REQUESTER_VALUE_OAD:Ljava/lang/String; = "com.htc.store_oad"

.field public static final EXTRA_ITEM_REQUESTER_VALUE_SDM:Ljava/lang/String; = "com.htc.store_sdm"

.field public static final EXTRA_ITEM_REQUESTER_VALUE_STORE:Ljava/lang/String; = "com.htc.store_store"

.field public static final EXTRA_ONLINE_ITEM_CONTENT_TYPE:Ljava/lang/String; = "online_item_content_type"

.field public static final EXTRA_ONLINE_ITEM_ICON:Ljava/lang/String; = "online_item_icon"

.field public static final EXTRA_ONLINE_ITEM_ID:Ljava/lang/String; = "online_item_id"

.field public static final EXTRA_ONLINE_ITEM_IDS:Ljava/lang/String; = "online_item_ids"

.field public static final EXTRA_ONLINE_ITEM_ID_SPECIFIC_VALUE_SET_TO_DOWNLOAD_AVAILABLE:Ljava/lang/String; = "setAllItemsToDownloadAvailableByContentType"

.field public static final EXTRA_ONLINE_ITEM_LABEL:Ljava/lang/String; = "online_item_label"

.field public static final EXTRA_ONLINE_ITEM_PACKAGE_NAME:Ljava/lang/String; = "online_item_package_name"

.field public static final EXTRA_ONLINE_ITEM_PREVIEW:Ljava/lang/String; = "online_item_preview"

.field public static final EXTRA_ONLINE_ITEM_PREVIEW_LANDSCAPE:Ljava/lang/String; = "online_item_preview_landscape"

.field public static final EXTRA_ONLINE_ITEM_SIZE:Ljava/lang/String; = "online_item_size"

.field public static final EXTRA_ONLINE_ITEM_V1_ID:Ljava/lang/String; = "online_item_v1_id"

.field public static final EXTRA_ONLINE_ITEM_V1_TYPE:Ljava/lang/String; = "online_item_v1_type"

.field public static final EXTRA_ONLINE_ITEM_VERSION_NAME:Ljava/lang/String; = "online_item_version_name"

.field public static final EXTRA_PROMO_ITEM:Ljava/lang/String; = "promo_item"

.field public static final EXTRA_SHOW_PROMO_FEATURED:Ljava/lang/String; = "show_promo_featured"

.field public static final EXTRA_SOUNDSET_ALARM:Ljava/lang/String; = "soundset_alarm"

.field public static final EXTRA_SOUNDSET_CALENDAR:Ljava/lang/String; = "soundset_calendar"

.field public static final EXTRA_SOUNDSET_EMAIL:Ljava/lang/String; = "soundset_email"

.field public static final EXTRA_SOUNDSET_IS_DOWNLOAD_FOR_UPDATE:Ljava/lang/String; = "soundset_is_download_for_updateonline_title"

.field public static final EXTRA_SOUNDSET_MESSAGE:Ljava/lang/String; = "soundset_message"

.field public static final EXTRA_SOUNDSET_NOTIFICATION:Ljava/lang/String; = "soundset_notification"

.field public static final EXTRA_SOUNDSET_ONLINE_ID:Ljava/lang/String; = "soundset_online_id"

.field public static final EXTRA_SOUNDSET_ONLINE_TITLE:Ljava/lang/String; = "soundset_online_title"

.field public static final EXTRA_SOUNDSET_PARCELABLE:Ljava/lang/String; = "soundset_parcelable"

.field public static final EXTRA_SOUNDSET_RINGTONE:Ljava/lang/String; = "soundset_ringtone"

.field public static final EXTRA_SOUNDSET_TASK:Ljava/lang/String; = "soundset_task"

.field public static final EXTRA_STORE_INSIDE:Ljava/lang/String; = "store_inside"

.field public static final EXTRA_TAB_ID:Ljava/lang/String; = "tab_id"

.field public static final EXTRA_TAB_TITLE:Ljava/lang/String; = "tab_title_resource"

.field private static final MESSAGE_CONTACTS_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static sApplicationOnPause:Z

.field private static sContactsDirty:Z


# instance fields
.field protected mBaseUiHandler:Landroid/os/Handler;

.field protected mCheckAccountOnResume:Z

.field protected mCheckLocaleOnResume:Z

.field protected mContactsDirty:Z

.field protected mContactsManager:Lcom/htc/store/module/ContactsManager;

.field protected mContactsObserver:Landroid/database/ContentObserver;

.field protected mDefaultOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mFinishSelfBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mFirstCreate:Z

.field protected mHasToSetBackground:Z

.field protected mIsInternalStorageLow:Z

.field protected mIsReceiverRegistered:Z

.field protected mOnBackPressed:Z

.field protected mOnDestroy:Z

.field protected mOnNoAccountDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field protected mOnNoAccountDialogNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mOnNoAccountDialogPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mOnPause:Z

.field protected mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

.field private mSearchButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/htc/store/activity/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/BaseActivity;->TAG:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/store/activity/BaseActivity;->sContactsDirty:Z

    .line 150
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/store/activity/BaseActivity;->sApplicationOnPause:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 143
    iput-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mIsInternalStorageLow:Z

    .line 152
    iput-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mCheckAccountOnResume:Z

    .line 153
    iput-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mCheckLocaleOnResume:Z

    .line 154
    iput-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mHasToSetBackground:Z

    .line 155
    iput-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mIsReceiverRegistered:Z

    .line 436
    new-instance v0, Lcom/htc/store/activity/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/BaseActivity$2;-><init>(Lcom/htc/store/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mFinishSelfBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 443
    new-instance v0, Lcom/htc/store/activity/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/BaseActivity$3;-><init>(Lcom/htc/store/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnNoAccountDialogPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 451
    new-instance v0, Lcom/htc/store/activity/BaseActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/BaseActivity$4;-><init>(Lcom/htc/store/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnNoAccountDialogNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 459
    new-instance v0, Lcom/htc/store/activity/BaseActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/BaseActivity$5;-><init>(Lcom/htc/store/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnNoAccountDialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 466
    new-instance v0, Lcom/htc/store/activity/BaseActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/BaseActivity$6;-><init>(Lcom/htc/store/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mDefaultOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 478
    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput-boolean p0, Lcom/htc/store/activity/BaseActivity;->sContactsDirty:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/store/activity/BaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected checkNetworkAvailable()Z
    .locals 5

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, pass:Z
    invoke-static {p0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    sget-object v1, Lcom/htc/store/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Network is not available."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/BaseActivity;->showDialog(I)V

    .line 398
    :goto_0
    return v0

    .line 396
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected checkNetworkAvailableToFinish(Z)Z
    .locals 5
    .parameter "finishWhenStartSettings"

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, pass:Z
    invoke-static {p0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    sget-object v1, Lcom/htc/store/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Network is not available."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    if-eqz p1, :cond_0

    .line 406
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/BaseActivity;->showDialog(I)V

    .line 413
    :goto_0
    return v0

    .line 408
    :cond_0
    const/4 v1, -0x3

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/BaseActivity;->showDialog(I)V

    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getContext()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 333
    return-object p0
.end method

.method protected initBackground()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method protected isHtcAccountChanged()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 368
    const/4 v2, 0x0

    .line 369
    .local v2, result:Z
    iget-object v3, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v3}, Lcom/htc/store/module/PreferenceManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, originalAccountId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, newAccountId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 372
    sget-object v3, Lcom/htc/store/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "newAccountId is empty"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 374
    sget-object v3, Lcom/htc/store/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "originalAccountId: "

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    const/4 v2, 0x1

    .line 386
    :cond_0
    :goto_0
    sget-object v3, Lcom/htc/store/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "isHtcAccountChanged: "

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    return v2

    .line 377
    :cond_1
    sget-object v3, Lcom/htc/store/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "originalAccountId is empty"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 380
    :cond_2
    sget-object v3, Lcom/htc/store/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "newAccountId: "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected isHtcAccountExisted()Z
    .locals 1

    .prologue
    .line 364
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 259
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 249
    iget-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mHasToSetBackground:Z

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "common_app_bkg"

    const v2, 0x20806b7

    invoke-static {p0, v1, v2}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 251
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 253
    .end local v0           #bkgId:I
    :cond_0
    return-void
.end method

.method protected onContactsChanged()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    new-instance v1, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v1, p0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    .line 164
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mContactsDirty:Z

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    .line 166
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    .line 167
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    .line 168
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    .line 169
    sput-boolean v2, Lcom/htc/store/activity/BaseActivity;->sApplicationOnPause:Z

    .line 170
    iget-boolean v1, p0, Lcom/htc/store/activity/BaseActivity;->mHasToSetBackground:Z

    if-eqz v1, :cond_0

    .line 171
    const-string v1, "common_app_bkg"

    const v2, 0x20806b7

    invoke-static {p0, v1, v2}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 174
    .end local v0           #bkgId:I
    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, result:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 326
    :goto_0
    if-nez v0, :cond_0

    .line 327
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 329
    :cond_0
    return-object v0

    .line 308
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/util/DialogUtils;->getNoNetworkDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 309
    goto :goto_0

    .line 311
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/htc/store/util/DialogUtils;->getNoNetworkDialogToFinish(Landroid/app/Activity;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 312
    goto :goto_0

    .line 314
    :pswitch_2
    invoke-static {p0, v1}, Lcom/htc/store/util/DialogUtils;->getNoNetworkDialogToFinish(Landroid/app/Activity;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 315
    goto :goto_0

    .line 317
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/store/util/DialogUtils;->getCommonErrorDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 318
    goto :goto_0

    .line 320
    :pswitch_4
    invoke-static {p0}, Lcom/htc/store/util/DialogUtils;->getCommonErrorDialogToFinish(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 321
    goto :goto_0

    .line 323
    :pswitch_5
    invoke-static {p0, v1}, Lcom/htc/store/util/DialogUtils;->getInternalStorageLowDialogToFinish(Landroid/app/Activity;Z)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z

    .line 227
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mContactsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/BaseActivity;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 230
    :cond_0
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mFinishSelfBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mIsReceiverRegistered:Z

    .line 234
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 235
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 210
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    .line 211
    sput-boolean v2, Lcom/htc/store/activity/BaseActivity;->sApplicationOnPause:Z

    .line 212
    iget-object v1, p0, Lcom/htc/store/activity/BaseActivity;->mBaseUiHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/htc/store/activity/BaseActivity;->mBaseUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v0, finishIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.store.action.FINISH_SELF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/htc/store/activity/BaseActivity;->mFinishSelfBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/store/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mIsReceiverRegistered:Z

    .line 221
    .end local v0           #finishIntentFilter:Landroid/content/IntentFilter;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 222
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    .line 180
    sput-boolean v2, Lcom/htc/store/activity/BaseActivity;->sApplicationOnPause:Z

    .line 181
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mFinishSelfBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mIsReceiverRegistered:Z

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mCheckAccountOnResume:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->isHtcAccountChanged()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mCheckLocaleOnResume:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/CommonUtils;->isLocaleChanged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->finish()V

    .line 188
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/store/util/ActivityUtils;->restartStore(Landroid/content/Context;)V

    .line 190
    :cond_3
    const-wide/16 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/htc/store/util/StorageUtils;->isStorageFreeSpaceEnough(IJ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mIsInternalStorageLow:Z

    .line 192
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->showInternalStorageLowDialogCancelToFinish()V

    .line 197
    :goto_0
    sget-boolean v0, Lcom/htc/store/activity/BaseActivity;->sContactsDirty:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mContactsManager:Lcom/htc/store/module/ContactsManager;

    if-eqz v0, :cond_4

    .line 198
    sput-boolean v2, Lcom/htc/store/activity/BaseActivity;->sContactsDirty:Z

    .line 199
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mContactsManager:Lcom/htc/store/module/ContactsManager;

    invoke-virtual {v0}, Lcom/htc/store/module/ContactsManager;->setCacheDirty()V

    .line 200
    invoke-static {}, Lcom/htc/store/util/ImageUtils;->clearPhotoCache()V

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mContactsDirty:Z

    if-eqz v0, :cond_5

    .line 203
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mContactsDirty:Z

    .line 204
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->onContactsChanged()V

    .line 206
    :cond_5
    return-void

    .line 194
    :cond_6
    iput-boolean v2, p0, Lcom/htc/store/activity/BaseActivity;->mIsInternalStorageLow:Z

    .line 195
    const/4 v0, -0x6

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/BaseActivity;->removeDialog(I)V

    goto :goto_0
.end method

.method protected onSearchButtonClick()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onWindowFirstFocused()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 240
    iget-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/store/activity/BaseActivity;->mFirstCreate:Z

    .line 242
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->onWindowFirstFocused()V

    .line 244
    :cond_0
    return-void
.end method

.method protected requestContactsObserver()V
    .locals 4

    .prologue
    .line 343
    new-instance v0, Lcom/htc/store/activity/BaseActivity$BaseUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/store/activity/BaseActivity$BaseUiHandler;-><init>(Lcom/htc/store/activity/BaseActivity;Lcom/htc/store/activity/BaseActivity$1;)V

    iput-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mBaseUiHandler:Landroid/os/Handler;

    .line 344
    new-instance v0, Lcom/htc/store/activity/BaseActivity$1;

    iget-object v1, p0, Lcom/htc/store/activity/BaseActivity;->mBaseUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/htc/store/activity/BaseActivity$1;-><init>(Lcom/htc/store/activity/BaseActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mContactsObserver:Landroid/database/ContentObserver;

    .line 358
    invoke-virtual {p0}, Lcom/htc/store/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/store/activity/BaseActivity;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 360
    invoke-static {}, Lcom/htc/store/module/ContactsManager;->getInstance()Lcom/htc/store/module/ContactsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mContactsManager:Lcom/htc/store/module/ContactsManager;

    .line 361
    return-void
.end method

.method protected setSearchButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mSearchButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 340
    :cond_0
    return-void
.end method

.method protected showCommonErrorDialog()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/BaseActivity;->showDialog(I)V

    .line 426
    return-void
.end method

.method protected showCommonErrorDialogToFinish()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/BaseActivity;->showDialog(I)V

    .line 430
    return-void
.end method

.method protected showInternalStorageLowDialogCancelToFinish()V
    .locals 1

    .prologue
    .line 433
    const/4 v0, -0x6

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/BaseActivity;->showDialog(I)V

    .line 434
    return-void
.end method

.method protected showNoNetworkDialog()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/BaseActivity;->showDialog(I)V

    .line 418
    return-void
.end method

.method protected showNoNetworkDialogCancelToFinish()V
    .locals 1

    .prologue
    .line 421
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/BaseActivity;->showDialog(I)V

    .line 422
    return-void
.end method
