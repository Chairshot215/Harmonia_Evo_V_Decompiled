.class public Lcom/htc/android/htcime/tutorial/RegionalCorrection;
.super Lcom/htc/android/htcime/util/IMEBaseActivity;
.source "RegionalCorrection.java"

# interfaces
.implements Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;


# static fields
.field public static final defaultIME:Ljava/lang/String; = "com.htc.android.htcime/.HTCIMEService"

.field public static previousIME:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private iime:Lcom/htc/android/htcime/util/InvokeIME;

.field private mHWKeyboardHidden:I

.field protected mRCText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "com.htc.android.htcime/.HTCIMEService"

    sput-object v0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->previousIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;-><init>()V

    .line 50
    const-string v0, "Tutorial_RC"

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->DEBUG:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mRCText:Landroid/widget/EditText;

    return-void
.end method

.method private checkFirstTimeTutorSuggest()V
    .locals 4

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "TutorialPlayed"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    return-void
.end method


# virtual methods
.method protected doButtonFunction()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method protected keyboardTypeLayoutCheck()V
    .locals 11

    .prologue
    const v10, 0x7f090041

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 107
    const v4, 0x7f03005f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->setContentView(I)V

    .line 110
    const v4, 0x7f0e006f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 111
    .local v3, textview:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, text:Ljava/lang/String;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 115
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
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

    .line 117
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

    .line 120
    :cond_0
    const v4, 0x7f0e006d

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mRCText:Landroid/widget/EditText;

    .line 121
    iget-object v4, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mRCText:Landroid/widget/EditText;

    const/16 v5, 0x931

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 122
    iget-object v4, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 123
    iget-object v4, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mRCText:Landroid/widget/EditText;

    new-instance v5, Lcom/htc/android/htcime/tutorial/RegionalCorrection$1;

    invoke-direct {v5, p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection$1;-><init>(Lcom/htc/android/htcime/tutorial/RegionalCorrection;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->setHeaderText(I)V

    .line 132
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->setRequestedOrientation(I)V

    .line 134
    iget-object v4, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 137
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->setActionBar(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    iget-object v4, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, root:Landroid/view/View;
    const v4, -0x333334

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 143
    .end local v1           #root:Landroid/view/View;
    :cond_1
    iput-boolean v8, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mbNeedAddRightBtn:Z

    .line 144
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    const/4 v0, 0x2

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v1, :cond_0

    .line 202
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mHWKeyboardHidden:I

    if-eq v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 204
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->finish()V

    .line 207
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->checkFirstTimeTutorSuggest()V

    .line 66
    new-instance v0, Lcom/htc/android/htcime/util/InvokeIME;

    invoke-direct {v0}, Lcom/htc/android/htcime/util/InvokeIME;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    .line 67
    return-void
.end method

.method public onKeyButtonDown(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 221
    return-void
.end method

.method public onKeyButtonUp(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 228
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 151
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 153
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->finish()V

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    const/16 v1, 0x42

    if-ne p1, v1, :cond_3

    .line 157
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 168
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 159
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 160
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 161
    const/4 v0, 0x0

    goto :goto_0

    .line 163
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
    .line 214
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 176
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->finish()V

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 182
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :cond_2
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 190
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 87
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 88
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mRCText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 92
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->getBaseContext()Landroid/content/Context;

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
    .locals 6

    .prologue
    .line 71
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->keyboardTypeLayoutCheck()V

    .line 76
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, content:Landroid/content/ContentResolver;
    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->previousIME:Ljava/lang/String;

    .line 79
    const-string v1, "default_input_method"

    const-string v2, "com.htc.android.htcime/.HTCIMEService"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mRCText:Landroid/widget/EditText;

    const/16 v4, 0x1f4

    const/16 v5, 0x64

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/htcime/util/InvokeIME;->launchIME(Landroid/content/Context;Landroid/view/View;II)V

    .line 82
    invoke-virtual {p0}, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->mHWKeyboardHidden:I

    .line 83
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection;->iime:Lcom/htc/android/htcime/util/InvokeIME;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/InvokeIME;->stopLaunchIME()V

    .line 99
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onStop()V

    .line 100
    return-void
.end method
