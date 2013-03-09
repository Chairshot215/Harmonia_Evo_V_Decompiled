.class public Lcom/htc/UpgradeSetup/UpgradeSetupActivity;
.super Landroid/app/Activity;
.source "UpgradeSetupActivity.java"


# static fields
.field public static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field private static final CLS_NAME_CUSTOMIZATION:Ljava/lang/String; = "com.htc.android.htcsetupwizard.activity.CustomizationActivity"

.field private static final DEFAULT_HOME_ACTIVITY_NAME:Ljava/lang/String; = "com.htc.launcher.Launcher"

.field public static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final PKG_NAME_CUSTOMIZATION:Ljava/lang/String; = "com.htc.android.htcsetupwizard"

.field private static final RESULT_BACK_KEY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UpgradeSetup"


# instance fields
.field private currentStepCount:I

.field private currentStepId:I

.field private mActivityListFromXml:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutingActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/UpgradeSetup/StepSetting;",
            ">;"
        }
    .end annotation
.end field

.field mExecutingActivityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/UpgradeSetup/StepSetting;",
            ">;"
        }
    .end annotation
.end field

.field private runCustomization:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mActivityListFromXml:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    .line 38
    iput v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepId:I

    .line 39
    iput v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepCount:I

    .line 40
    iput-boolean v2, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->runCustomization:Z

    return-void
.end method

.method private executeActivity(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 155
    const-string v2, "UpgradeSetup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity ID = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/UpgradeSetup/StepSetting;

    invoke-virtual {v1}, Lcom/htc/UpgradeSetup/StepSetting;->getId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", step count = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/UpgradeSetup/StepSetting;

    invoke-virtual {v1}, Lcom/htc/UpgradeSetup/StepSetting;->getId()I

    move-result v1

    iput v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepId:I

    .line 158
    iget-object v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/UpgradeSetup/StepSetting;

    invoke-virtual {v1}, Lcom/htc/UpgradeSetup/StepSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/UpgradeSetup/StepSetting;

    invoke-virtual {v1}, Lcom/htc/UpgradeSetup/StepSetting;->getId()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "UpgradeSetup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException, Activity ID = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/UpgradeSetup/StepSetting;

    invoke-virtual {v1}, Lcom/htc/UpgradeSetup/StepSetting;->getId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string v1, "UpgradeSetup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such activity for FOTA, count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->finish()V

    goto :goto_0
.end method

.method private isSetupWizardHasRun()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "setup_wizard_has_run"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 221
    .local v0, hasSetupWizRun:I
    const-string v3, "UpgradeSetup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasSetupWizRun = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private setActivityList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, classNames:[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    .line 130
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mActivityListFromXml:Ljava/util/ArrayList;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v4, "UpgradeSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity string = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mActivityListFromXml:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v2, Lcom/htc/UpgradeSetup/StepSetting;

    iget-object v3, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mActivityListFromXml:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/htc/UpgradeSetup/StepSetting;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, stepSetting:Lcom/htc/UpgradeSetup/StepSetting;
    iget-object v3, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v3, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/htc/UpgradeSetup/StepSetting;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    .line 138
    const-string v4, "UpgradeSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final page  = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/UpgradeSetup/StepSetting;

    invoke-virtual {v3}, Lcom/htc/UpgradeSetup/StepSetting;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/UpgradeSetup/StepSetting;

    invoke-virtual {v3, v6}, Lcom/htc/UpgradeSetup/StepSetting;->setIsFinalPage(Z)V

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v2           #stepSetting:Lcom/htc/UpgradeSetup/StepSetting;
    :cond_1
    iget-object v3, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 144
    const-string v4, "UpgradeSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "First page  = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/UpgradeSetup/StepSetting;

    invoke-virtual {v3}, Lcom/htc/UpgradeSetup/StepSetting;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/UpgradeSetup/StepSetting;

    invoke-virtual {v3, v6}, Lcom/htc/UpgradeSetup/StepSetting;->setIsFirstPage(Z)V

    .line 148
    :cond_2
    const-string v3, "UpgradeSetup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total activity number  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v1           #i:I
    :cond_3
    return-void
.end method

.method private setDefaultHome(Landroid/content/Context;Ljava/lang/String;)V
    .locals 20
    .parameter "context"
    .parameter "homeActivityName"

    .prologue
    .line 171
    const-string v17, "UpgradeSetup"

    const-string v18, "setDefaultHome start ..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v8, homeIntent:Landroid/content/Intent;
    const-string v17, "android.intent.category.HOME"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 176
    .local v13, pm:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 178
    .local v12, myResolveInfo:Landroid/content/pm/ResolveInfo;
    const/high16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v8, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 180
    .local v15, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 181
    .local v11, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 182
    move-object v12, v11

    .line 187
    .end local v11           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v12, :cond_2

    .line 216
    :goto_0
    return-void

    .line 191
    :cond_2
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v7, filter:Landroid/content/IntentFilter;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v8}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 194
    .local v6, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 195
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 196
    .local v5, cat:Ljava/lang/String;
    invoke-virtual {v7, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    .end local v5           #cat:Ljava/lang/String;
    :cond_3
    const-string v17, "android.intent.category.DEFAULT"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 201
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    .line 202
    .local v2, N:I
    new-array v0, v2, [Landroid/content/ComponentName;

    move-object/from16 v16, v0

    .line 203
    .local v16, set:[Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 204
    .local v3, bestMatch:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v2, :cond_5

    .line 205
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 206
    .local v14, r:Landroid/content/pm/ResolveInfo;
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v17, v16, v9

    .line 208
    iget v0, v14, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v3, :cond_4

    .line 209
    iget v3, v14, Landroid/content/pm/ResolveInfo;->match:I

    .line 204
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 212
    .end local v14           #r:Landroid/content/pm/ResolveInfo;
    :cond_5
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v4, cName:Landroid/content/ComponentName;
    move-object/from16 v0, v16

    invoke-virtual {v13, v7, v3, v0, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 215
    const-string v17, "UpgradeSetup"

    const-string v18, "setDefaultHome finished."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    .line 97
    const-string v2, "UpgradeSetup"

    const-string v3, "finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v1, mainComponent:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 116
    const-string v2, "com.htc.launcher.Launcher"

    invoke-direct {p0, p0, v2}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->setDefaultHome(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, home:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 125
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 69
    const-string v1, "UpgradeSetup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult, requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentStepId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepId:I

    if-ne p1, v1, :cond_2

    .line 71
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->mExecutingActivityMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/UpgradeSetup/StepSetting;

    .line 74
    .local v0, currentStep:Lcom/htc/UpgradeSetup/StepSetting;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/UpgradeSetup/StepSetting;->getIsFirstPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "UpgradeSetup"

    const-string v2, "First page"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->finish()V

    .line 93
    .end local v0           #currentStep:Lcom/htc/UpgradeSetup/StepSetting;
    :goto_0
    return-void

    .line 80
    .restart local v0       #currentStep:Lcom/htc/UpgradeSetup/StepSetting;
    :cond_0
    iget v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepCount:I

    .line 81
    iget v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepCount:I

    invoke-direct {p0, v1}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->executeActivity(I)V

    goto :goto_0

    .line 85
    .end local v0           #currentStep:Lcom/htc/UpgradeSetup/StepSetting;
    :cond_1
    iget v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepCount:I

    .line 86
    iget v1, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepCount:I

    invoke-direct {p0, v1}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->executeActivity(I)V

    goto :goto_0

    .line 90
    :cond_2
    const-string v1, "UpgradeSetup"

    const-string v2, "request code not match"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "UpgradeSetup"

    const-string v1, "onCreate, start customization"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->isSetupWizardHasRun()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->setActivityList()V

    .line 50
    const-string v0, "service.fota.load.customization"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->runCustomization:Z

    .line 55
    iget-boolean v0, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->runCustomization:Z

    if-eqz v0, :cond_0

    .line 56
    iput v2, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepCount:I

    .line 60
    :goto_0
    iget v0, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepCount:I

    invoke-direct {p0, v0}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->executeActivity(I)V

    .line 65
    :goto_1
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->currentStepCount:I

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/htc/UpgradeSetup/UpgradeSetupActivity;->finish()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 229
    const-string v0, "UpgradeSetup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sparse-switch p1, :sswitch_data_0

    .line 240
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 238
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
