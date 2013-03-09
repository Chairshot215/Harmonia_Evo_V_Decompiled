.class public Lcom/htc/android/htcime/tutorial/LongPress;
.super Lcom/htc/android/htcime/util/IMEBaseActivity;
.source "LongPress.java"

# interfaces
.implements Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private iime:Lcom/htc/android/htcime/util/InvokeIME;

.field private mHWKeyboardHidden:I

.field protected mRCText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;-><init>()V

    .line 43
    const-string v0, "Tutorial_LP"

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/LongPress;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/tutorial/LongPress;->DEBUG:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mRCText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method protected doButtonFunction()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method protected keyboardTypeLayoutCheck()V
    .locals 5

    .prologue
    const v4, 0x7f090044

    const/4 v3, 0x1

    .line 93
    const v1, 0x7f03005d

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/tutorial/LongPress;->setContentView(I)V

    .line 94
    const v1, 0x7f0e006d

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/tutorial/LongPress;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mRCText:Landroid/widget/EditText;

    .line 95
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mRCText:Landroid/widget/EditText;

    const/16 v2, 0x951

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 96
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 97
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mRCText:Landroid/widget/EditText;

    new-instance v2, Lcom/htc/android/htcime/tutorial/LongPress$1;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tutorial/LongPress$1;-><init>(Lcom/htc/android/htcime/tutorial/LongPress;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tutorial/LongPress;->setHeaderText(I)V

    .line 105
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/tutorial/LongPress;->setRequestedOrientation(I)V

    .line 107
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 110
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tutorial/LongPress;->setActionBar(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, root:Landroid/view/View;
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    .end local v0           #root:Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mbNeedAddRightBtn:Z

    .line 117
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    const/4 v0, 0x2

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v1, :cond_0

    .line 170
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mHWKeyboardHidden:I

    if-eq v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/LongPress;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 172
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/LongPress;->finish()V

    .line 175
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Lcom/htc/android/htcime/util/InvokeIME;

    invoke-direct {v0}, Lcom/htc/android/htcime/util/InvokeIME;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/LongPress;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    .line 56
    return-void
.end method

.method public onKeyButtonDown(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 189
    return-void
.end method

.method public onKeyButtonUp(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 196
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 124
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/LongPress;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 126
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/LongPress;->finish()V

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    const/16 v1, 0x42

    if-ne p1, v1, :cond_3

    .line 130
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/LongPress;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 141
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 132
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 133
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/LongPress;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 134
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_4
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-ne p1, v1, :cond_2

    goto :goto_0
.end method

.method public onKeyPress(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 182
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 149
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/LongPress;->finish()V

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 155
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_2
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 163
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 73
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/tutorial/LongPress;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 74
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 78
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/LongPress;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    sget-object v3, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->previousIME:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onPause()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 60
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onResume()V

    .line 61
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/LongPress;->keyboardTypeLayoutCheck()V

    .line 65
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/LongPress;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    const-string v2, "com.htc.android.htcime/.HTCIMEService"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/LongPress;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/LongPress;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mRCText:Landroid/widget/EditText;

    const/16 v3, 0x1f4

    const/16 v4, 0x64

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/util/InvokeIME;->launchIME(Landroid/content/Context;Landroid/view/View;II)V

    .line 68
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/LongPress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/htc/android/htcime/tutorial/LongPress;->mHWKeyboardHidden:I

    .line 69
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/LongPress;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 85
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onStop()V

    .line 86
    return-void
.end method
