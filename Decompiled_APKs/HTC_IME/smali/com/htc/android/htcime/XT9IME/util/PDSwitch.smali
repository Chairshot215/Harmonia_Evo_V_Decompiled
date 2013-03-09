.class public Lcom/htc/android/htcime/XT9IME/util/PDSwitch;
.super Ljava/lang/Object;
.source "PDSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;
    }
.end annotation


# instance fields
.field protected final CLASS_NAME:Ljava/lang/String;

.field final DEBUG:Z

.field private mEnabled:Z

.field private mMaxDiagDataSize:I

.field mOnDiagnoseListener:Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "PDSwitch"

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->CLASS_NAME:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->DEBUG:Z

    .line 14
    const/16 v0, 0x80

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mMaxDiagDataSize:I

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mEnabled:Z

    .line 25
    return-void
.end method


# virtual methods
.method public diagnose(Lcom/htc/android/htcime/HTCIMEService;I)Z
    .locals 6
    .parameter "imm"
    .parameter "keyType"

    .prologue
    const/4 v5, 0x0

    .line 45
    iget v2, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mMaxDiagDataSize:I

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->getTextBeforeCursor(III)Ljava/lang/CharSequence;

    move-result-object v0

    .line 46
    .local v0, cs:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 47
    const-string v2, "PDSwitch"

    const-string v3, "[diagnose] getTextBeforeCursor() return null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mEnabled:Z

    .line 49
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mEnabled:Z

    .line 63
    :goto_0
    return v2

    .line 51
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    .local v1, spsb:Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mOnDiagnoseListener:Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mOnDiagnoseListener:Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;

    invoke-interface {v2, v1}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;->noiseFilter(Landroid/text/SpannableStringBuilder;)V

    .line 56
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mOnDiagnoseListener:Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;

    invoke-interface {v2, v1, p2}, Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;->judge(Landroid/text/SpannableStringBuilder;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mEnabled:Z

    .line 63
    :goto_1
    iget-boolean v2, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mEnabled:Z

    goto :goto_0

    .line 59
    :cond_1
    iput-boolean v5, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mEnabled:Z

    .line 60
    const-string v2, "PDSwitch"

    const-string v3, "mOnDiagnoseListener is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mEnabled:Z

    return v0
.end method

.method public setMaxDiagDataSize(I)V
    .locals 0
    .parameter "newSize"

    .prologue
    .line 74
    iput p1, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mMaxDiagDataSize:I

    .line 75
    return-void
.end method

.method public setOnDiagnoseListener(Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/util/PDSwitch;->mOnDiagnoseListener:Lcom/htc/android/htcime/XT9IME/util/PDSwitch$OnDiagnoseListener;

    .line 71
    return-void
.end method
