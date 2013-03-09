.class public Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;
.super Landroid/os/Handler;
.source "HtcCdmaGpsOne.java"


# static fields
.field private static final EVENT_BOOTUP_QUERY:I = 0x4

.field private static final EVENT_GET_FIRST_GPSONE:I = 0x3

.field private static final EVENT_PDSS:I = 0x1

.field private static final EVENT_PPST_READY:I = 0x5

.field private static final EVENT_RADIO_READY:I = 0x2

.field static final EXTRA_KEY:Ljava/lang/String; = "TEST_KEY"

.field static final EXTRA_VALUE:Ljava/lang/String; = "GPSONE"

.field public static final GPSONE_ALLOW:I = 0x1

.field public static final GPSONE_BOTH_ACCEPT:I = 0x0

.field public static final GPSONE_BOTH_LOCK:I = 0x3

.field public static final GPSONE_MI_LOCK:I = 0x1

.field public static final GPSONE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.GPSONE_MODE_CHANGED"

.field public static final GPSONE_MT_LOCK:I = 0x2

.field public static final GPSONE_NOTALLOW:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaGpsOne"

.field static final PPST_COMPLETED:Ljava/lang/String; = "android.htc.intent.action.PPST_COMPLETED"


# instance fields
.field private final DBG:Z

.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mGpsOneMonitorReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->DBG:Z

    new-instance v1, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne$1;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mGpsOneMonitorReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p2, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v1, "HtcCdmaGpsOne"

    const-string v2, "OoO HtcCdmaGpsOne: Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.htc.intent.action.PPST_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mGpsOneMonitorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mGpsOneMonitorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v7, :cond_0

    const-string v7, "HtcCdmaGpsOne"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " HtcCdmaGpsOne drop event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    const-string v7, "HtcCdmaGpsOne"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception PDSS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v4, v7

    check-cast v4, [I

    const-string v7, "HtcCdmaGpsOne"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PDSS notify:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v4, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v7, "HtcCdmaGpsOne"

    const-string v8, "RADIO ready"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v7, "HtcCdmaGpsOne"

    const-string v8, "First GPSONE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->requestGetGPSOneMode(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    const-string v7, "HtcCdmaGpsOne"

    const-string v8, "Exception GPSOne query:"

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v2, v7

    check-cast v2, [I

    const-string v7, "HtcCdmaGpsOne"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GPSOne result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.GPSONE_MODE_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "MtGpsSetting"

    aget v8, v2, v10

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v6, 0x0

    aget v7, v2, v10

    if-nez v7, :cond_4

    const/4 v6, 0x1

    const/4 v1, 0x1

    :goto_1
    const-string v7, "HtcCdmaGpsOne"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO set value of GPSONE ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gpsone_allowed"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    const-string v7, "HtcCdmaGpsOne"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OoO set value of GPS satellites("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gps"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
