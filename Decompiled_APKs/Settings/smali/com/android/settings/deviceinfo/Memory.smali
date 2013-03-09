.class public Lcom/android/settings/deviceinfo/Memory;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;


# static fields
.field private static final DLG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DLG_ERROR_UNMOUNT:I = 0x2

.field private static final MEMORY_INTERNAL_APPS:Ljava/lang/String; = "memory_internal_apps"

.field private static final MEMORY_INTERNAL_AVAIL:Ljava/lang/String; = "memory_internal_avail"

.field private static final MEMORY_INTERNAL_CHART:Ljava/lang/String; = "memory_internal_chart"

.field private static final MEMORY_INTERNAL_SIZE:Ljava/lang/String; = "memory_internal_size"

.field private static final MEMORY_SD_AVAIL:Ljava/lang/String; = "memory_sd_avail"

.field private static final MEMORY_SD_FORMAT:Ljava/lang/String; = "memory_sd_format"

.field private static final MEMORY_SD_GROUP:Ljava/lang/String; = "memory_sd"

.field private static final MEMORY_SD_MOUNT_TOGGLE:Ljava/lang/String; = "memory_sd_mount_toggle"

.field private static final MEMORY_SD_SIZE:Ljava/lang/String; = "memory_sd_size"

.field private static final MENU_ID_USB:I = 0x1

.field private static final MSG_UI_UPDATE_EXTERNAL_APPROXIMATE:I = 0x3

.field private static final MSG_UI_UPDATE_INTERNAL_APPROXIMATE:I = 0x1

.field private static final MSG_UI_UPDATE_INTERNAL_EXACT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemorySettings"


# instance fields
.field private mInternalAppsColor:I

.field private mInternalAppsUsage:Lcom/htc/preference/HtcPreference;

.field private mInternalAvail:Lcom/htc/preference/HtcPreference;

.field private mInternalAvailColor:I

.field private mInternalSize:Lcom/htc/preference/HtcPreference;

.field private mInternalUsageChart:Lcom/android/settings/deviceinfo/UsageBarPreference;

.field private mInternalUsedColor:I

.field private mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;

.field private final mMediaPreferences:[Lcom/htc/preference/HtcPreference;

.field private mMountService:Landroid/os/storage/IMountService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSdAvail:Lcom/htc/preference/HtcPreference;

.field private mSdFormat:Lcom/htc/preference/HtcPreference;

.field private mSdMountPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

.field mSdMountToggleAdded:Z

.field private mSdSize:Lcom/htc/preference/HtcPreference;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 113
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/preference/HtcPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaPreferences:[Lcom/htc/preference/HtcPreference;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 124
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 126
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 137
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mUpdateHandler:Landroid/os/Handler;

    .line 451
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 542
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/Memory;->updateUiApproximate(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;JJJ[J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p7}, Lcom/android/settings/deviceinfo/Memory;->updateUiExact(JJJ[J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/Memory;)Lcom/android/settings/deviceinfo/MemoryMeasurement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    return-object v0
.end method

.method private addExtraComponents()V
    .locals 8

    .prologue
    .line 264
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 270
    .local v4, root:Lcom/htc/preference/HtcPreferenceScreen;
    if-nez v4, :cond_1

    .line 366
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportDiskStorage()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 275
    new-instance v1, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;-><init>(Landroid/content/Context;)V

    .line 277
    .local v1, diskGroup:Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;
    invoke-virtual {v1, p0, v4}, Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 281
    .end local v1           #diskGroup:Lcom/android/settings/framework/preference/storage/HtcInternalStorageGroup;
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportAppStorageLocSettings()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 282
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    const v7, 0x7f0c00f8

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 284
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcPreferenceCategory;->setOrder(I)V

    .line 285
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 287
    new-instance v3, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;-><init>(Landroid/content/Context;)V

    .line 288
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 289
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 293
    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 294
    new-instance v2, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;-><init>(Landroid/content/Context;)V

    .line 296
    .local v2, emmcStorageGroup:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;
    invoke-virtual {v2, p0, v4}, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 300
    .end local v2           #emmcStorageGroup:Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportExternalSdCardStorage()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 302
    new-instance v5, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;-><init>(Landroid/content/Context;)V

    .line 304
    .local v5, sdCardStorageGroup:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;
    invoke-virtual {v5, p0, v4}, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 309
    .end local v5           #sdCardStorageGroup:Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->support3LM()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isP0004:Z

    if-nez v7, :cond_6

    .line 310
    const-string v7, "internal_memory_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 312
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    new-instance v3, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/storage/HtcInternalStorageEncryptPreference;-><init>(Landroid/content/Context;)V

    .line 313
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 314
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 319
    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    :cond_6
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportMakeMoreSpace()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 320
    const-string v7, "internal_memory_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 322
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    new-instance v3, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;-><init>(Landroid/content/Context;)V

    .line 323
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 324
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 328
    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportUsbStorageGroup()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 329
    new-instance v6, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;-><init>(Landroid/content/Context;)V

    .line 331
    .local v6, usbStorageGroup:Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;
    invoke-virtual {v6, p0, v4}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;->pluginGroupComponents(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 336
    .end local v6           #usbStorageGroup:Lcom/android/settings/framework/preference/storage/HtcUsbStorageGroup;
    :cond_8
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportCloudStorageGroup()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 339
    new-instance v0, Lcom/android/settings/framework/preference/storage/HtcPluginPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7, v4}, Lcom/android/settings/framework/preference/storage/HtcPluginPreferenceCategory;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 340
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v7, 0x7f0c011f

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 341
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 344
    new-instance v3, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSpacePreference;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceCategory;)V

    .line 345
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 346
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 349
    new-instance v3, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Lcom/android/settings/framework/preference/storage/HtcDropboxSubscriptionPreference;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceCategory;)V

    .line 350
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 351
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 357
    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    :cond_9
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 358
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v7, 0x7f0c0c4b

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 359
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 362
    new-instance v3, Lcom/android/settings/framework/preference/storage/HtcFactoryResetPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/settings/framework/preference/storage/HtcFactoryResetPreference;-><init>(Landroid/content/Context;)V

    .line 363
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 364
    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0
.end method

.method private createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .parameter "height"
    .parameter "width"
    .parameter "color"

    .prologue
    .line 428
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 429
    .local v0, shape:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 430
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 431
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 432
    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private rearrangeComponents()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 373
    const-string v4, "internal_memory_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 375
    .local v0, dataCategory:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportExternalSdCardStorage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    sget-object v4, Lcom/android/settings/framework/preference/storage/HtcExternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    .line 383
    .local v3, storageCateory:Lcom/htc/preference/HtcPreferenceCategory;
    :goto_0
    const-string v4, "memory_internal_chart"

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 385
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4010

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 386
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 388
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v4, 0x6

    if-ge v1, v4, :cond_2

    .line 389
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    .line 390
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v4, v4, v1

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 388
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 379
    .end local v1           #i:I
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    .end local v3           #storageCateory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_1
    sget-object v4, Lcom/android/settings/framework/preference/storage/HtcInternalSdCardStorageGroup;->KEY:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    .restart local v3       #storageCateory:Lcom/htc/preference/HtcPreferenceCategory;
    goto :goto_0

    .line 394
    .restart local v1       #i:I
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAvail:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 395
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAppsUsage:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreference;->setIconVisibility(Z)V

    .line 398
    .end local v1           #i:I
    :cond_3
    if-nez v3, :cond_4

    .line 425
    :goto_2
    return-void

    .line 406
    :cond_4
    const-string v4, "memory_internal_downloads"

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 407
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 411
    const-string v4, "memory_internal_dcim"

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 412
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 416
    const-string v4, "memory_internal_music"

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 417
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 421
    const-string v4, "memory_internal_media_misc"

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 422
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    .line 592
    return-void
.end method

.method private updateUiApproximate(JJ)V
    .locals 5
    .parameter "totalSize"
    .parameter "availSize"

    .prologue
    .line 641
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalSize:Lcom/htc/preference/HtcPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAvail:Lcom/htc/preference/HtcPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 644
    sub-long v0, p1, p3

    .line 646
    .local v0, usedSize:J
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalUsageChart:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 647
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalUsageChart:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v3, v0

    long-to-float v4, p1

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalUsedColor:I

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 648
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalUsageChart:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 649
    return-void
.end method

.method private updateUiExact(JJJ[J)V
    .locals 8
    .parameter "totalSize"
    .parameter "availSize"
    .parameter "appsSize"
    .parameter "mediaSizes"

    .prologue
    .line 599
    sub-long v0, p1, p3

    .line 604
    .local v0, appsPlusRemaining:J
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalSize:Lcom/htc/preference/HtcPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAvail:Lcom/htc/preference/HtcPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAppsUsage:Lcom/htc/preference/HtcPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalUsageChart:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 609
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalUsageChart:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v5, v0

    long-to-float v6, p1

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAppsColor:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 611
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    .line 612
    sget-object v4, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    iget-object v4, v4, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mPreferenceName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 611
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 615
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v4, v4, v3

    aget-wide v5, p7, v3

    invoke-direct {p0, v5, v6}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 617
    if-eqz v3, :cond_0

    aget-wide v4, p7, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 618
    const/4 v2, 0x0

    .line 619
    .local v2, color:I
    packed-switch v3, :pswitch_data_0

    .line 633
    :goto_2
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalUsageChart:Lcom/android/settings/deviceinfo/UsageBarPreference;

    aget-wide v5, p7, v3

    long-to-float v5, v5

    long-to-float v6, p1

    div-float/2addr v5, v6

    invoke-virtual {v4, v5, v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    goto :goto_1

    .line 621
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 622
    goto :goto_2

    .line 624
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 625
    goto :goto_2

    .line 627
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 628
    goto :goto_2

    .line 630
    :pswitch_4
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_2

    .line 636
    .end local v2           #color:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalUsageChart:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v5, p3

    long-to-float v6, p1

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAvailColor:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 637
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalUsageChart:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 638
    return-void

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 658
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 176
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_0

    .line 179
    const-string v7, "storage"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 180
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v10, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v7, v10}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 183
    :cond_0
    const v7, 0x7f05000d

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    .line 186
    const-string v7, "memory_sd_size"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Lcom/htc/preference/HtcPreference;

    .line 187
    const-string v7, "memory_sd_avail"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Lcom/htc/preference/HtcPreference;

    .line 188
    const-string v7, "memory_sd_format"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Lcom/htc/preference/HtcPreference;

    .line 189
    const-string v7, "memory_sd"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcPreferenceGroup;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

    .line 191
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 195
    :cond_1
    const-string v7, "memory_internal_size"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalSize:Lcom/htc/preference/HtcPreference;

    .line 197
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportSubTotalSpaceForInternalStorage()Z

    move-result v7

    if-nez v7, :cond_2

    .line 198
    const-string v7, "internal_memory_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceCategory;

    .line 200
    .local v2, category:Lcom/htc/preference/HtcPreferenceCategory;
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalSize:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 203
    .end local v2           #category:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0a0004

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAppsColor:I

    .line 204
    const v7, -0x777778

    iput v7, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalUsedColor:I

    .line 205
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0a0003

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAvailColor:I

    .line 206
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const/high16 v10, 0x7f0b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v1, v7

    .line 207
    .local v1, buttonWidth:I
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0b0001

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v0, v7

    .line 210
    .local v0, buttonHeight:I
    const-string v7, "memory_internal_avail"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAvail:Lcom/htc/preference/HtcPreference;

    .line 211
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAvail:Lcom/htc/preference/HtcPreference;

    iget v10, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAvailColor:I

    invoke-direct {p0, v0, v1, v10}, Lcom/android/settings/deviceinfo/Memory;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 214
    const-string v7, "memory_internal_apps"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAppsUsage:Lcom/htc/preference/HtcPreference;

    .line 215
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAppsUsage:Lcom/htc/preference/HtcPreference;

    iget v10, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAppsColor:I

    invoke-direct {p0, v0, v1, v10}, Lcom/android/settings/deviceinfo/Memory;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 218
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v7, 0x6

    if-ge v4, v7, :cond_4

    .line 220
    sget-object v7, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    iget-object v7, v7, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mPreferenceName:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 218
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 223
    :cond_3
    iget-object v10, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaPreferences:[Lcom/htc/preference/HtcPreference;

    sget-object v7, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    iget-object v7, v7, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mPreferenceName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    aput-object v7, v10, v4

    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, color:I
    packed-switch v4, :pswitch_data_0

    .line 239
    :goto_2
    :pswitch_0
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v7, v7, v4

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/deviceinfo/Memory;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 227
    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0a0005

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 228
    goto :goto_2

    .line 230
    :pswitch_2
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0a0006

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 231
    goto :goto_2

    .line 233
    :pswitch_3
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0a0007

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 234
    goto :goto_2

    .line 236
    :pswitch_4
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0a0008

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_2

    .line 241
    .end local v3           #color:I
    :cond_4
    const-string v7, "memory_internal_chart"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/deviceinfo/UsageBarPreference;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalUsageChart:Lcom/android/settings/deviceinfo/UsageBarPreference;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->getInstance(Landroid/content/Context;)Lcom/android/settings/deviceinfo/MemoryMeasurement;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    .line 244
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    invoke-virtual {v7, p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;)V

    .line 246
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 248
    .local v6, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v7, v6

    if-lez v7, :cond_5

    aget-object v7, v6, v9

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v8

    .line 252
    .local v5, massStorageEnabled:Z
    :goto_3
    if-nez v5, :cond_6

    move v7, v8

    :goto_4
    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->addExtraComponents()V

    .line 255
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->rearrangeComponents()V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->requestHandlers()V

    .line 257
    return-void

    .end local v5           #massStorageEnabled:Z
    :cond_5
    move v5, v9

    .line 248
    goto :goto_3

    .restart local v5       #massStorageEnabled:Z
    :cond_6
    move v7, v9

    .line 252
    goto :goto_4

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f0c0b08

    const/4 v0, 0x0

    .line 556
    packed-switch p1, :pswitch_data_0

    .line 574
    :goto_0
    return-object v0

    .line 558
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0a23

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/Memory$4;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/Memory$4;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c083d

    invoke-virtual {v1, v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0a24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 568
    :pswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0a25

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0a26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 556
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 480
    const/4 v0, 0x1

    const v1, 0x7f0c0a2a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 483
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 475
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 476
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 487
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 500
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 489
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0a2b

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 498
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 496
    :cond_0
    const-class v0, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 465
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->cleanUp()V

    .line 468
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 505
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Lcom/htc/preference/HtcPreference;

    if-ne p2, v3, :cond_1

    .line 506
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/MediaFormat;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 508
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    .line 539
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v2

    .line 510
    :cond_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalAppsUsage:Lcom/htc/preference/HtcPreference;

    if-ne p2, v3, :cond_2

    .line 511
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 516
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaPreferences:[Lcom/htc/preference/HtcPreference;

    aget-object v3, v3, v2

    if-ne p2, v3, :cond_3

    .line 517
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 519
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 521
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaPreferences:[Lcom/htc/preference/HtcPreference;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    if-ne p2, v3, :cond_4

    .line 522
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "audio/mp3"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 526
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaPreferences:[Lcom/htc/preference/HtcPreference;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-ne p2, v3, :cond_5

    .line 527
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "image/jpeg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 531
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaPreferences:[Lcom/htc/preference/HtcPreference;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    if-ne p2, v3, :cond_6

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 533
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->getInstance(Landroid/content/Context;)Lcom/android/settings/deviceinfo/MemoryMeasurement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->isSizeOfMiscCategoryNonZero()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 539
    .end local v0           #context:Landroid/content/Context;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 437
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 438
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    invoke-virtual {v1, p0}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;)V

    .line 439
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->invalidate()V

    .line 445
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->measureExternal()V

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMeasurement:Lcom/android/settings/deviceinfo/MemoryMeasurement;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/MemoryMeasurement;->measureInternal()V

    .line 449
    return-void
.end method

.method protected showDialog(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 579
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->showDialog(I)V

    .line 581
    packed-switch p1, :pswitch_data_0

    .line 587
    :goto_0
    return-void

    .line 584
    :pswitch_0
    invoke-virtual {p0, p0}, Lcom/android/settings/deviceinfo/Memory;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateApproximateExternal(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 663
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 664
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    return-void
.end method

.method public updateApproximateInternal(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 669
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 670
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 671
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 672
    return-void
.end method

.method public updateExactInternal(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 676
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 677
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 678
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 679
    return-void
.end method
