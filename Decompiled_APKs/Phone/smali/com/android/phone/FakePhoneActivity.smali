.class public Lcom/android/phone/FakePhoneActivity;
.super Landroid/app/Activity;
.source "FakePhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FakePhoneActivity$ButtonListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FakePhoneActivity"


# instance fields
.field private mPhoneNumber:Landroid/widget/EditText;

.field private mPlaceCall:Landroid/widget/Button;

.field mRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/FakePhoneActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/FakePhoneActivity;->mPlaceCall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/FakePhoneActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/FakePhoneActivity;->mPhoneNumber:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/android/phone/FakePhoneActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/android/phone/FakePhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/FakePhoneActivity;->mPlaceCall:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/android/phone/FakePhoneActivity;->mPlaceCall:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/FakePhoneActivity$ButtonListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/FakePhoneActivity$ButtonListener;-><init>(Lcom/android/phone/FakePhoneActivity;Lcom/android/phone/FakePhoneActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/android/phone/FakePhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/FakePhoneActivity;->mPhoneNumber:Landroid/widget/EditText;

    .line 50
    iget-object v0, p0, Lcom/android/phone/FakePhoneActivity;->mPhoneNumber:Landroid/widget/EditText;

    new-instance v1, Lcom/android/phone/FakePhoneActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/FakePhoneActivity$1;-><init>(Lcom/android/phone/FakePhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FakePhoneActivity;->mRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 59
    const-string v0, "FakePhoneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- PhoneApp.getInstance(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "FakePhoneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- PhoneApp.getInstance().phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "FakePhoneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- mRadioControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FakePhoneActivity;->mRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
