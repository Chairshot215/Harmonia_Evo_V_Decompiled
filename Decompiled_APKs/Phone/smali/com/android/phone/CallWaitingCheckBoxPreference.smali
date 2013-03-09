.class public Lcom/android/phone/CallWaitingCheckBoxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallWaitingCheckBoxPreference$1;,
        Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallWaitingCheckBoxPreference"


# instance fields
.field private final DBG:Z

.field private final mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

.field phone:Lcom/android/internal/telephony/Phone;

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->DBG:Z

    .line 27
    new-instance v0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingCheckBoxPreference;Lcom/android/phone/CallWaitingCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    .line 34
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 35
    return-void
.end method


# virtual methods
.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    const/4 v2, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 47
    if-nez p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 50
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Lcom/htc/preference/HtcPreference;Z)V

    .line 54
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 62
    .local v0, checked:Z
    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setChecked(Z)V

    .line 64
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v4, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 67
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Lcom/htc/preference/HtcPreference;Z)V

    .line 70
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 62
    goto :goto_0
.end method
