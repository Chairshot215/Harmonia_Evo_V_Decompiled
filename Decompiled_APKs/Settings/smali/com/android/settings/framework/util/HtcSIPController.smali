.class public Lcom/android/settings/framework/util/HtcSIPController;
.super Ljava/lang/Object;
.source "HtcSIPController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcSIPController$1;,
        Lcom/android/settings/framework/util/HtcSIPController$HtcSIPLauncher;,
        Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;
    }
.end annotation


# static fields
.field private static final HTC_IME_ACTION:Ljava/lang/String; = "HTC_IME_CURRENT_STATE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSIPReceiver:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;

.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/settings/framework/util/HtcSIPController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/util/HtcSIPController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-nez p1, :cond_0

    .line 83
    sget-object v1, Lcom/android/settings/framework/util/HtcSIPController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v0, "dialog must not be null"

    .line 85
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 89
    sget-object v1, Lcom/android/settings/framework/util/HtcSIPController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v1, Lcom/android/settings/framework/util/HtcSIPController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity.getBaseContext() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "Please create this class after instantiating an activity"

    .line 92
    .restart local v0       #error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v0           #error:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController;->mWindow:Landroid/view/Window;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    sget-object v1, Lcom/android/settings/framework/util/HtcSIPController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v0, "dialog must not be null"

    .line 70
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController;->mWindow:Landroid/view/Window;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/util/HtcSIPController;)Landroid/view/Window;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcSIPController;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public static showSIP(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcSIPController;->showSIP(Landroid/view/Window;)V

    .line 112
    return-void
.end method

.method public static showSIP(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcSIPController;->showSIP(Landroid/view/Window;)V

    .line 123
    return-void
.end method

.method public static showSIP(Landroid/view/Window;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 138
    sget-object v0, Lcom/android/settings/framework/util/HtcSIPController;->TAG:Ljava/lang/String;

    const-string v1, "auto launch SIP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method


# virtual methods
.method public registerSIPReceiver()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController;->mSIPReceiver:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;-><init>(Lcom/android/settings/framework/util/HtcSIPController;Lcom/android/settings/framework/util/HtcSIPController$1;)V

    iput-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController;->mSIPReceiver:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "HTC_IME_CURRENT_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/framework/util/HtcSIPController;->mSIPReceiver:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    sget-object v1, Lcom/android/settings/framework/util/HtcSIPController;->TAG:Ljava/lang/String;

    const-string v2, "register SIPReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public showSIP()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcSIPController;->mWindow:Landroid/view/Window;

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcSIPController;->showSIP(Landroid/view/Window;)V

    .line 155
    return-void
.end method

.method public unregisterSIPReceiver()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcSIPController;->mSIPReceiver:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcSIPController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcSIPController;->mSIPReceiver:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcSIPController;->mSIPReceiver:Lcom/android/settings/framework/util/HtcSIPController$HtcSIPReceiver;

    .line 189
    sget-object v0, Lcom/android/settings/framework/util/HtcSIPController;->TAG:Ljava/lang/String;

    const-string v1, "unregister SIPReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    return-void
.end method
