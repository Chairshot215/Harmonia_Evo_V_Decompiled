.class public Lcom/s0up/goomanager/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mDownloadPathPreference:Landroid/preference/Preference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field private mUpdateFrequencyPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/SettingsActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/s0up/goomanager/SettingsActivity;->mDownloadPathPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/SettingsActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0xc

    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/SettingsActivity;->addPreferencesFromResource(I)V

    .line 33
    const-string v1, "goomanager"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/s0up/goomanager/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 34
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 36
    const-string v1, "update_timing"

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mUpdateFrequencyPreference:Landroid/preference/ListPreference;

    .line 37
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mUpdateFrequencyPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 39
    const-string v1, "download_path"

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mDownloadPathPreference:Landroid/preference/Preference;

    .line 40
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mDownloadPathPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 42
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mDownloadPathPreference:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/s0up/goomanager/GooManagerActivity;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "update_hours_interval"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 45
    .local v0, hrInterval:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "check_for_updates"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mUpdateFrequencyPreference:Landroid/preference/ListPreference;

    const-string v2, "boot"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mUpdateFrequencyPreference:Landroid/preference/ListPreference;

    const-string v2, "never"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mUpdateFrequencyPreference:Landroid/preference/ListPreference;

    const-string v2, "2hrs"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 54
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mUpdateFrequencyPreference:Landroid/preference/ListPreference;

    const-string v2, "4hrs"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    if-ne v0, v4, :cond_4

    .line 56
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mUpdateFrequencyPreference:Landroid/preference/ListPreference;

    const-string v2, "12hrs"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    .line 58
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mUpdateFrequencyPreference:Landroid/preference/ListPreference;

    const-string v2, "24hrs"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_5
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mUpdateFrequencyPreference:Landroid/preference/ListPreference;

    const-string v2, "48hrs"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mUpdateFrequencyPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v9, p2

    .line 67
    check-cast v9, Ljava/lang/String;

    .line 68
    .local v9, value:Ljava/lang/String;
    const-string v1, "2hrs"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "update_hours_interval"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 70
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "check_for_updates"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    :cond_0
    const-string v1, "4hrs"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "update_hours_interval"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "check_for_updates"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    :cond_1
    const-string v1, "12hrs"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "update_hours_interval"

    const/16 v3, 0xc

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "check_for_updates"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "update_hours_interval"

    const/16 v3, 0xc

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 94
    .local v8, hrInterval:I
    if-lez v8, :cond_7

    .line 95
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/s0up/goomanager/RomUpdateReciever;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v7, checkForUpdatesIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 97
    const/4 v2, 0x0

    .line 96
    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 98
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 99
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 100
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 101
    int-to-long v4, v8

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v4, v10

    add-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    .line 102
    int-to-long v10, v8

    mul-long/2addr v4, v10

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 110
    :goto_1
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    const/4 v1, 0x1

    .line 113
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v6           #pendingIntent:Landroid/app/PendingIntent;
    .end local v7           #checkForUpdatesIntent:Landroid/content/Intent;
    .end local v8           #hrInterval:I
    .end local v9           #value:Ljava/lang/String;
    :goto_2
    return v1

    .line 79
    .restart local v9       #value:Ljava/lang/String;
    :cond_3
    const-string v1, "24hrs"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "update_hours_interval"

    const/16 v3, 0x18

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "check_for_updates"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 82
    :cond_4
    const-string v1, "48hrs"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "update_hours_interval"

    const/16 v3, 0x30

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 84
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "check_for_updates"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 85
    :cond_5
    const-string v1, "boot"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 86
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "update_hours_interval"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "check_for_updates"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 88
    :cond_6
    const-string v1, "never"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "update_hours_interval"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    iget-object v1, p0, Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "check_for_updates"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 104
    .restart local v8       #hrInterval:I
    :cond_7
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/s0up/goomanager/RomUpdateReciever;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .restart local v7       #checkForUpdatesIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 106
    const/4 v2, 0x0

    .line 105
    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 107
    .restart local v6       #pendingIntent:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 108
    .restart local v0       #alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 113
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v6           #pendingIntent:Landroid/app/PendingIntent;
    .end local v7           #checkForUpdatesIntent:Landroid/content/Intent;
    .end local v8           #hrInterval:I
    .end local v9           #value:Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 118
    iget-object v4, p0, Lcom/s0up/goomanager/SettingsActivity;->mDownloadPathPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    move-object v1, p0

    .line 121
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, alertDownloadPath:Landroid/app/AlertDialog$Builder;
    const-string v4, "Download Path"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 124
    const-string v4, "Files will be saved to:"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 127
    .local v2, input:Landroid/widget/EditText;
    sget-object v4, Lcom/s0up/goomanager/GooManagerActivity;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelected(Z)V

    .line 129
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 131
    const-string v4, "Ok"

    new-instance v5, Lcom/s0up/goomanager/SettingsActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/s0up/goomanager/SettingsActivity$1;-><init>(Lcom/s0up/goomanager/SettingsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    const-string v4, "Cancel"

    new-instance v5, Lcom/s0up/goomanager/SettingsActivity$2;

    invoke-direct {v5, p0}, Lcom/s0up/goomanager/SettingsActivity$2;-><init>(Lcom/s0up/goomanager/SettingsActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 158
    .end local v0           #alertDownloadPath:Landroid/app/AlertDialog$Builder;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #input:Landroid/widget/EditText;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
