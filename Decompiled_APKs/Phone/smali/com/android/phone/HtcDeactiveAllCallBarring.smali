.class Lcom/android/phone/HtcDeactiveAllCallBarring;
.super Lcom/android/phone/HtcCallBarringEditPreference;
.source "HtcCallBarringEditPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Lcom/android/phone/HtcCallBarringEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 364
    return-void
.end method


# virtual methods
.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 0
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 376
    return-void
.end method

.method queryCB(Z)V
    .locals 0
    .parameter "isReading"

    .prologue
    .line 368
    return-void
.end method

.method protected updateCB(ZLjava/lang/String;)V
    .locals 1
    .parameter "lockState"
    .parameter "password"

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Lcom/android/phone/HtcCallBarringEditPreference;->updateCB(ZLjava/lang/String;)V

    .line 372
    return-void
.end method
