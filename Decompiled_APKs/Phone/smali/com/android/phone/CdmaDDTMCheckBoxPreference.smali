.class public Lcom/android/phone/CdmaDDTMCheckBoxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "CdmaDDTMCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaDDTMCheckBoxPreference$1;,
        Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CdmaDDTMCheckBoxPreference"


# instance fields
.field private final DBG:Z

.field private final DDTM_OFF:I

.field private final DDTM_ON:I

.field private mHandler:Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaDDTMCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CdmaDDTMCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-boolean v2, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->DBG:Z

    .line 26
    new-instance v0, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CdmaDDTMCheckBoxPreference;Lcom/android/phone/CdmaDDTMCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->mHandler:Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;

    .line 43
    iput v2, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->DDTM_OFF:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->DDTM_ON:I

    .line 31
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 32
    iget-object v0, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->mHandler:Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->requestHtcGetDDTMMode(Landroid/os/Message;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 4

    .prologue
    .line 47
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, setValue:I
    invoke-virtual {p0}, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaDDTMCheckBoxPreference;->mHandler:Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaDDTMCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->requestHtcSetDDTMMode(ILandroid/os/Message;)V

    .line 56
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
