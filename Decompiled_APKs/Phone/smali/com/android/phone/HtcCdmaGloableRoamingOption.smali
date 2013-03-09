.class public Lcom/android/phone/HtcCdmaGloableRoamingOption;
.super Ljava/lang/Object;
.source "HtcCdmaGloableRoamingOption.java"


# static fields
.field private static final BUTTON_GLOBAL_ROAMING_KEY:Ljava/lang/String; = "button_global_roaming_option_key"

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private DBG:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

.field private mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "HtcCdmaGloableRoamingOption"

    sput-object v0, Lcom/android/phone/HtcCdmaGloableRoamingOption;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/preference/HtcPreferenceActivity;Lcom/htc/preference/HtcPreferenceScreen;I)V
    .locals 1
    .parameter "prefActivity"
    .parameter "prefScreen"
    .parameter "option"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingOption;->DBG:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingOption;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 51
    iput-object p1, p0, Lcom/android/phone/HtcCdmaGloableRoamingOption;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    .line 52
    iput-object p2, p0, Lcom/android/phone/HtcCdmaGloableRoamingOption;->mPrefScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 53
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaGloableRoamingOption;->create()V

    .line 54
    return-void
.end method


# virtual methods
.method protected create()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingOption;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    .line 58
    return-void
.end method

.method public preferenceTreeClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button_global_roaming_option_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resume()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/phone/HtcCdmaGloableRoamingOption;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/phone/HtcCdmaGloableRoamingOption;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;

    const-string v2, "button_global_roaming_option_key"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;

    .line 64
    .local v0, mPref:Lcom/android/phone/HtcCdmaGlobalRoamingPreference;
    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaGlobalRoamingPreference;->updateGUI()V

    .line 66
    .end local v0           #mPref:Lcom/android/phone/HtcCdmaGlobalRoamingPreference;
    :cond_0
    return-void
.end method
