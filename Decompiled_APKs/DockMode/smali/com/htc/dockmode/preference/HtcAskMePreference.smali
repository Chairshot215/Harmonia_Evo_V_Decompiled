.class public final Lcom/htc/dockmode/preference/HtcAskMePreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAskMePreference.java"


# static fields
.field private static final DEFAULT_VALUE:I = 0x1

.field private static final DESKDOCK_ASK_ME:Ljava/lang/String; = "deskdock_ask_me"

.field public static final KEY:Ljava/lang/String; = "ASK_ME"


# instance fields
.field private final INTENT_ASK_ME_CHANGE_NOTIFY_FROM_DOCK:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private dontAsk:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDockMode:I

.field private mDontAsk:Ljava/lang/String;

.field private mSettingFrom:Ljava/lang/String;

.field private prefName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "HtcAskMePreference"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->TAG:Ljava/lang/String;

    .line 19
    const-string v0, "ask_me_change_notify_from_dock"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->INTENT_ASK_ME_CHANGE_NOTIFY_FROM_DOCK:Ljava/lang/String;

    .line 20
    const-string v0, "SettingFrom"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mSettingFrom:Ljava/lang/String;

    .line 21
    const-string v0, "DontAsk"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mDontAsk:Ljava/lang/String;

    .line 22
    const-string v0, "dont_ask"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->dontAsk:Ljava/lang/String;

    .line 23
    const-string v0, "pimSyncPref"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->prefName:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mDockMode:I

    .line 33
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcAskMePreference;->initialize(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const-string v0, "HtcAskMePreference"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->TAG:Ljava/lang/String;

    .line 19
    const-string v0, "ask_me_change_notify_from_dock"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->INTENT_ASK_ME_CHANGE_NOTIFY_FROM_DOCK:Ljava/lang/String;

    .line 20
    const-string v0, "SettingFrom"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mSettingFrom:Ljava/lang/String;

    .line 21
    const-string v0, "DontAsk"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mDontAsk:Ljava/lang/String;

    .line 22
    const-string v0, "dont_ask"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->dontAsk:Ljava/lang/String;

    .line 23
    const-string v0, "pimSyncPref"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->prefName:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mDockMode:I

    .line 42
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcAskMePreference;->initialize(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const-string v0, "HtcAskMePreference"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->TAG:Ljava/lang/String;

    .line 19
    const-string v0, "ask_me_change_notify_from_dock"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->INTENT_ASK_ME_CHANGE_NOTIFY_FROM_DOCK:Ljava/lang/String;

    .line 20
    const-string v0, "SettingFrom"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mSettingFrom:Ljava/lang/String;

    .line 21
    const-string v0, "DontAsk"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mDontAsk:Ljava/lang/String;

    .line 22
    const-string v0, "dont_ask"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->dontAsk:Ljava/lang/String;

    .line 23
    const-string v0, "pimSyncPref"

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->prefName:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mDockMode:I

    .line 51
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcAskMePreference;->initialize(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAskMePreference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 59
    const-string v3, "ASK_ME"

    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcAskMePreference;->setKey(Ljava/lang/String;)V

    .line 61
    :cond_0
    const v3, 0x7f080044

    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcAskMePreference;->setTitle(I)V

    .line 62
    const v3, 0x7f080045

    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcAskMePreference;->setSummary(I)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcAskMePreference;->setPersistent(Z)V

    .line 67
    iput-object p1, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mContext:Landroid/content/Context;

    .line 68
    iget-object v3, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "deskdock_ask_me"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    .local v0, checked:Z
    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/dockmode/preference/HtcAskMePreference;->setChecked(Z)V

    .line 70
    return-void

    :cond_1
    move v1, v2

    .line 69
    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 75
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAskMePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAskMePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_ask_me"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcAskMePreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "ask_me_change_notify_from_dock"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAskMePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_ask_me"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public setAskMe(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/htc/dockmode/preference/HtcAskMePreference;->setChecked(Z)V

    .line 85
    return-void
.end method
