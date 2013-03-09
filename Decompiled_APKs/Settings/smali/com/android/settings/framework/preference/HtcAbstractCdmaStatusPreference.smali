.class public abstract Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcAbstractCdmaStatusPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    .line 133
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;-><init>(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    .line 133
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;-><init>(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    .line 133
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;-><init>(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    return-object p1
.end method

.method private final getPhoneServiceAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getPhoneServiceAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private requestSummary()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/app/HtcPhoneService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getPhoneServiceAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    sget-object v1, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getPhoneTask()Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mRegistered:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getPhoneTask()Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
.end method

.method protected final onGetSummary()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->onGetSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onHandleNonUIMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->requestSummary()V

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->unregisterReceiver()V

    .line 102
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->isConstantSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->registerReceiver()V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->updateSummary()V

    .line 110
    :cond_1
    return-void
.end method

.method protected final onSetSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method
