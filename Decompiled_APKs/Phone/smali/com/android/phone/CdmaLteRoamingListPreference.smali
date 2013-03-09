.class public Lcom/android/phone/CdmaLteRoamingListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "CdmaLteRoamingListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaLteRoamingListPreference$1;,
        Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaLteRoamingListPreference"

.field protected static final SELECT_VALUE_NONE:I = -0x1


# instance fields
.field private mCdmaRoamingListPreference:Lcom/android/phone/CdmaRoamingListPreference;

.field protected mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field public networkType:I

.field protected request:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaLteRoamingListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaLteRoamingListPreference;Lcom/android/phone/CdmaLteRoamingListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mHandler:Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;

    .line 24
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->request:Ljava/lang/Integer;

    .line 26
    iput v2, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    .line 31
    iput-object p1, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    .line 34
    const-string v0, "CdmaLteRoamingListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PREFERRED_NETWORK_MODE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method


# virtual methods
.method protected checkingUpdate(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 186
    const/16 v0, 0x8

    :goto_0
    return v0

    .line 184
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getNetworkType()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mHandler:Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->request:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 68
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onDialogClosed(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/CdmaLteRoamingListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "CdmaLteRoamingListPreference"

    const-string v1, "getValue is null!!Please check!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaLteRoamingListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaLteRoamingListPreference;->setNetworkType(I)V

    goto :goto_0
.end method

.method public setCdmaRoamingListPreference(Lcom/android/phone/CdmaRoamingListPreference;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mCdmaRoamingListPreference:Lcom/android/phone/CdmaRoamingListPreference;

    .line 44
    iget v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaLteRoamingListPreference;->setNetworkType(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/phone/CdmaLteRoamingListPreference;->getNetworkType()V

    .line 46
    return-void
.end method

.method public setNetworkType(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/phone/CdmaLteRoamingListPreference;->checkingUpdate(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    .line 72
    const-string v0, "CdmaLteRoamingListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaLteRoamingListPreference;->updateGUI(I)V

    .line 76
    iget-object v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    iget-object v2, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mHandler:Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->request:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/CdmaLteRoamingListPreference$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 81
    iget-object v0, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    iget v2, p0, Lcom/android/phone/CdmaLteRoamingListPreference;->networkType:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method protected updateGUI(I)V
    .locals 3
    .parameter "networkType"

    .prologue
    .line 85
    const-string v0, "CdmaLteRoamingListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 91
    :cond_0
    const/4 p1, 0x4

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaLteRoamingListPreference;->setValue(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 110
    :cond_1
    const/16 p1, 0x8

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaLteRoamingListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
