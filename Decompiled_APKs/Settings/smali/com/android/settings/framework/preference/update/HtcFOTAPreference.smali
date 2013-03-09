.class public final Lcom/android/settings/framework/preference/update/HtcFOTAPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcFOTAPreference.java"


# static fields
.field private static final FOTA_PACKAGE_NAME:Ljava/lang/String; = "com.android.updater"

.field private static final INTENT_ACTION:Ljava/lang/String; = "com.android.updater.FOTA_SETTING"

.field private static final KEY:Ljava/lang/String; = "FOTA_download_options"


# instance fields
.field private mAllowAdd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->initialize()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->initialize()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->initialize()V

    .line 54
    return-void
.end method

.method private isFOTAEnabled()Z
    .locals 10

    .prologue
    .line 137
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcFOTAFlag:Z

    .line 138
    .local v8, result:Z
    const-string v0, "content://com.android.updater/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    .local v1, fotaSettingUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 141
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_value"

    aput-object v4, v2, v3

    const-string v3, "_name=\'enable_manual_check\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, value:Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const/4 v8, 0x1

    .line 156
    .end local v9           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 157
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_1
    :goto_1
    return v8

    .line 149
    .restart local v9       #value:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "false"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v8, 0x0

    goto :goto_0

    .line 153
    .end local v9           #value:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 154
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "HtcFOTAPreference"

    const-string v2, "isFOTAEnabled"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    if-eqz v6, :cond_1

    .line 157
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 156
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 157
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private setTitle(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 4
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 86
    .local v0, parentTitle:Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->isFOTAEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcOMADMFlag:Z

    if-eqz v2, :cond_0

    .line 88
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c03d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const v2, 0x7f0c03db

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setTitle(I)V

    .line 96
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1
    .parameter "parent"

    .prologue
    .line 122
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setTitle(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 125
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1
    .parameter "parent"
    .parameter "order"

    .prologue
    .line 132
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setOrder(I)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 6

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 61
    const-string v3, "FOTA_download_options"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setKey(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 65
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 67
    .local v0, fotaRes:Landroid/content/res/Resources;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    .line 70
    :try_start_0
    const-string v3, "com.android.updater"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    if-eqz v0, :cond_1

    .line 75
    const-string v3, "category_software_update"

    const-string v4, "string"

    const-string v5, "com.android.updater"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 76
    .local v2, titleResId:I
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.updater.FOTA_SETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setIntent(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->mAllowAdd:Z

    .line 81
    .end local v2           #titleResId:I
    :cond_1
    return-void

    .line 71
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setDownloadSummary(Z)V
    .locals 6
    .parameter "isUpdaterProcessing"

    .prologue
    .line 101
    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 103
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 105
    .local v0, fotaRes:Landroid/content/res/Resources;
    :try_start_0
    const-string v3, "com.android.updater"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 108
    :goto_0
    if-eqz v0, :cond_0

    .line 110
    :try_start_1
    const-string v3, "category_software_update_srmmary"

    const-string v4, "string"

    const-string v5, "com.android.updater"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, summaryResId:I
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    .end local v0           #fotaRes:Landroid/content/res/Resources;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #summaryResId:I
    :cond_0
    :goto_1
    return-void

    .line 116
    :cond_1
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 112
    .restart local v0       #fotaRes:Landroid/content/res/Resources;
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 106
    :catch_1
    move-exception v3

    goto :goto_0
.end method
