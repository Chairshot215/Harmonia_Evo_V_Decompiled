.class public Lcom/android/phone/CdmaVoicePrivacyAsyn;
.super Ljava/lang/Object;
.source "CdmaVoicePrivacyAsyn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaVoicePrivacyAsyn$1;,
        Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CdmaVoicePrivacyAsyn"

.field public static isUserEnableVoicePrivacy:Z

.field public static recordToEnableVoicePrivacy:I


# instance fields
.field private final DBG:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;

.field phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->isUserEnableVoicePrivacy:Z

    .line 26
    sput v0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->recordToEnableVoicePrivacy:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->DBG:Z

    .line 29
    new-instance v0, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;-><init>(Lcom/android/phone/CdmaVoicePrivacyAsyn;Lcom/android/phone/CdmaVoicePrivacyAsyn$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->mHandler:Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;

    .line 43
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->phone:Lcom/android/internal/telephony/Phone;

    .line 44
    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->mHandler:Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ct"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->DBG:Z

    .line 29
    new-instance v0, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;-><init>(Lcom/android/phone/CdmaVoicePrivacyAsyn;Lcom/android/phone/CdmaVoicePrivacyAsyn$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->mHandler:Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;

    .line 33
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->phone:Lcom/android/internal/telephony/Phone;

    .line 34
    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->mHandler:Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 35
    iput-object p1, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaVoicePrivacyAsyn;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public asyncSetupVoicePrivacy()V
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/phone/CdmaVoicePrivacyAsyn;->isEnableToSetupVoicePrivacy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v0, "CdmaVoicePrivacyAsyn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO recordToEnableVoicePrivacy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/CdmaVoicePrivacyAsyn;->recordToEnableVoicePrivacy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget v0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->recordToEnableVoicePrivacy:I

    if-lez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->phone:Lcom/android/internal/telephony/Phone;

    sget-boolean v1, Lcom/android/phone/CdmaVoicePrivacyAsyn;->isUserEnableVoicePrivacy:Z

    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->mHandler:Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 87
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->recordToEnableVoicePrivacy:I

    goto :goto_0
.end method

.method public isEnableToSetupVoicePrivacy()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 52
    iget-object v4, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v4, :cond_0

    .line 54
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->phone:Lcom/android/internal/telephony/Phone;

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 58
    .local v0, hasActiveCall:Z
    :goto_0
    iget-object v4, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    .line 59
    .local v1, hasHoldingCall:Z
    :goto_1
    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_2

    .line 64
    :cond_1
    const-string v2, "CdmaVoicePrivacyAsyn"

    const-string v4, "OoO the call state is not IDLE"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 69
    :cond_2
    return v2

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_3
    move v0, v3

    .line 57
    goto :goto_0

    .restart local v0       #hasActiveCall:Z
    :cond_4
    move v1, v3

    .line 58
    goto :goto_1
.end method
