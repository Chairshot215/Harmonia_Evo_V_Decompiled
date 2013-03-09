.class public Lcom/htc/feedback/PreviewActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "PreviewActivity.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "PreviewActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method private genPreviewIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "titleId"
    .parameter "text"

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/feedback/PreviewInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v0, previewInfoIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/feedback/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 216
    const-string v1, "title"

    invoke-virtual {p0, p1}, Lcom/htc/feedback/PreviewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 217
    const-string v1, "text"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    return-object v0
.end method

.method private initPreferences()V
    .locals 30

    .prologue
    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/htc/feedback/PreviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 45
    .local v16, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/feedback/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 47
    .local v9, intent:Landroid/content/Intent;
    const-string v24, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/app/ApplicationErrorReport;

    .line 48
    .local v18, report:Landroid/app/ApplicationErrorReport;
    const/4 v15, 0x0

    .line 50
    .local v15, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v18, :cond_1

    :try_start_0
    move-object/from16 v0, v18

    iget-object v14, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 51
    .local v14, packageName:Ljava/lang/String;
    :goto_0
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 56
    .end local v14           #packageName:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/feedback/PreviewActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v20

    .line 59
    .local v20, rootPreference:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v24, "preview_error"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v19

    check-cast v19, Lcom/htc/preference/HtcPreferenceCategory;

    .line 60
    .local v19, reportCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ApplicationErrorReport;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ApplicationErrorReport;->type:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 62
    :cond_0
    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ApplicationErrorReport;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 63
    const-string v24, "error_type"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    const v25, 0x7f070039

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 67
    :goto_2
    const-string v24, "error_package_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    const-string v24, "error_package_version"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    iget v0, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    const-string v24, "error_package_version_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    const-string v24, "error_installed_by"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    const-string v24, "error_process_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    const-string v24, "error_time"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v25

    new-instance v26, Ljava/util/Date;

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/app/ApplicationErrorReport;->time:J

    move-wide/from16 v27, v0

    invoke-direct/range {v26 .. v28}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v25 .. v26}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    const-string v24, "error_up_time"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/feedback/PreviewActivity;->timeMilisToString(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 75
    const-string v24, "error_awake_time"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/feedback/PreviewActivity;->timeMilisToString(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    const-string v24, "error_system_app"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    :goto_3
    const-string v24, "system_device"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    sget-object v25, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    const-string v24, "system_build_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    sget-object v25, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    const-string v24, "system_build_type"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    sget-object v25, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    const-string v24, "system_model"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    sget-object v25, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    const-string v24, "system_product"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    sget-object v25, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    const-string v24, "system_sdk_version"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    const-string v24, "system_release"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    sget-object v25, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    const-string v24, "system_incremental_version"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    sget-object v25, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    const-string v24, "system_brand"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    sget-object v25, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    const-string v24, "preview_crash_category"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreferenceCategory;

    .line 106
    .local v6, crashCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v24, "preview_anr_category"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    .line 108
    .local v3, anrCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v24, "preview_system_crash_category"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v23

    check-cast v23, Lcom/htc/preference/HtcPreferenceCategory;

    .line 110
    .local v23, sysCrashCategory:Lcom/htc/preference/HtcPreferenceCategory;
    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ApplicationErrorReport;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 111
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 112
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 114
    const-string v24, "crash_exception_class"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    const-string v24, "crash_source_file"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    const-string v24, "crash_source_class"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    const-string v24, "crash_source_method"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    const-string v24, "crash_line_number"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    const-string v24, "crash_stack_trace"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    const v25, 0x7f07003f

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/feedback/PreviewActivity;->genPreviewIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 122
    const-string v24, "crash_log"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    const v25, 0x7f070046

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/feedback/PreviewActivity;->genPreviewIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 142
    :goto_4
    const-string v24, "preview_radio_category"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v17

    check-cast v17, Lcom/htc/preference/HtcPreferenceCategory;

    .line 144
    .local v17, radioCategory:Lcom/htc/preference/HtcPreferenceCategory;
    const-string v24, "send_location"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 145
    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->getLocationInfo()Lcom/htc/feedback/AdditionalInfoService$LocationInfo;

    move-result-object v8

    .line 146
    .local v8, info:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;
    if-eqz v8, :cond_8

    .line 148
    const-string v24, "radio_sid"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v22

    .line 149
    .local v22, sidPreference:Lcom/htc/preference/HtcPreference;
    const-string v24, "radio_nid"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v13

    .line 150
    .local v13, nidPreference:Lcom/htc/preference/HtcPreference;
    const-string v24, "radio_bid"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 152
    .local v4, bidPreference:Lcom/htc/preference/HtcPreference;
    const-string v24, "radio_mcc"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v11

    .line 153
    .local v11, mccPreference:Lcom/htc/preference/HtcPreference;
    const-string v24, "radio_mnc"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v12

    .line 154
    .local v12, mncPreference:Lcom/htc/preference/HtcPreference;
    const-string v24, "radio_lac"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    .line 155
    .local v10, lacPreference:Lcom/htc/preference/HtcPreference;
    const-string v24, "radio_cell_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 157
    .local v5, cidPreference:Lcom/htc/preference/HtcPreference;
    const-string v24, "radio_rscp"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    .line 159
    .local v21, rscpPreference:Lcom/htc/preference/HtcPreference;
    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->phoneType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 160
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 161
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 162
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 163
    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->mcc:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->mnc:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->lac:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->cid:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->rscp:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    :goto_5
    const-string v24, "radio_latitude"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->latitude:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    const-string v24, "radio_longitude"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->longitude:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    .end local v4           #bidPreference:Lcom/htc/preference/HtcPreference;
    .end local v5           #cidPreference:Lcom/htc/preference/HtcPreference;
    .end local v8           #info:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;
    .end local v10           #lacPreference:Lcom/htc/preference/HtcPreference;
    .end local v11           #mccPreference:Lcom/htc/preference/HtcPreference;
    .end local v12           #mncPreference:Lcom/htc/preference/HtcPreference;
    .end local v13           #nidPreference:Lcom/htc/preference/HtcPreference;
    .end local v21           #rscpPreference:Lcom/htc/preference/HtcPreference;
    .end local v22           #sidPreference:Lcom/htc/preference/HtcPreference;
    :goto_6
    return-void

    .line 50
    .end local v3           #anrCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v6           #crashCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v17           #radioCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v19           #reportCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v20           #rootPreference:Lcom/htc/preference/HtcPreferenceScreen;
    .end local v23           #sysCrashCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_1
    :try_start_1
    const-string v14, "android"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 52
    :catch_0
    move-exception v7

    .line 53
    .local v7, e:Ljava/lang/Exception;
    const-string v24, "PreviewActivity"

    const-string v25, "no package info"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 65
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v19       #reportCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v20       #rootPreference:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_2
    const-string v24, "error_type"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    const v25, 0x7f070040

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 78
    :cond_3
    const-string v24, "error_type"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    const v25, 0x7f070045

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 79
    const-string v24, "error_time"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v25

    new-instance v26, Ljava/util/Date;

    const-string v27, "time"

    const-wide/16 v28, -0x1

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v27

    invoke-direct/range {v26 .. v28}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v25 .. v26}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    const-string v24, "error_package_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 83
    const-string v24, "error_package_version"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 84
    const-string v24, "error_package_version_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 85
    const-string v24, "error_installed_by"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 86
    const-string v24, "error_process_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 87
    const-string v24, "error_up_time"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 88
    const-string v24, "error_awake_time"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 89
    const-string v24, "error_system_app"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_3

    .line 123
    .restart local v3       #anrCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v6       #crashCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v23       #sysCrashCategory:Lcom/htc/preference/HtcPreferenceCategory;
    :cond_4
    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ApplicationErrorReport;->type:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 124
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 125
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 126
    const-string v24, "anr_stack_traces"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 128
    const-string v24, "anr_activity"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    const-string v24, "anr_caused_by"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    const-string v24, "anr_additional_info"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    const v25, 0x7f070043

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/feedback/PreviewActivity;->genPreviewIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 132
    const-string v24, "anr_crash_log"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    const v25, 0x7f070046

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/feedback/PreviewActivity;->genPreviewIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 134
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 135
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 137
    const-string v24, "system_crash_log"

    invoke-virtual/range {v23 .. v24}, Lcom/htc/preference/HtcPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v24

    const v25, 0x7f070046

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/feedback/PreviewActivity;->genPreviewIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 168
    .restart local v4       #bidPreference:Lcom/htc/preference/HtcPreference;
    .restart local v5       #cidPreference:Lcom/htc/preference/HtcPreference;
    .restart local v8       #info:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;
    .restart local v10       #lacPreference:Lcom/htc/preference/HtcPreference;
    .restart local v11       #mccPreference:Lcom/htc/preference/HtcPreference;
    .restart local v12       #mncPreference:Lcom/htc/preference/HtcPreference;
    .restart local v13       #nidPreference:Lcom/htc/preference/HtcPreference;
    .restart local v17       #radioCategory:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v21       #rscpPreference:Lcom/htc/preference/HtcPreference;
    .restart local v22       #sidPreference:Lcom/htc/preference/HtcPreference;
    :cond_6
    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->phoneType:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 169
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 170
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 171
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 172
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 173
    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->sid:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->nid:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->bid:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    iget v0, v8, Lcom/htc/feedback/AdditionalInfoService$LocationInfo;->rscp:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 178
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 179
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 180
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 181
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 182
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 183
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 184
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 185
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_5

    .line 190
    .end local v4           #bidPreference:Lcom/htc/preference/HtcPreference;
    .end local v5           #cidPreference:Lcom/htc/preference/HtcPreference;
    .end local v10           #lacPreference:Lcom/htc/preference/HtcPreference;
    .end local v11           #mccPreference:Lcom/htc/preference/HtcPreference;
    .end local v12           #mncPreference:Lcom/htc/preference/HtcPreference;
    .end local v13           #nidPreference:Lcom/htc/preference/HtcPreference;
    .end local v21           #rscpPreference:Lcom/htc/preference/HtcPreference;
    .end local v22           #sidPreference:Lcom/htc/preference/HtcPreference;
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_6

    .line 193
    .end local v8           #info:Lcom/htc/feedback/AdditionalInfoService$LocationInfo;
    :cond_9
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_6
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 198
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 199
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private timeMilisToString(J)Ljava/lang/String;
    .locals 9
    .parameter "time"

    .prologue
    const-wide/16 v7, 0x3c

    .line 206
    const-wide/16 v5, 0x3e8

    div-long v3, p1, v5

    .line 207
    .local v3, t:J
    rem-long v5, v3, v7

    long-to-int v2, v5

    .line 208
    .local v2, s:I
    div-long v5, v3, v7

    rem-long/2addr v5, v7

    long-to-int v1, v5

    .line 209
    .local v1, m:I
    const-wide/16 v5, 0xe10

    div-long v5, v3, v5

    long-to-int v0, v5

    .line 210
    .local v0, h:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/htc/feedback/PreviewActivity;->pad(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/htc/feedback/PreviewActivity;->pad(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/htc/feedback/PreviewActivity;->addPreferencesFromResource(I)V

    .line 38
    invoke-direct {p0}, Lcom/htc/feedback/PreviewActivity;->initPreferences()V

    .line 39
    return-void
.end method
