.class Lcom/android/internal/policy/impl/DeviceUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "DeviceUnlockScreen.java"

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
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/internal/policy/impl/DeviceUnlockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/DeviceUnlockScreen$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iput-object p3, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x2090099

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPinEnable()Z

    move-result v3

    const v4, 0x202015b

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v4, 0x2020158

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v5, 0x20c00ce

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x202015c

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v4, 0x202015d

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOk:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/internal/policy/impl/DeviceUnlockScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.htc.android.omadm.pin.fail"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1, v9, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v4, "DeviceUnlockScreen"

    const-string v5, "Can\'t find HTC resource"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v5, 0x20c00d9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->handlePinCheckFail()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/DeviceUnlockScreen;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkPassword()V
    .locals 3

    iget-object v2, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.android.omadm.pin.check"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "dm.lawmo.pin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private handlePinCheckFail()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mInstructions:Landroid/widget/TextView;

    const v1, 0x20c00d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public cleanUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->checkPassword()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/DeviceUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x3a98

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    return-void
.end method
