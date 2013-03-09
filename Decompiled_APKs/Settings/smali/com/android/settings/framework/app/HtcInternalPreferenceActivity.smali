.class public Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcInternalPreferenceActivity.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

.field private mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/app/HtcActivityHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 423
    sget-object v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private final applyHtcActionBar()V
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 291
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 324
    :cond_0
    return-void
.end method

.method private dumpKeyEvent(Ljava/lang/String;ILandroid/view/KeyEvent;)V
    .locals 2
    .parameter "apiName"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->Log(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    instance-of v0, v0, Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->Log(Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->Log(Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 258
    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 271
    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 280
    return-object p0
.end method

.method public getNonUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getNonUIHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

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
    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    return-void
.end method

.method public onActivityResultInBackground(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 220
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 156
    const-string v0, "###"

    const-string v1, "onApplyThemeResource..."

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 160
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->applyHtcActionBar()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onCreate(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 183
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onDestroy()V

    .line 166
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 167
    return-void
.end method

.method public onDestroyInBackground()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onHandleNonUIMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 228
    return-void
.end method

.method public onHandleUIMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 224
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x1

    .line 376
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPause()V

    .line 136
    return-void
.end method

.method public onPauseInBackground()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPostCreate(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onPostCreateInBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 187
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPostResume()V

    .line 123
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onPostResume()V

    .line 124
    return-void
.end method

.method public onPostResumeInBackground()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onRestart()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onRestart()V

    .line 112
    return-void
.end method

.method public onRestartInBackground()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onResume()V

    .line 118
    return-void
.end method

.method public onResumeInBackground()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStart()V

    .line 106
    return-void
.end method

.method public onStartInBackground()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->onStop()V

    .line 141
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 142
    return-void
.end method

.method public onStopInBackground()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onWindowFocusChanged(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->onWindowFocusChanged(Z)V

    .line 130
    return-void
.end method

.method public requestHandlers()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->requestHandlers()V

    .line 233
    return-void
.end method

.method public resetFragmentKeyListener()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    .line 364
    return-void
.end method

.method public runInNonUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInNonUIThread(Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method

.method public runInUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->runInUIThread(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method

.method public setFragmentKeyListener(Landroid/view/KeyEvent$Callback;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->mFragmentKeyListener:Landroid/view/KeyEvent$Callback;

    .line 354
    :cond_0
    return-void
.end method
