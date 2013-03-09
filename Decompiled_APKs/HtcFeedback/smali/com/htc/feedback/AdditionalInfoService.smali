.class public Lcom/htc/feedback/AdditionalInfoService;
.super Landroid/app/IntentService;
.source "AdditionalInfoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/feedback/AdditionalInfoService$1;,
        Lcom/htc/feedback/AdditionalInfoService$FeedbackLocationListener;,
        Lcom/htc/feedback/AdditionalInfoService$FeedbackPhoneStateListener;,
        Lcom/htc/feedback/AdditionalInfoService$LocationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCATION_TIMEOUT:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "AdditionalInfoService"

.field private static final sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;


# instance fields
.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    invoke-direct {v0}, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;-><init>()V

    sput-object v0, Lcom/htc/feedback/AdditionalInfoService;->sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    const-string v0, "AdditionalInfoService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/htc/feedback/AdditionalInfoService$FeedbackPhoneStateListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/feedback/AdditionalInfoService$FeedbackPhoneStateListener;-><init>(Lcom/htc/feedback/AdditionalInfoService;Lcom/htc/feedback/AdditionalInfoService$1;)V

    iput-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 135
    new-instance v0, Lcom/htc/feedback/AdditionalInfoService$FeedbackLocationListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/feedback/AdditionalInfoService$FeedbackLocationListener;-><init>(Lcom/htc/feedback/AdditionalInfoService;Lcom/htc/feedback/AdditionalInfoService$1;)V

    iput-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mLocationListener:Landroid/location/LocationListener;

    .line 139
    return-void
.end method

.method static synthetic access$200()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/feedback/AdditionalInfoService;->sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    return-object v0
.end method

.method public static getLocationInfo()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/htc/feedback/AdditionalInfoService;->sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    return-object v0
.end method

.method public static getLocationInformation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 118
    const/4 v1, 0x5

    .line 119
    .local v1, retry:I
    :cond_0
    sget-object v2, Lcom/htc/feedback/AdditionalInfoService;->sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    invoke-virtual {v2}, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->ready()Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    .line 128
    :cond_1
    sget-object v2, Lcom/htc/feedback/AdditionalInfoService;->sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    invoke-virtual {v2}, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->toJSONString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "AdditionalInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static inSystem()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 294
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 295
    .local v0, app:Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 296
    .local v1, inSystem:Z
    :cond_0
    const-string v2, "AdditionalInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in System="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    return v1
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 144
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/htc/feedback/AdditionalInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 145
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/htc/feedback/AdditionalInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mLocationManager:Landroid/location/LocationManager;

    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 207
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 150
    const-string v0, "location"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    sget-object v0, Lcom/htc/feedback/AdditionalInfoService;->sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    invoke-virtual {v0}, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->reset()V

    .line 152
    sget-object v0, Lcom/htc/feedback/AdditionalInfoService;->sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    iget-object v1, p0, Lcom/htc/feedback/AdditionalInfoService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->phoneType:I

    .line 154
    iget-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, operatorString:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    :try_start_0
    sget-object v0, Lcom/htc/feedback/AdditionalInfoService;->sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    const/4 v1, 0x0

    const/4 v5, 0x3

    invoke-virtual {v8, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->mcc:I

    .line 160
    sget-object v0, Lcom/htc/feedback/AdditionalInfoService;->sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    const/4 v1, 0x3

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->mnc:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/htc/feedback/AdditionalInfoService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x110

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 168
    iget-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/htc/feedback/AdditionalInfoService;->mLocationListener:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/htc/feedback/AdditionalInfoService;->mLocationListener:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 175
    :cond_2
    const-wide/32 v11, 0xea60

    .line 176
    .local v11, wait:J
    :cond_3
    sget-object v0, Lcom/htc/feedback/AdditionalInfoService;->sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    iget v0, v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 179
    .local v9, start:J
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :try_start_2
    invoke-virtual {p0, v11, v12}, Ljava/lang/Object;->wait(J)V

    .line 181
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v9

    sub-long/2addr v11, v0

    .line 186
    cmp-long v0, v11, v2

    if-gtz v0, :cond_3

    .line 189
    sget-object v0, Lcom/htc/feedback/AdditionalInfoService;->sLocationInfo:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    iget v1, v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    or-int/lit8 v1, v1, 0x7

    iput v1, v0, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->flag:I

    .line 194
    .end local v9           #start:J
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/htc/feedback/AdditionalInfoService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 195
    iget-object v0, p0, Lcom/htc/feedback/AdditionalInfoService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/htc/feedback/AdditionalInfoService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 202
    .end local v8           #operatorString:Ljava/lang/String;
    .end local v11           #wait:J
    :cond_5
    :goto_2
    return-void

    .line 161
    .restart local v8       #operatorString:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 162
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "AdditionalInfoService"

    const-string v1, "parse mnc mcc exception"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 181
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v9       #start:J
    .restart local v11       #wait:J
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 182
    :catch_1
    move-exception v7

    .line 183
    .local v7, e:Ljava/lang/InterruptedException;
    const-string v0, "AdditionalInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupt "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    .end local v7           #e:Ljava/lang/InterruptedException;
    .end local v9           #start:J
    :catch_2
    move-exception v7

    .line 197
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "AdditionalInfoService"

    const-string v1, "release radio & location listener"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
