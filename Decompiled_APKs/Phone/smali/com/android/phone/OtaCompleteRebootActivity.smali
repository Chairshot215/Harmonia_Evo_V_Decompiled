.class public Lcom/android/phone/OtaCompleteRebootActivity;
.super Landroid/app/Dialog;
.source "OtaCompleteRebootActivity.java"


# static fields
.field private static final PHONE_STATE_CHANGED:I = 0x64

.field private static final TAG:Ljava/lang/String; = "OtaCompleteRebootActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mOkButton:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mUnlockListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const v0, 0x7f0d0028

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 93
    new-instance v0, Lcom/android/phone/OtaCompleteRebootActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaCompleteRebootActivity$1;-><init>(Lcom/android/phone/OtaCompleteRebootActivity;)V

    iput-object v0, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v0, Lcom/android/phone/OtaCompleteRebootActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaCompleteRebootActivity$2;-><init>(Lcom/android/phone/OtaCompleteRebootActivity;)V

    iput-object v0, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OtaCompleteRebootActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/OtaCompleteRebootActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/OtaCompleteRebootActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/OtaCompleteRebootActivity;->disableKeyguard(Z)V

    return-void
.end method

.method private disableKeyguard(Z)V
    .locals 1
    .parameter "disable"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/16 v4, 0x400

    const/4 v3, -0x1

    .line 65
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/phone/OtaCompleteRebootActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 68
    .local v1, winP:Landroid/view/Window;
    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 69
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 71
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 72
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 74
    const/high16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 77
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/OtaCompleteRebootActivity;->requestWindowFeature(I)Z

    .line 79
    const v2, 0x7f030049

    invoke-virtual {p0, v2}, Lcom/android/phone/OtaCompleteRebootActivity;->setContentView(I)V

    .line 81
    iget-object v2, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 82
    .local v0, km:Landroid/app/KeyguardManager;
    const-string v2, "OtaCompleteRebootActivity"

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 85
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/android/phone/OtaCompleteRebootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mOkButton:Landroid/widget/Button;

    .line 86
    iget-object v2, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mOkButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 89
    iget-object v2, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/OtaCompleteRebootActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 101
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/OtaCompleteRebootActivity;->disableKeyguard(Z)V

    .line 112
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/OtaCompleteRebootActivity;->disableKeyguard(Z)V

    .line 118
    return-void
.end method
