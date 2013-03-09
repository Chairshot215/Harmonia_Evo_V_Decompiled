.class public Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;
.super Landroid/os/Handler;
.source "HtcDataRoamGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;,
        Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;
    }
.end annotation


# static fields
.field public static final DOMESTIC_ROAMING:I = 0x2

.field private static final EVENT_GET_PREF_SYSTEM:I = 0x3

.field private static final EVENT_PENDING_AFTER_RADIO_READY:I = 0x2

.field private static final EVENT_RADIO_READY:I = 0x1

.field private static final EVENT_SET_PREF_SYSTEM:I = 0x4

.field public static final FIELD_ROAM_GUARD_DOMESTIC:I = 0x0

.field public static final FIELD_ROAM_GUARD_INTERNATIONAL:I = 0x1

.field public static final FIELD_ROAM_SETTING_DOMESTIC:I = 0x2

.field public static final FIELD_ROAM_SETTING_INTERNATIONAL:I = 0x3

.field public static final FIELD_ROAM_TOTAL:I = 0x4

.field public static final HOME:I = 0x1

.field public static final INTERNATIONAL_ROAMING:I = 0x3

.field public static final MODE_BOTH_DATA_ROAMING_ALLOW:I = 0x6

.field public static final MODE_BOTH_DATA_ROAMING_NOT_ALLOW:I = 0x0

.field public static final MODE_CONNECTION_ACCEPTED_BY_USER:I = 0x40000

.field private static final MODE_CONNECTION_MASK:I = 0x40000

.field public static final MODE_DATA_CONNED:I = 0x300

.field public static final MODE_DATA_CONNED_REQUEST_DISC:I = 0x400

.field public static final MODE_DATA_CONNED_REQUEST_DISC_CONN:I = 0x500

.field private static final MODE_DATA_MASK:I = 0xf00

.field public static final MODE_DATA_REQUEST_CONN:I = 0x100

.field public static final MODE_DATA_REQUEST_CONN_DISC:I = 0x200

.field private static final MODE_DATA_ROAMING_MASK:I = 0x6

.field private static final MODE_DATA_ROAM_GUARD_SETTING_MASK:I = 0x60

.field public static final MODE_DIALOG_DISPLAY:I = 0x100000

.field public static final MODE_DIALOG_HISTORY_ACCEPTED:I = 0x80000

.field private static final MODE_DIALOG_HISTORY_MASK:I = 0x80000

.field private static final MODE_DIALOG_MASK:I = 0x100000

.field public static final MODE_DOMESTIC_DATA_ROAMING_ALLOW:I = 0x2

.field public static final MODE_INTERNATIONAL_DATA_ROAMING_ALLOW:I = 0x4

.field public static final MODE_MOBILE_ALLOW_ENABLE:I = 0x800000

.field private static final MODE_MOBILE_ALLOW_MASK:I = 0x800000

.field public static final MODE_NETWORK_DOMESTIC_ROAMING:I = 0x4000000

.field public static final MODE_NETWORK_EXTERNAL_ROAMING:I = 0x2000000

.field public static final MODE_NETWORK_HOME:I = 0x0

.field public static final MODE_NETWORK_INTERNAL_ROAMING:I = 0x1000000

.field public static final MODE_NETWORK_INTERNATIONAL_ROAMING:I = 0x8000000

.field private static final MODE_NETWORK_MASK:I = 0xf000000

.field public static final MODE_ROAMING_ALLOW:I = 0x40000000

.field private static final MODE_ROAMING_MASK:I = 0x40000000

.field public static final MODE_SETTING_ALWAYS_ASK:I = 0x10000000

.field public static final MODE_SETTING_BOTH_DATA_ROAM_GUARD_DISABLE:I = 0x0

.field public static final MODE_SETTING_BOTH_DATA_ROAM_GUARD_ENABLE:I = 0x60

.field public static final MODE_SETTING_DEFAULT:I = 0x0

.field public static final MODE_SETTING_DOMESTIC_DATA_ROAM_GUARD_ENABLE:I = 0x20

.field public static final MODE_SETTING_INTERNATIONAL_DATA_ROAM_GUARD_ENABLE:I = 0x40

.field private static final MODE_SETTING_MASK:I = 0x30000000

.field public static final MODE_SETTING_NEVER_ASK:I = 0x20000000

.field private static final MODE_SYSTEM_MASK:I = -0x80000000

.field public static final MODE_SYSTEM_NONE_SWITCH_NETWORK:I = -0x80000000

.field public static final MODE_SYSTEM_QUERIED:I = 0x50000000

.field private static final MODE_SYSTEM_QUERIED_MASK:I = 0x50000000

.field public static final MODE_USER_ACCEPTED:I = 0x200000

.field private static final MODE_USER_MASK:I = 0x600000

.field public static final MODE_USER_REJECTED:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "CDMA"

.field private static final TAG_Prefix:Ljava/lang/String; = "DGRD2"


# instance fields
.field private final Setting_DATA_ROAMING_GUARD_to_MODE:[I

.field private mMode:I

.field private mNofiticationList:Landroid/os/RegistrantList;

.field mNotification:[I

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mRoamingType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-array v1, v6, [I

    aput v3, v1, v3

    const/high16 v2, 0x1000

    aput v2, v1, v4

    const/high16 v2, 0x2000

    aput v2, v1, v5

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "New HtcDataRoamGuard"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    :cond_2
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->registerForEnhancedRoamingSettingChange()V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getMobileDataSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial HtcDataRoamGuard mMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming_guard"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    array-length v1, v1

    if-lt v0, v1, :cond_7

    const/4 v0, 0x0

    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v2, 0x4000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintDataRoamGuardSettingsChange(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintDataRoamAllowSettingsChange(ZZ)V

    return-void
.end method

.method private blockedBySprintDataRoamGuard()Z
    .locals 4

    const/high16 v3, 0xf00

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x400

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Domestic roaming is not allowed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v3

    const/high16 v2, 0x800

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "international roaming is not allowed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockedBySprintDataRoamGuard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    return v0
.end method

.method private createNotificationObject(IZ)[I
    .locals 10

    const/high16 v9, 0x8

    const/high16 v8, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x60

    and-int/2addr v6, p1

    const/high16 v7, 0x40

    if-ne v6, v7, :cond_0

    move v0, v4

    :goto_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_2

    and-int v6, p1, v8

    if-ne v6, v8, :cond_1

    move v2, v4

    :goto_1
    and-int v6, p1, v9

    if-ne v6, v9, :cond_4

    move v1, v4

    :goto_2
    const/4 v6, 0x4

    new-array v3, v6, [I

    if-eqz v0, :cond_5

    move v6, v4

    :goto_3
    aput v6, v3, v5

    if-eqz v2, :cond_6

    move v6, v4

    :goto_4
    aput v6, v3, v4

    const/4 v7, 0x2

    if-eqz v1, :cond_7

    move v6, v4

    :goto_5
    aput v6, v3, v7

    const/4 v6, 0x3

    if-eqz p2, :cond_8

    :goto_6
    aput v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disabledByCancel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",displayDialog="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",discDisplayed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",turnRoamAllowOff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    return-object v3

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    and-int v6, p1, v8

    if-ne v6, v8, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataConnected(I)Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    :goto_7
    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_7

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    move v6, v5

    goto :goto_3

    :cond_6
    move v6, v5

    goto :goto_4

    :cond_7
    move v6, v5

    goto :goto_5

    :cond_8
    move v4, v5

    goto :goto_6
.end method

.method private getEnhancedRoamingSettings(I)Z
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting enhanced roaming with field index which is out of range. index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->logE(Ljava/lang/String;)V

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "domestic"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "international"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "domestic"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "international"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private haveSprintDataRoamAllowSettingsChange(ZZ)V
    .locals 11

    const/4 v10, 0x3

    const/4 v4, 0x2

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const v7, -0x100001

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v2, v5, 0x6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v0, v4

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prevAllow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currAllow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    if-ne v2, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v5, v5, -0x7

    or-int v1, v5, v0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x0

    const v5, -0x600001

    and-int/2addr v1, v5

    and-int/lit8 v5, v1, 0x6

    packed-switch v5, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowDomRoam="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",allowIntRoam="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    :pswitch_1
    const/high16 v5, 0xf00

    and-int/2addr v5, v1

    if-eqz v5, :cond_3

    and-int/lit8 v5, v1, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v5, v4, :cond_6

    :cond_5
    and-int/lit8 v4, v1, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_8

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_8

    :cond_6
    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    and-int/2addr v1, v7

    and-int v4, v1, v9

    if-ne v4, v9, :cond_7

    const/high16 v4, 0x10

    or-int/2addr v1, v4

    :cond_7
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    and-int/2addr v1, v7

    goto :goto_1

    :pswitch_2
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v4, :cond_b

    and-int/lit8 v4, v1, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_a

    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    and-int/2addr v1, v7

    and-int v4, v1, v9

    if-ne v4, v9, :cond_9

    const/high16 v4, 0x10

    or-int/2addr v1, v4

    :cond_9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_a
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    and-int/2addr v1, v7

    goto/16 :goto_1

    :cond_b
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    and-int/2addr v1, v7

    goto/16 :goto_1

    :pswitch_3
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v10, :cond_e

    and-int/lit8 v4, v1, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_d

    and-int v4, v1, v8

    if-eq v4, v8, :cond_3

    and-int/2addr v1, v7

    and-int v4, v1, v9

    if-ne v4, v9, :cond_c

    const/high16 v4, 0x10

    or-int/2addr v1, v4

    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_d
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    and-int/2addr v1, v7

    goto/16 :goto_1

    :cond_e
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v5, v4, :cond_3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    and-int/2addr v1, v7

    goto/16 :goto_1

    :pswitch_4
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    and-int/2addr v1, v7

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private haveSprintDataRoamGuardSettingsChange(ZZ)V
    .locals 11

    const/high16 v10, 0x10

    const/4 v9, 0x2

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v2, v4, 0x60

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x40

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevGuard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",currGuard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    if-ne v2, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v4, v4, -0x61

    or-int v1, v4, v0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    sparse-switch v0, :sswitch_data_0

    :cond_3
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    :sswitch_0
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    and-int/lit8 v4, v1, 0x2

    if-ne v4, v9, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v4, v9, :cond_6

    :cond_5
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    :cond_6
    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    and-int/2addr v1, v6

    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    or-int/2addr v1, v10

    goto :goto_1

    :cond_7
    and-int/2addr v1, v6

    goto :goto_1

    :sswitch_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_9

    and-int/lit8 v4, v1, 0x2

    if-ne v4, v9, :cond_8

    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    and-int/2addr v1, v6

    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    or-int/2addr v1, v10

    goto :goto_1

    :cond_8
    and-int/2addr v1, v6

    goto :goto_1

    :cond_9
    and-int/2addr v1, v6

    goto :goto_1

    :sswitch_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    and-int v4, v1, v7

    if-eq v4, v7, :cond_3

    and-int/2addr v1, v6

    and-int v4, v1, v8

    if-ne v4, v8, :cond_3

    or-int/2addr v1, v10

    goto/16 :goto_1

    :cond_a
    and-int/2addr v1, v6

    goto/16 :goto_1

    :cond_b
    and-int/2addr v1, v6

    goto/16 :goto_1

    :sswitch_3
    and-int/2addr v1, v6

    const v4, -0x600001

    and-int/2addr v1, v4

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method private haveSprintERIupdate(IIZ)V
    .locals 11

    const v10, -0x600001

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const/4 v7, 0x0

    const v6, -0x100001

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingType()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "roamingType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const/high16 v2, 0x800

    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0xf00

    and-int v0, v4, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currNetworkArea= 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",newNetworkArea= 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRG not support, ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/high16 v2, 0x400

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_0

    const/high16 v2, 0x200

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Domestic roaming allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",International roaming allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Domestic roaming guard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",International roaming guard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0xf000001

    and-int/2addr v4, v5

    or-int v1, v4, v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    sparse-switch v2, :sswitch_data_0

    :cond_5
    :goto_2
    invoke-direct {p0, v1, v3, v7, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_6
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto/16 :goto_1

    :sswitch_0
    and-int/2addr v1, v6

    and-int/2addr v1, v10

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :sswitch_1
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-eqz v4, :cond_8

    and-int v4, v1, v8

    if-eq v4, v8, :cond_7

    and-int v4, v1, v9

    if-ne v4, v9, :cond_7

    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    :cond_7
    :goto_3
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "Domestic data roaming is not allowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_8
    const-string v4, "Domestic data roaming guard is disabled"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    and-int/2addr v1, v6

    and-int/2addr v1, v10

    goto :goto_3

    :sswitch_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-eqz v4, :cond_a

    and-int v4, v1, v8

    if-eq v4, v8, :cond_9

    and-int v4, v1, v9

    if-ne v4, v9, :cond_9

    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    :cond_9
    :goto_4
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->getEnhancedRoamingSettings(I)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "international data roaming is not allowed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :cond_a
    const-string v4, "International data roaming guard is disabled"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    and-int/2addr v1, v6

    and-int/2addr v1, v10

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private haveSprintMobileAllowStatusChange(Z)V
    .locals 10

    const/high16 v9, 0x10

    const/4 v4, 0x0

    const/high16 v3, 0x80

    const v8, -0x100001

    const/high16 v7, 0x4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v3

    if-eqz p1, :cond_0

    move v0, v3

    :goto_0
    if-ne v2, v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x800001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v3, :cond_4

    const/high16 v3, 0xf00

    and-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_2
    :sswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_1

    :sswitch_1
    and-int/lit8 v3, v1, 0x20

    const/16 v5, 0x20

    if-ne v3, v5, :cond_2

    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    and-int v3, v1, v8

    or-int v1, v3, v9

    goto :goto_2

    :sswitch_2
    and-int/lit8 v3, v1, 0x40

    const/16 v5, 0x40

    if-ne v3, v5, :cond_2

    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    and-int v3, v1, v8

    or-int v1, v3, v9

    goto :goto_2

    :cond_4
    and-int/2addr v1, v8

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isDataConnected(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p1, 0xf00

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x300 -> :sswitch_0
        0x400 -> :sswitch_0
        0x500 -> :sswitch_0
    .end sparse-switch
.end method

.method private isDataRoamGuardFunctionEnabled()Z
    .locals 3

    const/high16 v2, -0x8000

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataRoamGuardSupported()Z
    .locals 4

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriCarrierId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_0

    const/4 v0, 0x3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isDataRoaming(I)Z
    .locals 3

    const/4 v0, 0x0

    and-int/lit16 v1, p1, 0xf00

    const/16 v2, 0x300

    if-eq v1, v2, :cond_0

    const/16 v2, 0x500

    if-ne v1, v2, :cond_1

    :cond_0
    const/high16 v2, 0xf00

    and-int/2addr v2, p1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x3000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x4000000 -> :sswitch_2
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DGRD2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reEnableSprintGuardDialog(Z)V
    .locals 8

    const/high16 v3, 0x60

    const/high16 v7, 0x10

    const v6, -0x100001

    const/high16 v5, 0x80

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    if-eqz p1, :cond_3

    and-int v2, v0, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_1

    const v2, -0x600001

    and-int/2addr v0, v2

    and-int/lit8 v2, v0, 0x60

    if-eqz v2, :cond_0

    and-int/2addr v0, v6

    and-int v2, v0, v5

    if-ne v2, v5, :cond_0

    or-int/2addr v0, v7

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re-enable, mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-> 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    :cond_2
    return-void

    :cond_3
    and-int v2, v0, v3

    if-nez v2, :cond_1

    const/4 v1, 0x0

    const/high16 v2, 0xf00

    and-int/2addr v2, v0

    sparse-switch v2, :sswitch_data_0

    :cond_4
    :goto_1
    :sswitch_0
    if-eqz v1, :cond_5

    and-int v2, v0, v5

    if-ne v2, v5, :cond_5

    and-int v2, v0, v6

    or-int v0, v2, v7

    :cond_5
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    goto :goto_0

    :sswitch_1
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    and-int/lit8 v2, v0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private registerForEnhancedRoamingSettingChange()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Initialize enhanced roaming."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming_guard_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingGuardSettingObserver;-><init>(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard$DataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private storeSetting(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->Setting_DATA_ROAMING_GUARD_to_MODE:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming_guard"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateDataRoamingNotification(ILjava/lang/Boolean;)V
    .locals 7

    const v6, 0x42022

    const/4 v5, 0x0

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoaming(I)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoaming(I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "origDataRoam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",updateDataRoam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",newMode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestConnectionStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p2, v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eq v0, v1, :cond_2

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, v6, v5, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updatePreferSystem(I)V
    .locals 11

    const/4 v10, 0x1

    const/high16 v9, 0xf00

    const v8, -0x100001

    const/high16 v7, 0x80

    const/high16 v6, 0x4000

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateSprintPreferSystem(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v0

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, 0x7fffffff

    and-int v2, v4, v5

    if-eqz p1, :cond_1

    if-ne p1, v10, :cond_2

    :cond_1
    const/high16 v4, -0x8000

    or-int/2addr v2, v4

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    const/high16 v4, 0x3000

    and-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_0

    :cond_3
    :goto_1
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v10, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    :sswitch_0
    and-int v4, v2, v9

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_3

    and-int v4, v2, v6

    if-ne v4, v6, :cond_5

    and-int v4, v2, v7

    if-ne v4, v7, :cond_5

    and-int v4, v2, v8

    const/high16 v5, 0x10

    or-int v2, v4, v5

    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_1
    and-int v4, v2, v9

    if-eqz v4, :cond_3

    and-int v4, v2, v6

    if-ne v4, v6, :cond_6

    and-int v4, v2, v7

    if-ne v4, v7, :cond_6

    and-int v4, v2, v8

    const/high16 v5, 0x10

    or-int v2, v4, v5

    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_2
    and-int v4, v2, v9

    if-eqz v4, :cond_3

    and-int v4, v2, v6

    if-eq v4, v6, :cond_3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_7
    const v4, -0x600001

    and-int/2addr v2, v4

    and-int/2addr v2, v8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateSprintPreferSystem(I)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v0

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, 0x7fffffff

    and-int v2, v4, v5

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    :cond_0
    const/high16 v4, -0x8000

    or-int/2addr v2, v4

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newIsEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",currIsEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    if-eq v0, v1, :cond_3

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    and-int/lit8 v4, v2, 0x6

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    return-void

    :pswitch_1
    const/high16 v4, 0xf00

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    and-int/lit8 v4, v2, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-eq v4, v9, :cond_5

    :cond_4
    and-int/lit8 v4, v2, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_7

    :cond_5
    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    and-int/2addr v2, v6

    and-int v4, v2, v8

    if-ne v4, v8, :cond_6

    const/high16 v4, 0x10

    or-int/2addr v2, v4

    :cond_6
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    and-int/2addr v2, v6

    goto :goto_0

    :pswitch_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_a

    and-int/lit8 v4, v2, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_9

    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    and-int/2addr v2, v6

    and-int v4, v2, v8

    if-ne v4, v8, :cond_8

    const/high16 v4, 0x10

    or-int/2addr v2, v4

    :cond_8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    and-int/2addr v2, v6

    goto/16 :goto_0

    :cond_a
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    and-int/2addr v2, v6

    goto/16 :goto_0

    :pswitch_3
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v10, :cond_d

    and-int/lit8 v4, v2, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_c

    and-int v4, v2, v7

    if-eq v4, v7, :cond_2

    and-int/2addr v2, v6

    and-int v4, v2, v8

    if-ne v4, v8, :cond_b

    const/high16 v4, 0x10

    or-int/2addr v2, v4

    :cond_b
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    and-int/2addr v2, v6

    goto/16 :goto_0

    :cond_d
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    if-ne v4, v9, :cond_2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    and-int/2addr v2, v6

    goto/16 :goto_0

    :pswitch_4
    const/high16 v4, 0xf00

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    and-int/2addr v2, v6

    goto/16 :goto_0

    :cond_e
    const v4, -0x600001

    and-int/2addr v2, v4

    and-int/2addr v2, v6

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V
    .locals 8

    const/4 v3, 0x0

    const/high16 v5, 0x60

    and-int/2addr v5, p1

    const/high16 v6, 0x40

    if-ne v5, v6, :cond_a

    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x60

    and-int/2addr v6, v7

    const/high16 v7, 0x40

    if-ne v6, v7, :cond_b

    const/4 v6, 0x1

    :goto_1
    if-eq v5, v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/high16 v5, 0x10

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    const/high16 v5, 0x8

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0x8

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0xf00

    and-int/2addr v5, p1

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v7, 0xf00

    and-int/2addr v6, v7

    if-eq v5, v6, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_5

    and-int/lit8 v5, p1, 0x6

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x6

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    and-int/lit8 v5, p1, 0x2

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x2

    if-eq v5, v6, :cond_4

    const-string v5, "roaming allow change for Dom, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    and-int/lit8 v5, p1, 0x4

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x4

    if-eq v5, v6, :cond_5

    const-string v5, "roaming allow change for Int, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_7

    and-int/lit8 v5, p1, 0x60

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x60

    if-eq v5, v6, :cond_7

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    and-int/lit8 v5, p1, 0x20

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x20

    if-eq v5, v6, :cond_6

    const-string v5, "roaming guard change for Dom, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_6
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mRoamingType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    and-int/lit8 v5, p1, 0x40

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit8 v6, v6, 0x40

    if-eq v5, v6, :cond_7

    const-string v5, "roaming guard change for Int, notify it"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",turnRoamAllowOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",userRequest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    if-nez v3, :cond_8

    if-eqz p4, :cond_e

    :cond_8
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v5, 0x4

    if-ge v1, v5, :cond_c

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v5, v5, v1

    aget v6, v2, v1

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v6, v2, v1

    aput v6, v5, v1

    const/4 v0, 0x1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_c
    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    const-string v5, "updateStatusAndConnection.Notify DRG"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v5, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_e
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestConnect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    if-eqz v4, :cond_f

    const/high16 v5, 0x80

    and-int/2addr v5, p1

    const/high16 v6, 0x80

    if-ne v5, v6, :cond_10

    :cond_f
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6, p3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->controlDataFromRoamGuard(ZZ)V

    :cond_10
    return-void
.end method


# virtual methods
.method public blockedByDataRoamGuard()Z
    .locals 8

    const/high16 v7, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v6, 0x4000

    const/high16 v5, 0x4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->blockedBySprintDataRoamGuard()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x3000

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0xf00

    and-int/2addr v3, v4

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x60

    and-int/2addr v3, v4

    if-eq v3, v7, :cond_2

    move v0, v1

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockedByDataRoamGuard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x3000

    and-int/2addr v3, v4

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0xf00

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_6

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v4, 0x60

    and-int/2addr v3, v4

    if-eq v3, v7, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    const-string v0, "CDMA"

    const-string v1, "HtcDatatRoamGuard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x3

    const v5, -0x50000001

    const/high16 v4, 0x5000

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v3, :cond_1

    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " HtcDataRoamGuard drop event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x2

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/2addr v3, v5

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updatePreferSystem(I)V

    goto :goto_0

    :pswitch_3
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    :goto_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updatePreferSystem(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public haveDataNetworkState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 9

    const/high16 v8, 0x10

    const v7, -0x40001

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int/lit16 v1, v3, 0xf00

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currDataReqState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne p1, v5, :cond_5

    if-nez v1, :cond_3

    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x300

    :cond_0
    :goto_0
    const/high16 v5, 0x60

    and-int/2addr v5, v3

    const/high16 v6, 0x20

    if-ne v5, v6, :cond_1

    and-int v5, v3, v7

    const/high16 v6, 0x4

    or-int v3, v5, v6

    const v5, -0x600001

    and-int/2addr v3, v5

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-nez v5, :cond_8

    and-int v5, v3, v8

    if-ne v5, v8, :cond_8

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataConnected(I)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v4

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    const/4 v5, 0x4

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v5, v5, v2

    aget v6, v4, v2

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNotification:[I

    aget v6, v4, v2

    aput v6, v5, v2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/16 v5, 0x100

    if-ne v1, v5, :cond_4

    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x300

    goto :goto_0

    :cond_4
    const/16 v5, 0x200

    if-ne v1, v5, :cond_0

    and-int/lit16 v5, v3, -0xf01

    or-int/lit16 v3, v5, 0x400

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq p1, v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq p1, v5, :cond_6

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne p1, v5, :cond_1

    :cond_6
    and-int/lit16 v3, v3, -0xf01

    and-int/2addr v3, v7

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    const-string v5, "dataState.Notify DRG"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_8
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mode=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    return-void
.end method

.method public haveERIupdate(IIZ)V
    .locals 11

    const/high16 v10, 0x3000

    const/high16 v9, 0x4000

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const v6, -0x100001

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintERIupdate(IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    if-eqz p2, :cond_3

    const/high16 v2, 0x200

    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0xf00

    and-int v0, v4, v5

    if-ne v0, v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardSupported()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/high16 v2, 0x100

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_2

    const/high16 v2, 0x200

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0xf000001

    and-int/2addr v4, v5

    or-int v1, v4, v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    sparse-switch v2, :sswitch_data_0

    :cond_6
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_7
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto/16 :goto_0

    :sswitch_0
    and-int/2addr v1, v6

    const v4, -0x600001

    and-int/2addr v1, v4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :sswitch_1
    if-nez v0, :cond_8

    and-int v4, v1, v10

    const/high16 v5, 0x1000

    if-ne v4, v5, :cond_6

    and-int v4, v1, v7

    if-eq v4, v7, :cond_6

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    and-int v4, v1, v9

    if-ne v4, v9, :cond_6

    and-int v4, v1, v8

    if-ne v4, v8, :cond_6

    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    goto :goto_2

    :cond_8
    and-int v4, v1, v10

    if-nez v4, :cond_6

    and-int/2addr v1, v6

    const v4, -0x600001

    and-int/2addr v1, v4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :sswitch_2
    and-int v4, v1, v9

    if-ne v4, v9, :cond_a

    and-int v4, v1, v10

    const/high16 v5, 0x2000

    if-eq v4, v5, :cond_6

    and-int v4, v1, v7

    if-eq v4, v7, :cond_6

    const/high16 v4, 0x60

    and-int/2addr v4, v1

    if-nez v4, :cond_9

    and-int v4, v1, v8

    if-ne v4, v8, :cond_9

    and-int v4, v1, v6

    const/high16 v5, 0x10

    or-int v1, v4, v5

    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :cond_a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public haveMobileAllowStatusChange(Z)V
    .locals 10

    const/4 v4, 0x0

    const/high16 v3, 0x80

    const v9, -0x100001

    const/high16 v8, 0x4000

    const/high16 v7, 0x4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "SPCS roaming enhancement enabled: haveMobileAllowStatusChange"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->haveSprintMobileAllowStatusChange(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v3

    if-eqz p1, :cond_4

    move v0, v3

    :goto_1
    if-eq v2, v0, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x800001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v3, :cond_5

    const/high16 v3, 0xf00

    and-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_2
    :sswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1

    :sswitch_1
    const/high16 v3, 0x3000

    and-int/2addr v3, v1

    const/high16 v5, 0x1000

    if-ne v3, v5, :cond_2

    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    and-int v3, v1, v8

    if-ne v3, v8, :cond_2

    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    and-int v3, v1, v9

    const/high16 v5, 0x10

    or-int v1, v3, v5

    goto :goto_2

    :sswitch_2
    and-int v3, v1, v8

    if-ne v3, v8, :cond_2

    const/high16 v3, 0x3000

    and-int/2addr v3, v1

    const/high16 v5, 0x2000

    if-eq v3, v5, :cond_2

    and-int v3, v1, v7

    if-eq v3, v7, :cond_2

    const/high16 v3, 0x60

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    and-int v3, v1, v9

    const/high16 v5, 0x10

    or-int v1, v3, v5

    goto :goto_2

    :cond_5
    and-int/2addr v1, v9

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public haveRoamAllowSettingChange(Z)V
    .locals 11

    const v10, -0x100001

    const/high16 v9, 0xf00

    const/high16 v8, 0x80

    const/high16 v7, 0x4

    const/high16 v4, 0x4000

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "haveRoamAllowSettingChange: Sprint roaming enable, ignore it"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    and-int v2, v5, v4

    if-eqz p1, :cond_4

    move v0, v4

    :goto_1
    if-eq v2, v0, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v6, -0x40000001

    and-int/2addr v5, v6

    or-int v1, v5, v0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    const v5, -0x600001

    and-int/2addr v1, v5

    const/high16 v5, 0x3000

    and-int/2addr v5, v1

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_0
    and-int v5, v1, v9

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_2

    and-int v5, v1, v4

    if-ne v5, v4, :cond_6

    and-int v4, v1, v7

    if-eq v4, v7, :cond_2

    and-int/2addr v1, v10

    and-int v4, v1, v8

    if-ne v4, v8, :cond_5

    const/high16 v4, 0x10

    or-int/2addr v1, v4

    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :sswitch_1
    and-int v5, v1, v9

    if-eqz v5, :cond_2

    and-int v5, v1, v4

    if-ne v5, v4, :cond_8

    and-int v4, v1, v7

    if-eq v4, v7, :cond_2

    and-int/2addr v1, v10

    and-int v4, v1, v8

    if-ne v4, v8, :cond_7

    const/high16 v4, 0x10

    or-int/2addr v1, v4

    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :sswitch_2
    and-int v5, v1, v9

    if-eqz v5, :cond_2

    and-int v5, v1, v4

    if-ne v5, v4, :cond_9

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public reEnableGuardDialog(Z)V
    .locals 9

    const/high16 v8, 0x10

    const v7, -0x100001

    const/high16 v6, 0x3000

    const/high16 v5, 0x80

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reEnableGuardDialog: isReenableRejected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->reEnableSprintGuardDialog(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    if-eqz p1, :cond_4

    const/high16 v2, 0x60

    and-int/2addr v2, v0

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_3

    const v2, -0x600001

    and-int/2addr v0, v2

    and-int v2, v0, v6

    const/high16 v3, 0x2000

    if-eq v2, v3, :cond_2

    and-int/2addr v0, v7

    and-int v2, v0, v5

    if-ne v2, v5, :cond_2

    or-int/2addr v0, v8

    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re-enable, mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    :cond_4
    const/high16 v2, 0x60

    and-int/2addr v2, v0

    if-nez v2, :cond_3

    const/4 v1, 0x0

    const/high16 v2, 0xf00

    and-int/2addr v2, v0

    sparse-switch v2, :sswitch_data_0

    :cond_5
    :goto_2
    :sswitch_0
    if-eqz v1, :cond_6

    const/high16 v2, 0x4000

    and-int/2addr v2, v0

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_6

    and-int v2, v0, v5

    if-ne v2, v5, :cond_6

    and-int v2, v0, v7

    or-int v0, v2, v8

    :cond_6
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    goto :goto_1

    :sswitch_1
    and-int v2, v0, v6

    const/high16 v3, 0x1000

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2
    and-int v2, v0, v6

    const/high16 v3, 0x2000

    if-eq v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000000 -> :sswitch_1
        0x2000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public registerForNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->createNotificationObject(IZ)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    return-void
.end method

.method public setSettingTo(I)V
    .locals 11

    const v10, -0x600001

    const/high16 v9, 0x80

    const/high16 v8, 0x4

    const v7, -0x100001

    const/high16 v6, 0x4000

    const/high16 v4, 0x3000

    and-int v0, p1, v4

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const/high16 v5, 0x3000

    and-int v2, v4, v5

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->storeSetting(I)V

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    const v5, -0x30000001

    and-int/2addr v4, v5

    or-int v1, v4, v0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateDataRoamingNotification(ILjava/lang/Boolean;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    goto :goto_0

    :sswitch_0
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_5

    and-int v4, v1, v6

    if-ne v4, v6, :cond_4

    and-int v4, v1, v8

    if-eq v4, v8, :cond_1

    and-int/2addr v1, v7

    and-int v4, v1, v9

    if-ne v4, v9, :cond_3

    const/high16 v4, 0x10

    or-int/2addr v1, v4

    :cond_3
    and-int/2addr v1, v10

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    and-int/2addr v1, v7

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_1
    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_1

    and-int v4, v1, v6

    if-ne v4, v6, :cond_7

    and-int v4, v1, v8

    if-eq v4, v8, :cond_1

    and-int/2addr v1, v7

    and-int v4, v1, v9

    if-ne v4, v9, :cond_6

    const/high16 v4, 0x10

    or-int/2addr v1, v4

    :cond_6
    and-int/2addr v1, v10

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_2
    and-int/2addr v1, v7

    and-int/2addr v1, v10

    const/high16 v4, 0xf00

    and-int/2addr v4, v1

    if-eqz v4, :cond_1

    and-int v4, v1, v6

    if-ne v4, v6, :cond_8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000000 -> :sswitch_1
        0x20000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public setUserDialogResponse(ZZ)V
    .locals 8

    const/high16 v7, 0x2000

    const/high16 v6, 0x8

    const v5, -0x80001

    const v4, -0x600001

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->isDataRoamGuardFunctionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, -0x100001

    and-int/2addr v0, v3

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const v3, -0x30000001

    and-int/2addr v3, v0

    or-int v0, v3, v7

    and-int v3, v0, v5

    or-int v0, v3, v6

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->storeSetting(I)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->updateStatusAndConnection(ILjava/lang/Boolean;ZZ)V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUserDialogResponse accept="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "remember="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->log(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mMode:I

    return-void

    :cond_1
    const v3, -0x40000001

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    and-int v3, v0, v4

    const/high16 v4, 0x20

    or-int v0, v3, v4

    and-int v3, v0, v5

    or-int v0, v3, v6

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    and-int v3, v0, v4

    const/high16 v4, 0x40

    or-int v0, v3, v4

    goto :goto_0
.end method

.method public unregisterForNotification(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcDataRoamGuard;->mNofiticationList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
