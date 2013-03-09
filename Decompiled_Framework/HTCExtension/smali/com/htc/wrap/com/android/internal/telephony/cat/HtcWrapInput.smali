.class public Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;
.super Lcom/android/internal/telephony/cat/Input;
.source "HtcWrapInput.java"


# instance fields
.field private mInput:Lcom/android/internal/telephony/cat/Input;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/Input;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iput-object p1, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-void
.end method


# virtual methods
.method public getDefaultText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    return-object v0
.end method

.method public getDigitOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    return v0
.end method

.method public getEcho()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    return v0
.end method

.method public getHelpAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconSelfExplanatory()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    return v0
.end method

.method public getMaxLen()I
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iget v0, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    return v0
.end method

.method public getMinLen()I
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iget v0, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getYesNo()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    return v0
.end method

.method public setIconSelfExplanatory(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapInput;->mInput:Lcom/android/internal/telephony/cat/Input;

    iput-boolean p1, v0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    return-void
.end method
