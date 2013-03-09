.class public Lcom/htc/wrap/com/android/internal/telephony/gsm/HtcWrapGsmMmiCode;
.super Ljava/lang/Object;
.source "HtcWrapGsmMmiCode.java"


# instance fields
.field public mInstance:Lcom/android/internal/telephony/gsm/GsmMmiCode;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/htc/wrap/com/android/internal/telephony/gsm/HtcWrapGsmMmiCode;->mInstance:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 21
    return-void
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 1
    .parameter "dialString"
    .parameter "phone"

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isModeCLIRForLexikon()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/gsm/HtcWrapGsmMmiCode;->mInstance:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isModeCLIRForLexikon()Z

    move-result v0

    return v0
.end method

.method public isTemporaryModeCLIR()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/gsm/HtcWrapGsmMmiCode;->mInstance:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v0

    return v0
.end method

.method public isUssdCancel()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/gsm/HtcWrapGsmMmiCode;->mInstance:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdCancel()Z

    move-result v0

    return v0
.end method
