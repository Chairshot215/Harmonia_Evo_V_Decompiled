.class public Lcom/google/android/partnersetup/RlzPreferences;
.super Ljava/lang/Object;
.source "RlzPreferences.java"

# interfaces
.implements Lcom/google/android/partnersetup/RlzPreferencesInterface;


# static fields
.field private static final DEFAULT_GUID:Ljava/lang/String;

.field private static final DEFAULT_PID:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    sput-object v0, Lcom/google/android/partnersetup/RlzPreferences;->DEFAULT_GUID:Ljava/lang/String;

    .line 122
    sput-object v0, Lcom/google/android/partnersetup/RlzPreferences;->DEFAULT_PID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    const-string v1, "RLZ"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doubleBackoffTime()V
    .locals 3

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getBackoffTime()I

    move-result v0

    .line 243
    .local v0, backoff:I
    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getMaxRetryInterval()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/partnersetup/RlzPreferences;->setBackoffTime(I)V

    .line 244
    return-void
.end method

.method public getAlarmWakeTime()J
    .locals 6

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "waketime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getPingInterval()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackoffTime()I
    .locals 3

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "backoff"

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBrandCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 252
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rlz_brand_code"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, gservicesValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    .end local v0           #gservicesValue:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #gservicesValue:Ljava/lang/String;
    :cond_0
    const-string v1, "ro.com.google.rlzbrandcode"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDelayAfterEvent()I
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_delay_after_event"

    const v2, 0x15180

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDeviceGUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "guid"

    sget-object v2, Lcom/google/android/partnersetup/RlzPreferences;->DEFAULT_GUID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pid"

    sget-object v2, Lcom/google/android/partnersetup/RlzPreferences;->DEFAULT_PID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitialDelay()I
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_initial_delay"

    const/16 v2, 0x258

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxRetryInterval()I
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_max_retry_interval"

    const v2, 0x93a80

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxTableSize()I
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_max_table_size"

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPingInterval()I
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_ping_interval"

    const v2, 0x93a80

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isActivationPingPrepared()Z
    .locals 3

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "activated"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOEMModeEnabled()Z
    .locals 3

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "oem_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRlzEnabled()Z
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPreferences;->isOEMModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPreferences;->isRlzEnabledGservices()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getBrandCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRlzEnabledGservices()Z
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rlz_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetBackoffTime()V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getInitialDelay()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzPreferences;->setBackoffTime(I)V

    .line 236
    return-void
.end method

.method public setActivationPingPrepared(Z)V
    .locals 2
    .parameter "val"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "activated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    return-void
.end method

.method public setAlarmWakeTime(J)V
    .locals 2
    .parameter "val"

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "waketime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    return-void
.end method

.method public setBackoffTime(I)V
    .locals 2
    .parameter "val"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 227
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "backoff"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    return-void
.end method

.method public setDeviceGUID(Ljava/lang/String;)V
    .locals 2
    .parameter "val"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "guid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    return-void
.end method

.method public setDevicePID(Ljava/lang/String;)V
    .locals 2
    .parameter "val"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    return-void
.end method

.method public setOEMMode(Z)V
    .locals 2
    .parameter "val"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "oem_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method
