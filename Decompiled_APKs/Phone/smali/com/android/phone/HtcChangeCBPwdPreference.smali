.class public Lcom/android/phone/HtcChangeCBPwdPreference;
.super Lcom/android/phone/EditPinPreference;
.source "HtcChangeCBPwdPreference.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcChangeCBPwdPreference$1;,
        Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INDEX_CONFIRM_NEW_PWD:I = 0x2

.field private static final INDEX_NEW_PWD:I = 0x1

.field private static final INDEX_OLD_PWD:I = 0x0

.field private static final STATE_CONFIRM_NEW_PWD:I = 0x2

.field private static final STATE_NEW_PWD:I = 0x1

.field private static final STATE_OLD_PWD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcChangeCBPwdPreference"


# instance fields
.field private mConfirmNewPwdMessage:Ljava/lang/CharSequence;

.field private mHandler:Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;

.field private mInvalidPwdMessage:Ljava/lang/CharSequence;

.field private mNewPwdMessage:Ljava/lang/CharSequence;

.field private mOldPwdMessage:Ljava/lang/CharSequence;

.field private mPasswordArray:[Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mState:I

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPinPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;-><init>(Lcom/android/phone/HtcChangeCBPwdPreference;Lcom/android/phone/HtcChangeCBPwdPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mHandler:Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;

    .line 77
    const v0, 0x7f0e0020

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mOldPwdMessage:Ljava/lang/CharSequence;

    .line 78
    const v0, 0x7f0e0021

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mNewPwdMessage:Ljava/lang/CharSequence;

    .line 79
    const v0, 0x7f0e0022

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mConfirmNewPwdMessage:Ljava/lang/CharSequence;

    .line 80
    const v0, 0x7f0e0377

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mInvalidPwdMessage:Ljava/lang/CharSequence;

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPasswordArray:[Ljava/lang/String;

    .line 86
    invoke-virtual {p0, p0}, Lcom/android/phone/HtcChangeCBPwdPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/HtcChangeCBPwdPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/HtcChangeCBPwdPreference;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/phone/HtcChangeCBPwdPreference;->handleChangeCallBarringPassword(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private checkAndUpdatePwd()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPasswordArray:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPasswordArray:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/phone/HtcChangeCBPwdPreference;->processUpdatePassword()V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v1, 0x4e20

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_0
.end method

.method private getCurrentMessage(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "state"

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mOldPwdMessage:Ljava/lang/CharSequence;

    .line 190
    :goto_0
    return-object v0

    .line 184
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mNewPwdMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mConfirmNewPwdMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mOldPwdMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getInvalidPwdMessage(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/phone/HtcChangeCBPwdPreference;->getCurrentMessage(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
    .local v0, message:Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mInvalidPwdMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 176
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private goToNextState()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    iget v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mState:I

    if-nez v0, :cond_0

    .line 132
    iput v2, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mState:I

    .line 133
    iget v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mState:I

    invoke-direct {p0, v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->getCurrentMessage(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcChangeCBPwdPreference;->showDialog(Landroid/os/Bundle;)V

    .line 147
    :goto_0
    return-void

    .line 135
    :cond_0
    iget v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mState:I

    if-ne v2, v0, :cond_1

    .line 136
    iput v3, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mState:I

    .line 137
    iget v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mState:I

    invoke-direct {p0, v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->getCurrentMessage(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcChangeCBPwdPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0

    .line 139
    :cond_1
    iget v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mState:I

    if-ne v3, v0, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/android/phone/HtcChangeCBPwdPreference;->checkAndUpdatePwd()V

    .line 141
    invoke-direct {p0}, Lcom/android/phone/HtcChangeCBPwdPreference;->resetState()V

    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/HtcChangeCBPwdPreference;->resetState()V

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcChangeCBPwdPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private handlInavlidPassword(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/phone/HtcChangeCBPwdPreference;->getInvalidPwdMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->showDialog(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method private handleChangeCallBarringPassword(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 224
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 226
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 228
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v2, 0x2711

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    .line 234
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v2, 0x12c

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    .line 245
    :goto_1
    return-void

    .line 230
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PW_REGISTRATION_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v2, 0x2714

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_0

    .line 235
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 241
    iget-object v1, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v2, 0x190

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_1

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v2, 0x2712

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onSuccessed(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_1
.end method

.method private handlePassword(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "password"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 117
    if-nez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPasswordArray:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 127
    :goto_0
    return-void

    .line 119
    :cond_0
    if-ne v1, p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPasswordArray:[Ljava/lang/String;

    aput-object p2, v0, v1

    goto :goto_0

    .line 121
    :cond_1
    if-ne v2, p1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPasswordArray:[Ljava/lang/String;

    aput-object p2, v0, v2

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/HtcChangeCBPwdPreference;->resetState()V

    goto :goto_0
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 248
    const-string v0, "HtcChangeCBPwdPreference"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method private processUpdatePassword()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 159
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Lcom/htc/preference/HtcPreference;Z)V

    .line 161
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPasswordArray:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPasswordArray:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mHandler:Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;

    invoke-virtual {v4, v5}, Lcom/android/phone/HtcChangeCBPwdPreference$PwdHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 165
    return-void
.end method

.method private resetState()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 107
    iput v1, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mState:I

    .line 108
    iget v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mState:I

    invoke-direct {p0, v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->getCurrentMessage(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPasswordArray:[Ljava/lang/String;

    aput-object v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPasswordArray:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 112
    iget-object v0, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mPasswordArray:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 113
    return-void
.end method


# virtual methods
.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/phone/HtcChangeCBPwdPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, password:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcChangeCBPwdPreference;->setText(Ljava/lang/String;)V

    .line 92
    if-eqz p2, :cond_1

    .line 93
    invoke-static {v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->validatePin(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget v1, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mState:I

    invoke-direct {p0, v1}, Lcom/android/phone/HtcChangeCBPwdPreference;->handlInavlidPassword(I)V

    .line 104
    :goto_0
    return-void

    .line 97
    :cond_0
    iget v1, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mState:I

    invoke-direct {p0, v1, v0}, Lcom/android/phone/HtcChangeCBPwdPreference;->handlePassword(ILjava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/android/phone/HtcChangeCBPwdPreference;->goToNextState()V

    goto :goto_0

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/HtcChangeCBPwdPreference;->resetState()V

    goto :goto_0
.end method

.method setTcpListener(Lcom/android/phone/TimeConsumingPreferenceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/phone/HtcChangeCBPwdPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 196
    return-void
.end method
