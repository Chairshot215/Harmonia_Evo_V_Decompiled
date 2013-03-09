.class public Lcom/android/settings/framework/app/HtcInternalFragment;
.super Landroid/app/Fragment;
.source "HtcInternalFragment.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/settings/framework/app/HtcInternalFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcInternalFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 37
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcActivityHandler;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 204
    return-void
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getNonUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getNonUIHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public onActivityResultInBackground(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 166
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcActivityHandler;->attachActivityAfterActivityCreated(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onCreate(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onDestroy()V

    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 107
    return-void
.end method

.method public onDestroyInBackground()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onHandleNonUIMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 174
    return-void
.end method

.method public onHandleUIMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 170
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPause()V

    .line 95
    return-void
.end method

.method public onPauseInBackground()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onPostCreateInBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 127
    const-string v0, "unsupport the onPostCreateInBackground(...)"

    .line 128
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "unsupport the onPostCreateInBackground(...)"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onPostResumeInBackground()V
    .locals 3

    .prologue
    .line 147
    const-string v0, "unsupport the onPostResumeInBackground()"

    .line 148
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "unsupport the onPostResumeInBackground()"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onRestartInBackground()V
    .locals 3

    .prologue
    .line 137
    const-string v0, "unsupport the onRestartInBackground()"

    .line 138
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "unsupport the onRestartInBackground()"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onResume()V

    .line 83
    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 70
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStart()V

    .line 71
    return-void
.end method

.method public onStartInBackground()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStop()V

    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 101
    return-void
.end method

.method public onStopInBackground()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public requestHandlers()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers()V

    .line 179
    return-void
.end method

.method public runInNonUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInNonUIThread(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalFragment;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInUIThread(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method public startFragment(Lcom/htc/preference/HtcPreference;)V
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 312
    if-nez p1, :cond_0

    .line 313
    const-string v7, "The argument preference can not be null."

    .line 314
    .local v7, error:Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    .end local v7           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 333
    :goto_0
    return-void

    .line 326
    :cond_1
    sget-object v0, Lcom/android/settings/framework/app/HtcInternalFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.mActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not instanceof HtcPreferenceActivity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_2
    sget-object v0, Lcom/android/settings/framework/app/HtcInternalFragment;->TAG:Ljava/lang/String;

    const-string v1, "The fragment can not be null when action type was set to START_FRAGMENT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startFragment(Lcom/htc/preference/HtcPreference;Landroid/content/Intent;)V
    .locals 2
    .parameter "preference"
    .parameter "intent"

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    const-string v0, "The argument preference can not be null."

    .line 296
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setFragment(Ljava/lang/String;)V

    .line 303
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->startFragment(Lcom/htc/preference/HtcPreference;)V

    .line 304
    return-void
.end method

.method public startService(Landroid/content/Intent;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 280
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    return-void
.end method
