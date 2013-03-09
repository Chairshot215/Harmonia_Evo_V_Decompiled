.class public Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "CmasControlMenuPreferenceActivity.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field public static final PREF_KEY_CMAS_ENABLE_CHECKBOX:Ljava/lang/String; = "pref_key_cmas_enable_checkbox"

.field private static final TAG:Ljava/lang/String; = "CmasControlMenuPreferenceActivity"


# instance fields
.field private mCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTestCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method private getCmasSettingEnableStatus(Ljava/lang/String;)Z
    .locals 7
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 52
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 53
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCmasChannelIdFromPreferenceKey(Ljava/lang/String;)I

    move-result v1

    .line 54
    .local v1, id:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget v5, v5, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_number:I

    if-ge v0, v5, :cond_2

    .line 55
    sget-object v5, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v5, v5, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_id:[I

    aget v5, v5, v0

    if-ne v5, v1, :cond_1

    .line 57
    sget-object v5, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v5, v5, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    aget v5, v5, v0

    if-ne v5, v3, :cond_0

    .line 69
    .end local v0           #i:I
    .end local v1           #id:I
    :goto_1
    return v3

    .restart local v0       #i:I
    .restart local v1       #id:I
    :cond_0
    move v3, v4

    .line 57
    goto :goto_1

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 64
    goto :goto_1

    .line 68
    .end local v0           #i:I
    .end local v1           #id:I
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 69
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_1
.end method

.method private initItems()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/android/mms/MmsApp;->isCmasEngineerModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const v1, 0x7f040004

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->addPreferencesFromResource(I)V

    .line 35
    const-string v1, "pref_key_cmas_enable_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->mCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 36
    iget-object v1, p0, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->mCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f090325

    invoke-static {v2}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 37
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfEnableCmasSettings()Z

    move-result v0

    .line 38
    .local v0, enable:Z
    iget-object v1, p0, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->mCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 48
    .end local v0           #enable:Z
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->showTestCmasSettingInEngMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->addPreferencesFromResource(I)V

    .line 42
    const-string v1, "pref_cmas_alerts_test_alert_key"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->mTestCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 43
    iget-object v1, p0, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->mTestCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f090316

    invoke-static {v2}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 44
    iget-object v1, p0, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->mTestCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f09031c

    invoke-static {v2}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 45
    const-string v1, "pref_cmas_alerts_test_alert_key"

    invoke-direct {p0, v1}, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->getCmasSettingEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 46
    .restart local v0       #enable:Z
    iget-object v1, p0, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->mTestCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->initItems()V

    .line 84
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 102
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 25
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 113
    const-string v22, "CmasControlMenuPreferenceActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onPreferenceTreeClick: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->mCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->mTestCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_f

    .line 115
    :cond_0
    const/4 v6, 0x0

    .line 118
    .local v6, checked:Z
    const-string v14, ""

    .line 120
    .local v14, prefKey:Ljava/lang/String;
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/htc/preference/HtcCheckBoxPreference;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v22, p2

    .line 121
    check-cast v22, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v6

    .line 127
    const-string v22, "CmasControlMenuPreferenceActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "oncheck: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->mCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_4

    .line 129
    const-string v14, "pref_key_cmas_enable_checkbox"

    .line 130
    invoke-static {v6}, Lcom/android/mms/MmsApp;->enableCmasSettings(Z)V

    .line 138
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 139
    .local v20, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 141
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 142
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v19

    .line 143
    .local v19, sm:Landroid/telephony/SmsManager;
    sget-object v22, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_number:I

    move/from16 v18, v0

    .line 144
    .local v18, servNum:I
    if-eqz v6, :cond_5

    const/4 v9, 0x3

    .line 145
    .local v9, enable:I
    :goto_1
    if-nez v6, :cond_7

    .line 146
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move/from16 v0, v18

    if-ge v11, v0, :cond_e

    .line 147
    sget-object v22, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_id:[I

    move-object/from16 v22, v0

    aget v17, v22, v11

    .line 148
    .local v17, servId:I
    const-string v22, "pref_key_cmas_enable_checkbox"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    invoke-static {v14}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCmasChannelIdFromPreferenceKey(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 146
    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 125
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v9           #enable:I
    .end local v11           #i:I
    .end local v17           #servId:I
    .end local v18           #servNum:I
    .end local v19           #sm:Landroid/telephony/SmsManager;
    .end local v20           #sp:Landroid/content/SharedPreferences;
    :cond_3
    const/16 v22, 0x0

    .line 235
    .end local v6           #checked:Z
    .end local v14           #prefKey:Ljava/lang/String;
    :goto_4
    return v22

    .line 132
    .restart local v6       #checked:Z
    .restart local v14       #prefKey:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->mTestCmasEnableCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 135
    const-string v14, "pref_cmas_alerts_test_alert_key"

    goto :goto_0

    .line 144
    .restart local v8       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v18       #servNum:I
    .restart local v19       #sm:Landroid/telephony/SmsManager;
    .restart local v20       #sp:Landroid/content/SharedPreferences;
    :cond_5
    const/4 v9, 0x4

    goto :goto_1

    .line 154
    .restart local v9       #enable:I
    .restart local v11       #i:I
    .restart local v17       #servId:I
    :cond_6
    sget-object v22, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    move-object/from16 v22, v0

    aget v16, v22, v11

    .line 155
    .local v16, select:I
    const-string v22, "CmasControlMenuPreferenceActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "service> "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", select> "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Landroid/telephony/SmsManager;->setBCSMS(II)I

    move-result v15

    .line 157
    .local v15, result:I
    const-string v22, "CmasControlMenuPreferenceActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "setBCSMS> "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-lez v15, :cond_2

    .line 160
    sget-object v22, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v22, v11

    .line 162
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->getCmasPreferenceKey(I)Ljava/lang/String;

    move-result-object v12

    .line 163
    .local v12, key:Ljava/lang/String;
    if-eqz v12, :cond_2

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v8, v12, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 167
    .end local v11           #i:I
    .end local v12           #key:Ljava/lang/String;
    .end local v15           #result:I
    .end local v16           #select:I
    .end local v17           #servId:I
    :cond_7
    const/4 v3, 0x3

    .line 168
    .local v3, ENABLE:I
    const/4 v2, 0x4

    .line 169
    .local v2, DISABLE:I
    const/4 v4, 0x1

    .line 170
    .local v4, SELECT:I
    const/4 v5, 0x0

    .line 172
    .local v5, UNSELECT:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    move/from16 v0, v18

    if-ge v11, v0, :cond_e

    .line 173
    sget-object v22, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_id:[I

    move-object/from16 v22, v0

    aget v17, v22, v11

    .line 174
    .restart local v17       #servId:I
    sget-object v22, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    move-object/from16 v22, v0

    aget v16, v22, v11

    .line 175
    .restart local v16       #select:I
    const-string v22, "CmasControlMenuPreferenceActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "service> "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", select> "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v10, 0x4

    .line 177
    .local v10, funccode:I
    const-string v22, "pref_key_cmas_enable_checkbox"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    invoke-static {v14}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCmasChannelIdFromPreferenceKey(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 180
    if-eqz v6, :cond_9

    const/4 v10, 0x3

    .line 193
    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Landroid/telephony/SmsManager;->setBCSMS(II)I

    move-result v15

    .line 194
    .restart local v15       #result:I
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v10, v0, :cond_c

    const/16 v21, 0x1

    .line 195
    .local v21, tableSel:I
    :goto_7
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    const/4 v13, 0x1

    .line 196
    .local v13, preCheck:Z
    :goto_8
    const-string v22, "CmasControlMenuPreferenceActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "setBCSMS> "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-lez v15, :cond_8

    .line 199
    sget-object v22, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    move-object/from16 v22, v0

    aput v21, v22, v11

    .line 201
    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->getCmasPreferenceKey(I)Ljava/lang/String;

    move-result-object v12

    .line 202
    .restart local v12       #key:Ljava/lang/String;
    if-eqz v12, :cond_8

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #preCheck:Z
    .end local v15           #result:I
    .end local v21           #tableSel:I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 180
    :cond_9
    const/4 v10, 0x4

    goto :goto_6

    .line 182
    :cond_a
    const-string v22, "pref_key_cmas_enable_checkbox"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 184
    const/16 v22, 0x1000

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/4 v10, 0x3

    :goto_9
    goto :goto_6

    :cond_b
    const/4 v10, 0x4

    goto :goto_9

    .line 194
    .restart local v15       #result:I
    :cond_c
    const/16 v21, 0x0

    goto :goto_7

    .line 195
    .restart local v21       #tableSel:I
    :cond_d
    const/4 v13, 0x0

    goto :goto_8

    .line 206
    .end local v2           #DISABLE:I
    .end local v3           #ENABLE:I
    .end local v4           #SELECT:I
    .end local v5           #UNSELECT:I
    .end local v10           #funccode:I
    .end local v15           #result:I
    .end local v16           #select:I
    .end local v17           #servId:I
    .end local v21           #tableSel:I
    :cond_e
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    .end local v6           #checked:Z
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v9           #enable:I
    .end local v11           #i:I
    .end local v14           #prefKey:Ljava/lang/String;
    .end local v18           #servNum:I
    .end local v19           #sm:Landroid/telephony/SmsManager;
    .end local v20           #sp:Landroid/content/SharedPreferences;
    :cond_f
    :goto_a
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 209
    .restart local v6       #checked:Z
    .restart local v8       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v14       #prefKey:Ljava/lang/String;
    .restart local v20       #sp:Landroid/content/SharedPreferences;
    :cond_10
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 216
    .local v7, cls:[I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_b
    array-length v0, v7

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_14

    .line 217
    aget v22, v7, v11

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/MessageUtils;->getCmasPreferenceKey(I)Ljava/lang/String;

    move-result-object v12

    .line 218
    .restart local v12       #key:Ljava/lang/String;
    const-string v22, "pref_key_cmas_enable_checkbox"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 219
    aget v22, v7, v11

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 220
    invoke-interface {v8, v12, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 216
    :cond_11
    :goto_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 221
    :cond_12
    if-eqz v12, :cond_11

    .line 222
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v8, v12, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_c

    .line 226
    :cond_13
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 227
    invoke-interface {v8, v12, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_c

    .line 231
    .end local v12           #key:Ljava/lang/String;
    :cond_14
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;->getApplication()Landroid/app/Application;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/MessageUtils;->sendGsmCmasCommands(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    .line 209
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 96
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 90
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 108
    return-void
.end method
