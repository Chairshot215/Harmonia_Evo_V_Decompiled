.class public Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;
.super Lcom/htc/android/htcime/util/IMEBaseActivity;
.source "MoreRegionalCorrection.java"

# interfaces
.implements Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private iime:Lcom/htc/android/htcime/util/InvokeIME;

.field private mHWKeyboardHidden:I

.field private mHomePressedFilter:Landroid/content/IntentFilter;

.field private mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mRCText:Landroid/widget/EditText;

.field protected mRCTextNote:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;-><init>()V

    .line 51
    const-string v0, "Tutorial_MRC"

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->DEBUG:Z

    .line 54
    iput-object v1, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCText:Landroid/widget/EditText;

    .line 55
    iput-object v1, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCTextNote:Landroid/widget/TextView;

    return-void
.end method

.method private receiverRegister()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mHomePressedFilter:Landroid/content/IntentFilter;

    .line 213
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mHomePressedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mHomePressedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mHomePressedFilter:Landroid/content/IntentFilter;

    const-string v1, "tutorChangeInput"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection$2;-><init>(Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;)V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mHomePressedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private receiverUnRegister()V
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    return-void
.end method


# virtual methods
.method protected doButtonFunction()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method protected keyboardTypeLayoutCheck()V
    .locals 11

    .prologue
    const v10, 0x7f090051

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 114
    const v4, 0x7f03005e

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->setContentView(I)V

    .line 117
    const v4, 0x7f0e006f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 118
    .local v3, textview:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, text:Ljava/lang/String;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 122
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 123
    const/high16 v4, 0x4000

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v6, 0x4170

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, v8}, Landroid/widget/TextView;->measure(II)V

    .line 124
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    const v4, 0x7f0e0070

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCTextNote:Landroid/widget/TextView;

    .line 128
    iget-object v4, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCTextNote:Landroid/widget/TextView;

    sget-object v5, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v4, 0x7f0e006d

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCText:Landroid/widget/EditText;

    .line 131
    iget-object v4, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCText:Landroid/widget/EditText;

    const/16 v5, 0x971

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 132
    iget-object v4, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 133
    iget-object v4, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCText:Landroid/widget/EditText;

    new-instance v5, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection$1;

    invoke-direct {v5, p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection$1;-><init>(Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->setHeaderText(I)V

    .line 142
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->setRequestedOrientation(I)V

    .line 144
    iget-object v4, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 148
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->setActionBar(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    iget-object v4, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, root:Landroid/view/View;
    const v4, -0x333334

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 154
    .end local v1           #root:Landroid/view/View;
    :cond_1
    iput-boolean v8, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mbNeedAddRightBtn:Z

    .line 155
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    const/4 v0, 0x2

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v1, :cond_0

    .line 249
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mHWKeyboardHidden:I

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 251
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->finish()V

    .line 254
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->receiverRegister()V

    .line 68
    new-instance v0, Lcom/htc/android/htcime/util/InvokeIME;

    invoke-direct {v0}, Lcom/htc/android/htcime/util/InvokeIME;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->receiverUnRegister()V

    .line 106
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onDestroy()V

    .line 107
    return-void
.end method

.method public onKeyButtonDown(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 268
    return-void
.end method

.method public onKeyButtonUp(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 275
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 162
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 164
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->finish()V

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    const/16 v1, 0x42

    if-ne p1, v1, :cond_3

    .line 168
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 179
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 170
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 171
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 172
    const/4 v0, 0x0

    goto :goto_0

    .line 174
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
    .line 261
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 187
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->finish()V

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 193
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_2
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 201
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 87
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 88
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 92
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    sget-object v3, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->previousIME:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onPause()V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 74
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->keyboardTypeLayoutCheck()V

    .line 79
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    const-string v2, "com.htc.android.htcime/.HTCIMEService"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mRCText:Landroid/widget/EditText;

    const/16 v3, 0x1f4

    const/16 v4, 0x64

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/htcime/util/InvokeIME;->launchIME(Landroid/content/Context;Landroid/view/View;II)V

    .line 82
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->mHWKeyboardHidden:I

    .line 83
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/MoreRegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 99
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onStop()V

    .line 100
    return-void
.end method
