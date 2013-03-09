.class public Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "CdmaVoicePrivacyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$1;,
        Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CdmaVoicePrivacyCheckBoxPreference"


# instance fields
.field private CdmaVPA:Lcom/android/phone/CdmaVoicePrivacyAsyn;

.field private final DBG:Z

.field private mHandler:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

.field phone:Lcom/android/internal/telephony/Phone;

.field private triggerOnClicking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput-boolean v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->DBG:Z

    .line 19
    new-instance v0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->mHandler:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    .line 36
    new-instance v0, Lcom/android/phone/CdmaVoicePrivacyAsyn;

    invoke-virtual {p0}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/CdmaVoicePrivacyAsyn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->CdmaVPA:Lcom/android/phone/CdmaVoicePrivacyAsyn;

    .line 37
    iput-boolean v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->triggerOnClicking:Z

    .line 24
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 25
    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->mHandler:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 26
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)Lcom/android/phone/CdmaVoicePrivacyAsyn;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->CdmaVPA:Lcom/android/phone/CdmaVoicePrivacyAsyn;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->triggerOnClicking:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->triggerOnClicking:Z

    return p1
.end method


# virtual methods
.method protected onClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 40
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 45
    iput-boolean v3, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->triggerOnClicking:Z

    .line 46
    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->CdmaVPA:Lcom/android/phone/CdmaVoicePrivacyAsyn;

    invoke-virtual {p0}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->isUserEnableVoicePrivacy:Z

    .line 48
    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->mHandler:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 50
    return-void
.end method
