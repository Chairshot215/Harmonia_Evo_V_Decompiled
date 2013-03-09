.class public Lcom/android/phone/HtcCallBarringEditPreference;
.super Lcom/android/phone/EditPinPreference;
.source "HtcCallBarringEditPreference.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcCallBarringEditPreference$1;,
        Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;,
        Lcom/android/phone/HtcCallBarringEditPreference$Parrent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcCallBarringCheckBoxPreference"


# instance fields
.field private mDefaultMessage:Ljava/lang/CharSequence;

.field private mEnabled:Z

.field private mFacility:I

.field private mHandler:Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;

.field private mInvalidPinMessage:Ljava/lang/String;

.field private mParrent:Lcom/android/phone/HtcCallBarringEditPreference$Parrent;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private retryCount:I

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPinPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v2, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;-><init>(Lcom/android/phone/HtcCallBarringEditPreference;Lcom/android/phone/HtcCallBarringEditPreference$1;)V

    iput-object v2, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mHandler:Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;

    .line 62
    iput v4, p0, Lcom/android/phone/HtcCallBarringEditPreference;->retryCount:I

    .line 68
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 70
    sget-object v2, Lcom/android/phone/R$styleable;->HtcCallBarringEditPreference:[I

    invoke-virtual {p1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mFacility:I

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    iget-object v2, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mDialogMessage:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mDefaultMessage:Ljava/lang/CharSequence;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v1, sb:Ljava/lang/StringBuilder;
    const v2, 0x7f0e0377

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v2, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mInvalidPinMessage:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, p0}, Lcom/android/phone/HtcCallBarringEditPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/HtcCallBarringEditPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/phone/HtcCallBarringEditPreference;->retryCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/HtcCallBarringEditPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/phone/HtcCallBarringEditPreference;->retryCount:I

    return p1
.end method

.method static synthetic access$112(Lcom/android/phone/HtcCallBarringEditPreference;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/phone/HtcCallBarringEditPreference;->retryCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/phone/HtcCallBarringEditPreference;->retryCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/HtcCallBarringEditPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mFacility:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/HtcCallBarringEditPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCallBarringEditPreference;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/HtcCallBarringEditPreference;)Lcom/android/phone/HtcCallBarringEditPreference$Parrent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mParrent:Lcom/android/phone/HtcCallBarringEditPreference$Parrent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/HtcCallBarringEditPreference;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/phone/HtcCallBarringEditPreference;->setEnabled(II)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 182
    const-string v0, "HtcCallBarringCheckBoxPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method private setEnabled(II)V
    .locals 1
    .parameter "reason"
    .parameter "isEnabled"

    .prologue
    .line 168
    iget v0, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mFacility:I

    if-ne v0, p1, :cond_0

    .line 169
    if-lez p2, :cond_1

    .line 170
    const v0, 0x7f0e007f

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCallBarringEditPreference;->setSummary(I)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mEnabled:Z

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const v0, 0x7f0e007e

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcCallBarringEditPreference;->setSummary(I)V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 2
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    const/4 v1, 0x1

    .line 100
    iput-object p1, p0, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 101
    if-nez p2, :cond_0

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCallBarringEditPreference;->queryCB(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Lcom/htc/preference/HtcPreference;Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 151
    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/phone/HtcCallBarringEditPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/HtcCallBarringEditPreference;->validatePin(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCallBarringEditPreference;->setText(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mInvalidPinMessage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCallBarringEditPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCallBarringEditPreference;->showDialog(Landroid/os/Bundle;)V

    .line 164
    .end local v0           #password:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v0       #password:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCallBarringEditPreference;->setText(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mDefaultMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcCallBarringEditPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 161
    iget-boolean v1, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mEnabled:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/phone/HtcCallBarringEditPreference;->updateCB(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method queryCB(Z)V
    .locals 5
    .parameter "isReading"

    .prologue
    const/4 v2, 0x0

    .line 118
    if-eqz p1, :cond_0

    move v0, v2

    .line 121
    .local v0, arg2:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mHandler:Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;

    iget v4, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mFacility:I

    invoke-virtual {v3, v2, v4, v0}, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 125
    .local v1, completeMsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v3, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mFacility:I

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(ILandroid/os/Message;)V

    .line 126
    return-void

    .line 118
    .end local v0           #arg2:I
    .end local v1           #completeMsg:Landroid/os/Message;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setParrent(Lcom/android/phone/HtcCallBarringEditPreference$Parrent;)V
    .locals 0
    .parameter "parrent"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mParrent:Lcom/android/phone/HtcCallBarringEditPreference$Parrent;

    .line 187
    return-void
.end method

.method protected updateCB(ZLjava/lang/String;)V
    .locals 4
    .parameter "lockState"
    .parameter "password"

    .prologue
    const/4 v3, 0x1

    .line 137
    iget-object v1, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mHandler:Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;

    iget v2, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mFacility:I

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 140
    .local v0, completeMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/HtcCallBarringEditPreference;->mFacility:I

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V

    .line 145
    iget-object v1, p0, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Lcom/htc/preference/HtcPreference;Z)V

    .line 148
    :cond_0
    return-void
.end method
