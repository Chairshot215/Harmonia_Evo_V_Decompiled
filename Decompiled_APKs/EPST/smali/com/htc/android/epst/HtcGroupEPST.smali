.class public Lcom/htc/android/epst/HtcGroupEPST;
.super Landroid/preference/PreferenceActivity;
.source "HtcGroupEPST.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/htc/android/epst/CommitChangeObserver;


# static fields
.field private static final DIALOG_COMMIT_PROGRESS:I = 0x1

.field private static final DIALOG_PROMPT_REBOOT:I = 0x2

.field private static final KEY_DATA:[Ljava/lang/String; = null

.field private static KEY_GROUP:[Ljava/lang/String; = null

.field private static final KEY_PROGRAM:[Ljava/lang/String; = null

.field private static final KEY_PST:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "HtcGroupEPST"

.field private static mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private static mSettingGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/SettingGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DBG:Z

.field private DSS_INDEX:I

.field private IMS_INDEX:I

.field private WIMAX_INDEX:I

.field private mMode:I

.field private mPreference:[Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pst_display"

    aput-object v1, v0, v3

    const-string v1, "pst_akey"

    aput-object v1, v0, v4

    const-string v1, "pst_nam_settings"

    aput-object v1, v0, v5

    const-string v1, "pst_cdma_settings"

    aput-object v1, v0, v6

    const-string v1, "pst_home_sid_nid"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pst_modem_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pst_prl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pst_security"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pst_data_parameter"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pst_phone_dir"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pst_ims"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pst_mip_settings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pst_mip_default_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pst_mip_profile1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pst_mip_profile2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pst_mip_profile3"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pst_mip_profile4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pst_mip_profile5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/epst/HtcGroupEPST;->KEY_PST:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "entry_data_profile"

    aput-object v1, v0, v3

    const-string v1, "entry_evdo"

    aput-object v1, v0, v4

    const-string v1, "entry_advanced"

    aput-object v1, v0, v5

    const-string v1, "entry_dss"

    aput-object v1, v0, v6

    const-string v1, "entry_wimax"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/android/epst/HtcGroupEPST;->KEY_DATA:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "program_1x"

    aput-object v1, v0, v3

    const-string v1, "program_display_group"

    aput-object v1, v0, v4

    const-string v1, "program_feature_settings"

    aput-object v1, v0, v5

    const-string v1, "program_cdma_settings"

    aput-object v1, v0, v6

    const-string v1, "program_nam_general"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "program_dir"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/epst/HtcGroupEPST;->KEY_PROGRAM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 41
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/HtcGroupEPST;->DBG:Z

    .line 49
    const/16 v0, 0x12

    new-array v0, v0, [Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    aput-object v2, v0, v4

    const/16 v1, 0xb

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/epst/HtcGroupEPST;->mPreference:[Landroid/preference/PreferenceScreen;

    .line 64
    iput v4, p0, Lcom/htc/android/epst/HtcGroupEPST;->IMS_INDEX:I

    .line 69
    sget-object v0, Lcom/htc/android/epst/HtcGroupEPST;->KEY_DATA:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/epst/HtcGroupEPST;->WIMAX_INDEX:I

    .line 70
    sget-object v0, Lcom/htc/android/epst/HtcGroupEPST;->KEY_DATA:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/htc/android/epst/HtcGroupEPST;->DSS_INDEX:I

    .line 78
    iput v3, p0, Lcom/htc/android/epst/HtcGroupEPST;->mMode:I

    return-void
.end method

.method private initPreferenceGroup()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/htc/android/epst/HtcGroupEPST;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 157
    .local v4, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lcom/htc/android/epst/HtcGroupEPST;->mSettingGroups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 158
    sget-object v6, Lcom/htc/android/epst/HtcGroupEPST;->mSettingGroups:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/epst/SettingGroup;

    .line 159
    .local v5, settingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-virtual {v5}, Lcom/htc/android/epst/SettingGroup;->getMode()I

    move-result v2

    .line 160
    .local v2, mode:I
    invoke-virtual {v5}, Lcom/htc/android/epst/SettingGroup;->getOperatorID()I

    move-result v3

    .line 161
    .local v3, operatorID:I
    iget-object v7, p0, Lcom/htc/android/epst/HtcGroupEPST;->mPreference:[Landroid/preference/PreferenceScreen;

    sget-object v6, Lcom/htc/android/epst/HtcGroupEPST;->KEY_GROUP:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6}, Lcom/htc/android/epst/HtcGroupEPST;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    aput-object v6, v7, v1

    .line 162
    iget-object v6, p0, Lcom/htc/android/epst/HtcGroupEPST;->mPreference:[Landroid/preference/PreferenceScreen;

    aget-object v6, v6, v1

    invoke-virtual {v6, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 163
    iget v6, p0, Lcom/htc/android/epst/HtcGroupEPST;->mMode:I

    and-int/2addr v6, v2

    iget v7, p0, Lcom/htc/android/epst/HtcGroupEPST;->mMode:I

    if-eq v6, v7, :cond_1

    .line 164
    iget-object v6, p0, Lcom/htc/android/epst/HtcGroupEPST;->mPreference:[Landroid/preference/PreferenceScreen;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v6

    and-int/2addr v6, v3

    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 166
    iget-boolean v6, p0, Lcom/htc/android/epst/HtcGroupEPST;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "HtcGroupEPST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "operator id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!=EntryEPSTInfo.operatorID():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    iget-object v6, p0, Lcom/htc/android/epst/HtcGroupEPST;->mPreference:[Landroid/preference/PreferenceScreen;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 171
    .end local v2           #mode:I
    .end local v3           #operatorID:I
    .end local v5           #settingGroup:Lcom/htc/android/epst/SettingGroup;
    :cond_3
    invoke-static {}, Lcom/htc/android/epst/GroupTable;->getCurrentIndex()I

    move-result v0

    .line 172
    .local v0, currentIndex:I
    if-ne v0, v10, :cond_4

    sget-boolean v6, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_WIMAX_INFO_ENTRY:Z

    if-eq v6, v9, :cond_4

    .line 174
    iget-object v6, p0, Lcom/htc/android/epst/HtcGroupEPST;->mPreference:[Landroid/preference/PreferenceScreen;

    iget v7, p0, Lcom/htc/android/epst/HtcGroupEPST;->WIMAX_INDEX:I

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_4
    if-ne v0, v10, :cond_5

    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    sget-boolean v6, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_USB_CHARGE_MODE_CHANGER:Z

    if-ne v6, v9, :cond_5

    .line 180
    const v6, 0x7f03002c

    invoke-virtual {p0, v6}, Lcom/htc/android/epst/HtcGroupEPST;->addPreferencesFromResource(I)V

    .line 187
    :cond_5
    if-nez v0, :cond_6

    sget-boolean v6, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SUPPORT_IMS:Z

    if-nez v6, :cond_6

    .line 189
    iget-object v6, p0, Lcom/htc/android/epst/HtcGroupEPST;->mPreference:[Landroid/preference/PreferenceScreen;

    iget v7, p0, Lcom/htc/android/epst/HtcGroupEPST;->IMS_INDEX:I

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    :cond_6
    return-void
.end method

.method private startTargetActivity(Ljava/lang/String;)V
    .locals 5
    .parameter "nameForIndexOfItem"

    .prologue
    .line 119
    const-string v2, "HtcGroupEPST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/android/epst/HtcGroupEPST;->mSettingGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 123
    sget-object v2, Lcom/htc/android/epst/HtcGroupEPST;->mSettingGroups:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/epst/SettingGroup;->getPreferenceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const-string v3, "HtcGroupEPST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "break.name:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/htc/android/epst/HtcGroupEPST;->mSettingGroups:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/epst/SettingGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "group"

    sget-object v2, Lcom/htc/android/epst/HtcGroupEPST;->mSettingGroups:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    const-string v2, "mode"

    iget v3, p0, Lcom/htc/android/epst/HtcGroupEPST;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/epst/HtcGroupEPST;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    return-void

    .line 121
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/android/epst/HtcGroupEPST;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/epst/HtcGroupEPST;->mMode:I

    .line 86
    const-string v1, "HtcGroupEPST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/epst/HtcGroupEPST;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/htc/android/epst/GroupTable;->getCurrentIndex()I

    move-result v0

    .line 89
    .local v0, currentIndex:I
    if-nez v0, :cond_0

    .line 91
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/HtcGroupEPST;->addPreferencesFromResource(I)V

    .line 92
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->getPSTGroupList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/htc/android/epst/HtcGroupEPST;->mSettingGroups:Ljava/util/List;

    .line 93
    sget-object v1, Lcom/htc/android/epst/HtcGroupEPST;->KEY_PST:[Ljava/lang/String;

    sput-object v1, Lcom/htc/android/epst/HtcGroupEPST;->KEY_GROUP:[Ljava/lang/String;

    .line 113
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/epst/HtcGroupEPST;->initPreferenceGroup()V

    .line 115
    :goto_1
    return-void

    .line 95
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 97
    const v1, 0x7f030029

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/HtcGroupEPST;->addPreferencesFromResource(I)V

    .line 98
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->getDATAGroupList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/htc/android/epst/HtcGroupEPST;->mSettingGroups:Ljava/util/List;

    .line 99
    sget-object v1, Lcom/htc/android/epst/HtcGroupEPST;->KEY_DATA:[Ljava/lang/String;

    sput-object v1, Lcom/htc/android/epst/HtcGroupEPST;->KEY_GROUP:[Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 103
    const v1, 0x7f03002a

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/HtcGroupEPST;->addPreferencesFromResource(I)V

    .line 104
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->getPROGroupList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/htc/android/epst/HtcGroupEPST;->mSettingGroups:Ljava/util/List;

    .line 105
    sget-object v1, Lcom/htc/android/epst/HtcGroupEPST;->KEY_PROGRAM:[Ljava/lang/String;

    sput-object v1, Lcom/htc/android/epst/HtcGroupEPST;->KEY_GROUP:[Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_2
    const-string v1, "HtcGroupEPST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Setting group didn\'t be defined by EntryEPSTInfo.EPST group id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 257
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    sget-object v0, Lcom/htc/android/epst/HtcGroupEPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/htc/android/epst/HtcGroupEPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 238
    :cond_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/epst/HtcGroupEPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 239
    sget-object v0, Lcom/htc/android/epst/HtcGroupEPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f04004e

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/HtcGroupEPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    sget-object v0, Lcom/htc/android/epst/HtcGroupEPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 241
    sget-object v0, Lcom/htc/android/epst/HtcGroupEPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 242
    sget-object v0, Lcom/htc/android/epst/HtcGroupEPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 245
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040016

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/htc/android/epst/HtcGroupEPST$1;

    invoke-direct {v2, p0}, Lcom/htc/android/epst/HtcGroupEPST$1;-><init>(Lcom/htc/android/epst/HtcGroupEPST;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 210
    iget v1, p0, Lcom/htc/android/epst/HtcGroupEPST;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/htc/android/epst/HtcGroupEPST;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 212
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f050001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 214
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 228
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 222
    :pswitch_0
    new-instance v0, Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-direct {v0}, Lcom/htc/android/epst/CdmaSettingUpdater;-><init>()V

    .line 223
    .local v0, updater:Lcom/htc/android/epst/SettingValueUpdater;
    invoke-interface {v0, p0}, Lcom/htc/android/epst/SettingValueUpdater;->commitChange(Lcom/htc/android/epst/CommitChangeObserver;)V

    .line 224
    invoke-virtual {p0, v1}, Lcom/htc/android/epst/HtcGroupEPST;->showDialog(I)V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x7f06001c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const-string v0, "HtcGroupEPST"

    const-string v1, "preference == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/epst/HtcGroupEPST;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcGroupEPST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/epst/HtcGroupEPST;->startTargetActivity(Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 141
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 147
    const-string v0, "HtcGroupEPST"

    const-string v1, "onUserLeaveHint()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/htc/android/epst/HtcGroupEPST;->finish()V

    .line 149
    return-void
.end method

.method public returnDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "iMessage"

    .prologue
    .line 262
    new-instance v0, Lcom/htc/android/epst/HtcGroupEPST$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/epst/HtcGroupEPST$2;-><init>(Lcom/htc/android/epst/HtcGroupEPST;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/HtcGroupEPST;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method public updateCommitResult(II)V
    .locals 1
    .parameter "successCount"
    .parameter "failedCount"

    .prologue
    .line 271
    new-instance v0, Lcom/htc/android/epst/HtcGroupEPST$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/android/epst/HtcGroupEPST$3;-><init>(Lcom/htc/android/epst/HtcGroupEPST;II)V

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/HtcGroupEPST;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method
