.class public final Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "PowersaverScreenTimeoutPreference.java"


# static fields
.field private static final DEFAULT_SCREEN_TIMEOUT_VALUE:I = 0xea60

.field public static final KEY:Ljava/lang/String; = "SCREEN_TIMEOUT"


# instance fields
.field private mInitialized:Z

.field private mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

.field private mPowerSaverSharedpref:Landroid/content/SharedPreferences;

.field private mTimeValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mInitialized:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mInitialized:Z

    .line 76
    return-void
.end method


# virtual methods
.method public getEntryText(I)Ljava/lang/String;
    .locals 2
    .parameter "milliseconds"

    .prologue
    .line 355
    if-gez p1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    div-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcFormatter;->formatTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected initialize()V
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "powersaver_shared"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->setPersistent(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->step1_loadTimeValueList()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->step2_applyExchangePolicy()V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->step3_bindData()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->step4_bindDefaultOption()V

    .line 119
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mInitialized:Z

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->initialize()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mInitialized:Z

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onBindView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 287
    if-gez p2, :cond_0

    .line 347
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v9, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 319
    .local v7, selectedValue:I
    const-string v2, "powersaver_status"

    .line 320
    .local v2, KEY_POWERSAVER_STATUS:Ljava/lang/String;
    const/16 v4, 0x1f41

    .line 321
    .local v4, POWERSAVER_STATUS:I
    const/16 v3, 0x1f40

    .line 322
    .local v3, NORMAL_STATUS:I
    const/16 v1, 0x1f40

    .line 324
    .local v1, DefaultStatus:I
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 325
    .local v5, cr:Landroid/content/ContentResolver;
    const-string v9, "powersaver_status"

    const/16 v10, 0x1f40

    invoke-static {v5, v9, v10}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 326
    .local v0, CurrentStatus:I
    invoke-static {v5}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSysTimeOut(Landroid/content/ContentResolver;)I

    move-result v6

    .line 328
    .local v6, oldTimeout:I
    const-string v9, "PowerSaver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CurrentStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v9, "PowerSaver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "selectedValue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v9, "PowerSaver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oldTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v9, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "powersaver_screen_timeout_settings"

    invoke-interface {v9, v10, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 336
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->setValue(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c05a1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v8, uiChangeIntent:Landroid/content/Intent;
    const-string v9, "POWERSAVER_UI_STATE_CHANGE"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v9, "PowerSaver"

    const-string v10, "the change preference is powersaver_screen_timeout"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v9, "CHANGE_UI_NAME"

    const-string v10, "powersaver_screen_timeout"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v9, "CHANGE_UI_VALUE"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mInitialized:Z

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->initialize()V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mInitialized:Z

    .line 278
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 280
    return-void
.end method

.method protected step1_loadTimeValueList()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/activity/powersaver/HtcCustomizedPowerSaverScreenTimeout;->getEntries(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mTimeValueList:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method protected step2_applyExchangePolicy()V
    .locals 6

    .prologue
    .line 142
    new-instance v3, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-direct {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    .line 144
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->applyGooglePolicy(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 148
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v1

    .line 151
    .local v1, indexOfPolicyItem:I
    new-instance v2, Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v2, newTimeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 155
    iget-object v3, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mTimeValueList:Ljava/util/ArrayList;

    .line 159
    .end local v0           #i:I
    .end local v1           #indexOfPolicyItem:I
    .end local v2           #newTimeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method protected step3_bindData()V
    .locals 8

    .prologue
    .line 165
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 168
    .local v4, size:I
    new-array v1, v4, [Ljava/lang/String;

    .line 169
    .local v1, entries:[Ljava/lang/String;
    new-array v5, v4, [Ljava/lang/String;

    .line 170
    .local v5, values:[Ljava/lang/String;
    new-array v0, v4, [Z

    .line 174
    .local v0, enabled:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 175
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getEntryText(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 176
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 177
    const/4 v6, 0x1

    aput-boolean v6, v0, v2

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 183
    iget-object v6, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v3

    .line 188
    .local v3, indexOfPolicyItem:I
    add-int/lit8 v2, v3, 0x1

    :goto_1
    if-ge v2, v4, :cond_1

    .line 189
    const/4 v6, 0x0

    aput-boolean v6, v0, v2

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v7}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getPolicyHintText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 198
    .end local v3           #indexOfPolicyItem:I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method

.method protected step4_bindDefaultOption()V
    .locals 4

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v2, "powersaver_screen_timeout_settings"

    const/16 v3, 0x7530

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, defaultValue:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->setValue(Ljava/lang/String;)V

    .line 266
    return-void
.end method
