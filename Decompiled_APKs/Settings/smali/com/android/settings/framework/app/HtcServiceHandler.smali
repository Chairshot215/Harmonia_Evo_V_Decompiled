.class Lcom/android/settings/framework/app/HtcServiceHandler;
.super Landroid/os/Handler;
.source "HtcServiceHandler.java"


# static fields
.field private static final ACTION_BOOT_COMPLETED:I = 0x10

.field private static final ACTION_FACTORY_DATA_RESET:I = 0xd

.field private static final ACTION_FORMAT_INTERNAL_AND_EXTERNAL_SD_CARD_VOLUME:I = 0xc

.field private static final ACTION_FORMAT_INTERNAL_SD_CARD_VOLUME:I = 0xb

.field private static final ACTION_FORMAT_SD_CARD_VOLUME:I = 0xa

.field private static final ACTION_HEADSET_STATE_CHANGE:I = 0xf

.field private static final ACTION_MAX_INACTIVITY_TIME_CHANGED_INDEX:I = 0x5

.field private static final ACTION_MOUNT_SD_CARD_VOLUME:I = 0x8

.field private static final ACTION_MOUNT_USB_VOLUME:I = 0x9

.field private static final ACTION_SETTINGS_SET_BLUETOOTH_DISCOVERABLE_TIMEOUT_INDEX:I = 0x7

.field private static final ACTION_UAK_KEY_HAPPEN_INDEX:I = 0x6

.field private static final REQUEST_BRIGHTNESS_INDEX:I = 0x3

.field private static final REQUEST_BRIGHTNESS_MAX_INDEX:I = 0x2

.field private static final REQUEST_BRIGHTNESS_NORMAL_INDEX:I = 0x4

.field private static final REQUEST_FACTORY_DATA_RESET:I = 0xe

.field private static final REQUEST_INVOCATION_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN:I

.field private static final mIntentMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcServiceHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    .line 76
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.INVOCATION"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.BRIGHTNESS_MAX"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.BRIGHTNESS"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.BRIGHTNESS_NORMAL"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.intent.action.MAX_INACTIVITY_TIME_CHANGED"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "ACTION_UAK_TRIGGLE"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.intent.action.SETTINGS_SET_BLUETOOTH_DISCOVERABLE_TIMEOUT"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.MOUNT_SD_CARD_VOLUME"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.MOUNT_USB_VOLUME"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FORMAT_SD_CARD_VOLUME"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FORMAT_INTERNAL_SD_CARD_VOLUME"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FORMAT_INTERNAL_AND_EXTERNAL_SD_CARD_VOLUME"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.action.FACTORY_DATA_RESET"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.android.settings.request.FACTORY_DATA_RESET"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "com.htc.intent.action.HEADSET_STATE_CHANGE"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 133
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 134
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    .line 135
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 280
    sget-object v0, Lcom/android/settings/framework/app/HtcServiceHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method private final dispatchIntent(ILandroid/content/Intent;)V
    .locals 6
    .parameter "startId"
    .parameter "intent"

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, action:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/framework/app/HtcServiceHandler;->mIntentMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 184
    .local v2, rawIndex:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 187
    .local v1, index:I
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 245
    sget-object v3, Lcom/android/settings/framework/app/HtcServiceHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_1
    return-void

    .line 184
    .end local v1           #index:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 189
    .restart local v1       #index:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/app/rmi/HtcRemoteMethodInvocator;->onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 192
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/request/HtcCameraRequest;->requestForBrightnessMax(Landroid/content/Context;)V

    goto :goto_1

    .line 195
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcCameraRequest;->requestForBrightness(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 198
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/request/HtcCameraRequest;->requestForBrightnessNormal(Landroid/content/Context;)V

    goto :goto_1

    .line 201
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcMailRequest;->onMaxInactiveTimeChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 204
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcUakRequest;->onHandleUakEvent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 208
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcBTRequest;->setDiscoverableTimeout(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 212
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->mountSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    .line 215
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->mountUsbVolume(Landroid/content/Context;)V

    goto :goto_1

    .line 219
    :pswitch_9
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->formatSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    .line 223
    :pswitch_a
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    .line 227
    :pswitch_b
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalAndExternalSdCardVolume(Landroid/content/Context;)V

    goto :goto_1

    .line 232
    :pswitch_c
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/os/HtcStorageManager;->doFactoryDataReset(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 236
    :pswitch_d
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcServiceHandler;->isCharmPlugin()V

    goto :goto_1

    .line 240
    :pswitch_e
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->onBootCompleted(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private isCharmPlugin()V
    .locals 7

    .prologue
    .line 252
    :try_start_0
    const-string v3, "htchardware"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    .line 255
    .local v1, hwService:Landroid/os/IHtcHardwareService;
    const/4 v2, 0x0

    .line 256
    .local v2, type:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 257
    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getHeadsetType()Ljava/lang/String;

    move-result-object v2

    .line 264
    :cond_0
    const-string v3, "headset_indicator"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "charm_indicator_supported"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 268
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/framework/receiver/HtcCharmIndicatorReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 272
    iget-object v3, p0, Lcom/android/settings/framework/app/HtcServiceHandler;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.settings.action.REFRESH_LIST"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v1           #hwService:Landroid/os/IHtcHardwareService;
    .end local v2           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/framework/app/HtcServiceHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 139
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 140
    .local v3, startId:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 141
    .local v2, intent:Landroid/content/Intent;
    const-wide/16 v4, 0x0

    .local v4, startTime:J
    const-wide/16 v0, 0x0

    .line 153
    .local v0, endTime:J
    if-eqz v2, :cond_0

    .line 155
    invoke-direct {p0, v3, v2}, Lcom/android/settings/framework/app/HtcServiceHandler;->dispatchIntent(ILandroid/content/Intent;)V

    .line 174
    :cond_0
    return-void
.end method
