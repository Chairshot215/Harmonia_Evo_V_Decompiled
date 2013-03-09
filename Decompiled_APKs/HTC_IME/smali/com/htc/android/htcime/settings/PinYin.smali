.class public Lcom/htc/android/htcime/settings/PinYin;
.super Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;
.source "PinYin.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# instance fields
.field private modified:Z

.field private modifiedFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;-><init>()V

    .line 34
    iput v0, p0, Lcom/htc/android/htcime/settings/PinYin;->modifiedFlag:I

    .line 35
    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/PinYin;->modified:Z

    return-void
.end method

.method private initLayout()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method private writeUserFuzzyPinYinChangeLog()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/PinYin;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 108
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v3, "keyboard_chinese_pinyin_mohu_Z_ZH"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "zh,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    const-string v3, "keyboard_chinese_pinyin_mohu_C_CH"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ch,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_2
    const-string v3, "keyboard_chinese_pinyin_mohu_S_SH"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "sh,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_3
    const-string v3, "keyboard_chinese_pinyin_mohu_N_L"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "l,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_4
    const-string v3, "keyboard_chinese_pinyin_mohu_F_H"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "h,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_5
    const-string v3, "keyboard_chinese_pinyin_mohu_AN_ANG"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "ang,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_6
    const-string v3, "keyboard_chinese_pinyin_mohu_EN_ENG"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "eng,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_7
    const-string v3, "keyboard_chinese_pinyin_mohu_IN_ING"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "ing,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 124
    :cond_9
    new-instance v2, Lcom/htc/android/htcime/util/ULogUtil;

    invoke-direct {v2}, Lcom/htc/android/htcime/util/ULogUtil;-><init>()V

    .line 125
    .local v2, ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    const-string v3, "fuzzy_pinYin"

    const-string v4, "fuzzy_pinYin_pair"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/htcime/util/ULogUtil;->writeSinglePairULogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/PinYin;->addPreferencesFromResource(I)V

    .line 48
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/PinYin;->initLayout()V

    .line 49
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-super {p0}, Lcom/htc/android/htcime/settings/HtcInternalPreferenceActivity;->onPause()V

    .line 91
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/PinYin;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    .local v0, sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 95
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/settings/PinYin;->modifiedFlag:I

    if-lez v1, :cond_1

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MODIFIED"

    iget v3, p0, Lcom/htc/android/htcime/settings/PinYin;->modifiedFlag:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    :cond_1
    iput v4, p0, Lcom/htc/android/htcime/settings/PinYin;->modifiedFlag:I

    .line 100
    iget-boolean v1, p0, Lcom/htc/android/htcime/settings/PinYin;->modified:Z

    if-eqz v1, :cond_2

    const-string v1, "Feature_UserProfilingLog"

    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/PinYin;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-direct {p0}, Lcom/htc/android/htcime/settings/PinYin;->writeUserFuzzyPinYinChangeLog()V

    .line 103
    :cond_2
    iput-boolean v4, p0, Lcom/htc/android/htcime/settings/PinYin;->modified:Z

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/htc/android/htcime/settings/PinYin;->modified:Z

    .line 85
    return v0
.end method
