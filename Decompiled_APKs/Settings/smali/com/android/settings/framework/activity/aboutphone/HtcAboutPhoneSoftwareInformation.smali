.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneSoftwareInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_GET_CDMA_ERI_VERSION:I = 0x3e9

.field private static final LOG_TAG:Ljava/lang/String; = "HtcAboutPhoneSoftwareInformation"

.field private static PreferenceOfCdmaERI:Lcom/htc/preference/HtcPreference;

.field private static PreferenceOfCdmaPRI:Lcom/htc/preference/HtcPreference;

.field private static PreferenceOfCdmaPRL:Lcom/htc/preference/HtcPreference;

.field private static mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

.field private static mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;


# instance fields
.field private final ERI_CMD:Ljava/lang/String;

.field key2:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaERI:Lcom/htc/preference/HtcPreference;

    .line 61
    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRI:Lcom/htc/preference/HtcPreference;

    .line 62
    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRL:Lcom/htc/preference/HtcPreference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 82
    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 198
    const-string v0, "C85904000A4552492f303030303400"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->ERI_CMD:Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/String;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->key2:Ljava/lang/String;

    .line 216
    return-void
.end method

.method private doPlugin()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 98
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 99
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c049c

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 103
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcAboutPhoneFirmwareVersionPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcAboutPhoneFirmwareVersionPreference;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 107
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHtcSenseVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;-><init>(Landroid/content/Context;)V

    .line 109
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 113
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportROMVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcROMVersionPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcROMVersionPreference;-><init>(Landroid/content/Context;)V

    .line 115
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 119
    :cond_1
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcProjectFlags;->isC0010:Z

    if-eqz v3, :cond_2

    .line 120
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcCmccRomVersionPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcCmccRomVersionPreference;-><init>(Landroid/content/Context;)V

    .line 121
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 125
    :cond_2
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;-><init>(Landroid/content/Context;)V

    .line 126
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 133
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportDistributionTime()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;-><init>(Landroid/content/Context;)V

    .line 135
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    if-eq v3, v4, :cond_4

    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v3, v5, :cond_5

    .line 141
    :cond_4
    new-instance v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation$MyHandler;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation$MyHandler;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mHandler:Landroid/os/Handler;

    .line 143
    sput-object v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    .line 144
    sput-object p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    .line 148
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAppVersion(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 149
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcAppVersionPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcAppVersionPreference;-><init>(Landroid/content/Context;)V

    .line 150
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 154
    :cond_6
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/software/HtcAboutPhoneMoreSoftwareInfoPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/software/HtcAboutPhoneMoreSoftwareInfoPreference;-><init>(Landroid/content/Context;)V

    .line 155
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 158
    iget-object v3, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    if-eq v3, v4, :cond_7

    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v3, v5, :cond_8

    :cond_7
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_MOVE_CDMA_INFO_INTO_MORE:Z

    if-eq v3, v5, :cond_8

    .line 165
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPriPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPriPreference;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRI:Lcom/htc/preference/HtcPreference;

    .line 166
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 167
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 171
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPrlPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPrlPreference;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRL:Lcom/htc/preference/HtcPreference;

    .line 172
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRL:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 173
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRL:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 176
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_ERI_VERSION:Z

    if-ne v3, v5, :cond_8

    .line 178
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaEriPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaEriPreference;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaERI:Lcom/htc/preference/HtcPreference;

    .line 179
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaERI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 180
    sget-object v3, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaERI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 186
    :cond_8
    return-void
.end method

.method private ensurePhoneObject()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 87
    :cond_0
    return-void
.end method

.method private showCdmaExtraInfo()V
    .locals 3

    .prologue
    .line 203
    const-string v1, "HtcAboutPhoneSoftwareInformation"

    const-string v2, "Thread create"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->key2:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->ensurePhoneObject()V

    .line 207
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "C85904000A4552492f303030303400"

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/HtcIfPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 208
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->requestHandlers()V

    .line 79
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 195
    const-string v0, "HtcAboutPhoneSoftwareInformation"

    const-string v1, "OoO into OnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method
