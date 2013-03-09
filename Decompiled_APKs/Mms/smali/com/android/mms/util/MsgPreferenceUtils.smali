.class public Lcom/android/mms/util/MsgPreferenceUtils;
.super Ljava/lang/Object;
.source "MsgPreferenceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MsgPreferenceUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStorageAvailable(Ljava/lang/String;)Z
    .locals 2
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 34
    const-string v1, "bad_removal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nofs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "removed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "shared"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unmountable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unmounted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    const-string v1, "mounted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getMediaMountEventIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 29
    return-object v0
.end method

.method public static updateAttachmentStorageSetting(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceManager;Landroid/content/Context;)V
    .locals 13
    .parameter "pref_key"
    .parameter "pm"
    .parameter "ctx"

    .prologue
    .line 53
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcListPreference;

    .line 54
    .local v4, preSet:Lcom/htc/preference/HtcListPreference;
    invoke-static {p2}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 56
    .local v5, prefs:Landroid/content/SharedPreferences;
    if-nez v4, :cond_0

    .line 57
    const-string v10, "MsgPreferenceUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "preference_key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 62
    .local v8, strArray:[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 63
    .local v9, vIndex:I
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, p0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, dv:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 80
    :goto_1
    invoke-virtual {v4, v9}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    .line 84
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 85
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, state:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/util/MsgPreferenceUtils;->checkStorageAvailable(Ljava/lang/String;)Z

    move-result v3

    .line 87
    .local v3, pState:Z
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-static {v7}, Lcom/android/mms/util/MsgPreferenceUtils;->checkStorageAvailable(Ljava/lang/String;)Z

    move-result v6

    .line 99
    .local v6, sState:Z
    :goto_2
    const-string v10, "MsgPreferenceUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "phone state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v10, "MsgPreferenceUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sd state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz v3, :cond_2

    if-eqz v6, :cond_2

    .line 103
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 104
    aget-object v10, v8, v9

    invoke-virtual {v4, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    :goto_3
    new-instance v10, Lcom/android/mms/util/MsgPreferenceUtils$1;

    invoke-direct {v10}, Lcom/android/mms/util/MsgPreferenceUtils$1;-><init>()V

    invoke-virtual {v4, v10}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 69
    .end local v3           #pState:Z
    .end local v6           #sState:Z
    .end local v7           #state:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 70
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v10, "MsgPreferenceUtils"

    const-string v11, "can not get real default value of storage setting. "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v7

    .line 92
    .restart local v7       #state:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/util/MsgPreferenceUtils;->checkStorageAvailable(Ljava/lang/String;)Z

    move-result v3

    .line 93
    .restart local v3       #pState:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-static {v7}, Lcom/android/mms/util/MsgPreferenceUtils;->checkStorageAvailable(Ljava/lang/String;)Z

    move-result v6

    .restart local v6       #sState:Z
    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 107
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 108
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    :cond_3
    if-eqz v3, :cond_4

    if-nez v6, :cond_4

    .line 112
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v4, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    :goto_4
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_3

    .line 113
    :cond_4
    if-eqz v6, :cond_5

    if-nez v3, :cond_5

    .line 114
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v4, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 116
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public static updateOnlyOneAttachmentStorageSetting(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "pref_key"
    .parameter "ctx"

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, state:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/util/MsgPreferenceUtils;->checkStorageAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 138
    .local v0, pState:Z
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v4}, Lcom/android/mms/util/MsgPreferenceUtils;->checkStorageAvailable(Ljava/lang/String;)Z

    move-result v2

    .line 151
    .local v2, sState:Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 152
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 153
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 154
    .local v1, preEdt:Landroid/content/SharedPreferences$Editor;
    const-string v5, "MsgPreferenceUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDefaultAttachmentStorageSetting pref key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, p0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    .end local v1           #preEdt:Landroid/content/SharedPreferences$Editor;
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    return-void

    .line 142
    .end local v0           #pState:Z
    .end local v2           #sState:Z
    .end local v4           #state:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v4

    .line 143
    .restart local v4       #state:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/util/MsgPreferenceUtils;->checkStorageAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 144
    .restart local v0       #pState:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v4}, Lcom/android/mms/util/MsgPreferenceUtils;->checkStorageAvailable(Ljava/lang/String;)Z

    move-result v2

    .restart local v2       #sState:Z
    goto :goto_0

    .line 157
    :cond_2
    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 158
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 159
    .restart local v3       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 160
    .restart local v1       #preEdt:Landroid/content/SharedPreferences$Editor;
    const-string v5, "MsgPreferenceUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDefaultAttachmentStorageSetting pref key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, p0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method
