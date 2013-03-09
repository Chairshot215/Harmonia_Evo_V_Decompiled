.class public Leu/chainfire/stickmount/StickMountActivity;
.super Landroid/preference/PreferenceActivity;
.source "StickMountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/stickmount/StickMountActivity$MountAsync;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 22

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Leu/chainfire/stickmount/StickMountActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 140
    .local v21, root:Landroid/preference/PreferenceScreen;
    const-string v14, "StickMount"

    .line 141
    .local v14, APP_TITLE:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Leu/chainfire/stickmount/StickMountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 142
    .local v19, pm:Landroid/content/pm/PackageManager;
    if-eqz v19, :cond_0

    .line 144
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Leu/chainfire/stickmount/StickMountActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 145
    .local v18, pi:Landroid/content/pm/PackageInfo;
    if-eqz v18, :cond_0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " v"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 152
    .end local v18           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    new-instance v16, Landroid/preference/Preference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 153
    .local v16, copyright:Landroid/preference/Preference;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    const-string v2, "Copyright (C) 2011-2012 - Chainfire\nTap to visit thread on XDA-Developers"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    const-string v2, "copyright"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 157
    new-instance v2, Leu/chainfire/stickmount/StickMountActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Leu/chainfire/stickmount/StickMountActivity$1;-><init>(Leu/chainfire/stickmount/StickMountActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    invoke-static {}, Leu/chainfire/stickmount/Util;->getMounts()Ljava/util/ArrayList;

    move-result-object v17

    .line 168
    .local v17, mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "Mounts"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Leu/chainfire/stickmount/Pref;->Category(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    .line 169
    .local v3, unmount:Landroid/preference/PreferenceCategory;
    const-string v4, "Mount"

    const-string v5, "Mount mass storage devices"

    const/4 v6, 0x1

    new-instance v7, Leu/chainfire/stickmount/StickMountActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Leu/chainfire/stickmount/StickMountActivity$2;-><init>(Leu/chainfire/stickmount/StickMountActivity;)V

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Leu/chainfire/stickmount/Pref;->Preference(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;ZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    .line 178
    const-string v4, "Unmount"

    const-string v5, "Unmount mass storage devices"

    const/4 v6, 0x1

    new-instance v7, Leu/chainfire/stickmount/StickMountActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Leu/chainfire/stickmount/StickMountActivity$3;-><init>(Leu/chainfire/stickmount/StickMountActivity;)V

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Leu/chainfire/stickmount/Pref;->Preference(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;ZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    .line 188
    const-string v2, "Configuration"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Leu/chainfire/stickmount/Pref;->Category(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    .line 189
    .local v5, catConfig:Landroid/preference/PreferenceCategory;
    const-string v6, "Statusbar notification"

    const-string v7, "Show statusbar notifications"

    const-string v8, "show_statusbar_notifications"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Leu/chainfire/stickmount/Pref;->Check(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    .line 190
    const-string v6, "Toast notification"

    const-string v7, "Show toast notifications"

    const-string v8, "show_toast_notifications"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Leu/chainfire/stickmount/Pref;->Check(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    .line 192
    const-string v2, "Language"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Leu/chainfire/stickmount/Pref;->Category(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v7

    .line 193
    .local v7, catLanguage:Landroid/preference/PreferenceCategory;
    const-string v8, "Codepage"

    const-string v9, "(Expert) Use a specific codepage"

    const-string v10, "Enter codepage (empty for default)"

    const-string v11, "mount_cp"

    const-string v12, ""

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v12}, Leu/chainfire/stickmount/Pref;->Edit(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 194
    const-string v8, "UTF-8"

    const-string v9, "(Expert) Use UTF-8 for I/O"

    const-string v10, "mount_utf8"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Leu/chainfire/stickmount/Pref;->Check(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/preference/CheckBoxPreference;

    .line 196
    const-string v2, "My apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Leu/chainfire/stickmount/Pref;->Category(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/PreferenceCategory;

    move-result-object v9

    .line 197
    .local v9, catMarket:Landroid/preference/PreferenceCategory;
    const-string v10, "All my apps on Market"

    const-string v11, "PayPal: chainfire@chainfire.eu\nTwitter: @ChainfireXDA\nG+: http://gplus.chainfire.eu/\nWeb: http://chainfire.eu/"

    const/4 v12, 0x1

    new-instance v13, Leu/chainfire/stickmount/StickMountActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Leu/chainfire/stickmount/StickMountActivity$4;-><init>(Leu/chainfire/stickmount/StickMountActivity;)V

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v13}, Leu/chainfire/stickmount/Pref;->Preference(Landroid/content/Context;Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;ZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    .line 207
    move-object/from16 v15, p0

    .line 208
    .local v15, _this:Landroid/content/Context;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 209
    .local v20, prefs:Landroid/content/SharedPreferences;
    new-instance v2, Leu/chainfire/stickmount/StickMountActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Leu/chainfire/stickmount/StickMountActivity$5;-><init>(Leu/chainfire/stickmount/StickMountActivity;Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 218
    return-object v21

    .line 148
    .end local v3           #unmount:Landroid/preference/PreferenceCategory;
    .end local v5           #catConfig:Landroid/preference/PreferenceCategory;
    .end local v7           #catLanguage:Landroid/preference/PreferenceCategory;
    .end local v9           #catMarket:Landroid/preference/PreferenceCategory;
    .end local v15           #_this:Landroid/content/Context;
    .end local v16           #copyright:Landroid/preference/Preference;
    .end local v17           #mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 63
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p0}, Leu/chainfire/stickmount/StickMountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "eu.chainfire.stickmount.StickMountService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, svc:Landroid/content/Intent;
    const-string v1, "eu.chainfire.stickmount.ServiceAction"

    const-string v2, "attach"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Leu/chainfire/stickmount/StickMountActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Leu/chainfire/stickmount/StickMountActivity;->finish()V

    .line 73
    .end local v0           #svc:Landroid/content/Intent;
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Leu/chainfire/stickmount/StickMountActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Leu/chainfire/stickmount/StickMountActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Leu/chainfire/stickmount/StickMountActivity;->finish()V

    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 79
    return-void
.end method
