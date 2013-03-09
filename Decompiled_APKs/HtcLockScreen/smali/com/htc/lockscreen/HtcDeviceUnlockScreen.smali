.class public Lcom/htc/lockscreen/HtcDeviceUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "HtcDeviceUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final ACTION_OMADM_PIN_CHECK:Ljava/lang/String; = "com.htc.android.omadm.pin.check"

.field private static final ACTION_OMADM_PIN_FAIL:Ljava/lang/String; = "com.htc.android.omadm.pin.fail"

.field private static final AWAKE_POKE_MILLIS:I = 0x3a98

.field private static final EXTRA_VALUE_PIN:Ljava/lang/String; = "dm.lawmo.pin"

.field private static final MSG_PIN_CHECK_FAIL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceUnlockScreen"


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInstructions:Landroid/widget/TextView;

.field private mOk:Landroid/widget/Button;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPassword:Landroid/widget/EditText;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "pluginContext"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-direct {p0, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v2, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$1;

    invoke-direct {v2, p0}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$1;-><init>(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)V

    iput-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v2, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$2;

    invoke-direct {v2, p0}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$2;-><init>(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)V

    iput-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 113
    const-string v2, "DeviceUnlockScreen"

    const-string v3, "HtcDeviceUnlockScreen"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-object p3, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 115
    iput-object p4, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 117
    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    invoke-virtual {v2, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 119
    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 121
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPinEnable()Z

    move-result v1

    .line 123
    .local v1, pinEnabled:Z
    const v2, 0x7f0a001c

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f0a0019

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 126
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    :cond_0
    if-eqz v1, :cond_1

    .line 132
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v3, 0x20c00ce

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 134
    const v2, 0x7f0a001d

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 135
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 139
    const v2, 0x7f0a001e

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mOk:Landroid/widget/Button;

    .line 140
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v2, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$3;

    invoke-direct {v2, p0}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen$3;-><init>(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)V

    iput-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.android.omadm.pin.fail"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v3, 0x20c00d9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->handlePinCheckFail()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/HtcDeviceUnlockScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkPassword()V
    .locals 3

    .prologue
    .line 224
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, password:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.android.omadm.pin.check"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "dm.lawmo.pin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v2, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method private handlePinCheckFail()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v1, 0x20c00d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 232
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 234
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 165
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 168
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 214
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->checkPassword()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 221
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 183
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/lockscreen/HtcDeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x3a98

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 172
    return-void
.end method
