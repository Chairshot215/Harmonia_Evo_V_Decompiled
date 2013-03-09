.class Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;
.super Landroid/os/AsyncTask;
.source "EntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/EntryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckPreconditionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/EntryActivity;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/EntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/EntryActivity;Lcom/htc/store/activity/EntryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;-><init>(Lcom/htc/store/activity/EntryActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 15
    .parameter "params"

    .prologue
    .line 257
    invoke-static {}, Lcom/htc/store/activity/EntryActivity;->access$200()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "doInBackground: CheckPreconditionTask"

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    #calls: Lcom/htc/store/activity/EntryActivity;->sendBroadcastToCheckAppUpdate()V
    invoke-static {v11}, Lcom/htc/store/activity/EntryActivity;->access$300(Lcom/htc/store/activity/EntryActivity;)V

    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, action:I
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v11}, Lcom/htc/store/activity/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "relaunch"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v11, v11, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v11}, Lcom/htc/store/module/PreferenceManager;->getRelaunchNextTime()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 266
    :cond_0
    invoke-static {}, Lcom/htc/store/activity/EntryActivity;->access$200()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "Relaunch HTC Store and recall setup call"

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v11, v11, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/store/module/PreferenceManager;->setRelaunchNextTime(Z)V

    .line 268
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    const/4 v12, 0x1

    #calls: Lcom/htc/store/activity/EntryActivity;->clearAllItems(Z)V
    invoke-static {v11, v12}, Lcom/htc/store/activity/EntryActivity;->access$400(Lcom/htc/store/activity/EntryActivity;Z)V

    .line 269
    const/4 v1, 0x1

    .line 272
    :cond_1
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v11, v11, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v11}, Lcom/htc/store/module/PreferenceManager;->getAccountId()Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, originalAccountId:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v11}, Lcom/htc/store/activity/EntryActivity;->getContext()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, NewAccountId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 275
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 276
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    const/4 v12, 0x0

    #calls: Lcom/htc/store/activity/EntryActivity;->doAccountChange(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/htc/store/activity/EntryActivity;->access$500(Lcom/htc/store/activity/EntryActivity;Ljava/lang/String;)V

    .line 277
    const/4 v1, 0x1

    .line 287
    :cond_2
    :goto_0
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v11, v11, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v11}, Lcom/htc/store/module/PreferenceManager;->getOperator()Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, originalOperator:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v11}, Lcom/htc/store/activity/EntryActivity;->getContext()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/cslib/util/CSEngineUtil;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, newOperator:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 290
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 291
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    const/4 v12, 0x0

    #calls: Lcom/htc/store/activity/EntryActivity;->doOperatorChange(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/htc/store/activity/EntryActivity;->access$600(Lcom/htc/store/activity/EntryActivity;Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x1

    .line 302
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v11}, Lcom/htc/store/activity/EntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v2, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 303
    .local v2, locale:Ljava/util/Locale;
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v11, v11, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v11}, Lcom/htc/store/module/PreferenceManager;->getLocale()Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, originalLocale:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, newLocale:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 306
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 307
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    #calls: Lcom/htc/store/activity/EntryActivity;->doLocaleChange(Ljava/lang/String;)V
    invoke-static {v11, v3}, Lcom/htc/store/activity/EntryActivity;->access$700(Lcom/htc/store/activity/EntryActivity;Ljava/lang/String;)V

    .line 308
    const/4 v1, 0x1

    .line 314
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v11, v11, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v11}, Lcom/htc/store/module/PreferenceManager;->isFirstLaunch()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 315
    const/4 v1, 0x1

    .line 324
    :cond_5
    :goto_3
    const/4 v11, 0x1

    if-eq v1, v11, :cond_6

    .line 325
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v11, v11, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v11}, Lcom/htc/store/module/PreferenceManager;->isTabResourceDownloaded()Z

    move-result v8

    .line 326
    .local v8, tabResourceDownloaded:Z
    if-eqz v8, :cond_d

    .line 327
    const/4 v1, 0x3

    .line 332
    .end local v8           #tabResourceDownloaded:Z
    :cond_6
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    return-object v11

    .line 280
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #newLocale:Ljava/lang/String;
    .end local v4           #newOperator:Ljava/lang/String;
    .end local v6           #originalLocale:Ljava/lang/String;
    .end local v7           #originalOperator:Ljava/lang/String;
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 282
    :cond_8
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    #calls: Lcom/htc/store/activity/EntryActivity;->doAccountChange(Ljava/lang/String;)V
    invoke-static {v11, v0}, Lcom/htc/store/activity/EntryActivity;->access$500(Lcom/htc/store/activity/EntryActivity;Ljava/lang/String;)V

    .line 283
    const/4 v1, 0x1

    goto :goto_0

    .line 295
    .restart local v4       #newOperator:Ljava/lang/String;
    .restart local v7       #originalOperator:Ljava/lang/String;
    :cond_9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 297
    :cond_a
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    #calls: Lcom/htc/store/activity/EntryActivity;->doOperatorChange(Ljava/lang/String;)V
    invoke-static {v11, v4}, Lcom/htc/store/activity/EntryActivity;->access$600(Lcom/htc/store/activity/EntryActivity;Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x1

    goto :goto_1

    .line 311
    .restart local v2       #locale:Ljava/util/Locale;
    .restart local v3       #newLocale:Ljava/lang/String;
    .restart local v6       #originalLocale:Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v11, v11, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v11, v3}, Lcom/htc/store/module/PreferenceManager;->setLocale(Ljava/lang/String;)V

    goto :goto_2

    .line 318
    :cond_c
    iget-object v11, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-object v11, v11, Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v11}, Lcom/htc/store/module/PreferenceManager;->getSetupTTL()J

    move-result-wide v9

    .line 319
    .local v9, ttl:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-lez v11, :cond_5

    .line 320
    const/4 v1, 0x1

    goto :goto_3

    .line 329
    .end local v9           #ttl:J
    .restart local v8       #tabResourceDownloaded:Z
    :cond_d
    const/4 v1, 0x2

    goto :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "action"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 337
    invoke-static {}, Lcom/htc/store/activity/EntryActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "onPostExecute: CheckPreconditionTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-static {}, Lcom/htc/store/activity/EntryActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "action: "

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/EntryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mIsInternalStorageLow:Z

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/EntryActivity;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/EntryActivity;->access$800(Lcom/htc/store/activity/EntryActivity;I)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->this$0:Lcom/htc/store/activity/EntryActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/htc/store/activity/EntryActivity;->mActionOnResume:I
    invoke-static {v0, v1}, Lcom/htc/store/activity/EntryActivity;->access$902(Lcom/htc/store/activity/EntryActivity;I)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/EntryActivity$CheckPreconditionTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
