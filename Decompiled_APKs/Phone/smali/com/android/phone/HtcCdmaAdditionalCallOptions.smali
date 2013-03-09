.class public Lcom/android/phone/HtcCdmaAdditionalCallOptions;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcCdmaAdditionalCallOptions.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field public static final APTG_CALL_WAITING_DISABLE:Ljava/lang/String; = "*50"

.field public static final APTG_CALL_WAITING_ENABLE:Ljava/lang/String; = "*500"

.field private static final BUTTON_CW_KEY:Ljava/lang/String; = "button_cw_key"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaAdditionalCallOptions"


# instance fields
.field private final CALL_WAITING_DISABLE:I

.field private final CALL_WAITING_ENABLE:I

.field private final DBG:Z

.field private mCWButton:Lcom/htc/preference/HtcListPreference;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->DBG:Z

    .line 24
    iput-object v0, p0, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->mCWButton:Lcom/htc/preference/HtcListPreference;

    .line 26
    iput-object v0, p0, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->mContext:Landroid/content/Context;

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->CALL_WAITING_ENABLE:I

    .line 61
    iput v1, p0, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->CALL_WAITING_DISABLE:I

    return-void
.end method

.method private dialNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method private dialSpecificNumberToCallWaiting(I)V
    .locals 2
    .parameter "actionType"

    .prologue
    const/4 v1, 0x7

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 66
    :pswitch_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_WAITING:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "*50"

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    const-string v0, "*740"

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_WAITING:Z

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "*500"

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "*74"

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iput-object p0, p0, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->mContext:Landroid/content/Context;

    .line 37
    const v1, 0x7f050012

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 41
    .local v0, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v1, "button_cw_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcListPreference;

    iput-object v1, p0, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->mCWButton:Lcom/htc/preference/HtcListPreference;

    .line 42
    iget-object v1, p0, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->mCWButton:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 43
    iget-object v1, p0, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->mCWButton:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 44
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->mCWButton:Lcom/htc/preference/HtcListPreference;

    if-ne p1, v0, :cond_0

    .line 48
    const-string v0, "HtcCdmaAdditionalCallOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUTTON_CW_KEY( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaAdditionalCallOptions;->dialSpecificNumberToCallWaiting(I)V

    .line 52
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
