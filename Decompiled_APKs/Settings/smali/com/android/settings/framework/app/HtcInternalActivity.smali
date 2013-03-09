.class public Lcom/android/settings/framework/app/HtcInternalActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcInternalActivity.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;


# instance fields
.field private mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcActivityHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 177
    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 188
    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 195
    return-object p0
.end method

.method public getNonUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getNonUIHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public onActivityResultInBackground(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onDestroy()V

    .line 85
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 86
    return-void
.end method

.method public onDestroyInBackground()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onHandleNonUIMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 147
    return-void
.end method

.method public onHandleUIMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 143
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPause()V

    .line 74
    return-void
.end method

.method public onPauseInBackground()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPostCreate(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public onPostCreateInBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 106
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPostResume()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPostResume()V

    .line 68
    return-void
.end method

.method public onPostResumeInBackground()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onRestart()V

    .line 55
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onRestart()V

    .line 56
    return-void
.end method

.method public onRestartInBackground()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onResume()V

    .line 62
    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 49
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStart()V

    .line 50
    return-void
.end method

.method public onStartInBackground()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStop()V

    .line 79
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 80
    return-void
.end method

.method public onStopInBackground()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public requestHandlers()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers()V

    .line 152
    return-void
.end method

.method public runInNonUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInNonUIThread(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInUIThread(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method
