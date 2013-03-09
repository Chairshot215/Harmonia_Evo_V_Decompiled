.class Lcom/android/phone/FakePhoneActivity$ButtonListener;
.super Ljava/lang/Object;
.source "FakePhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FakePhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FakePhoneActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/FakePhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/phone/FakePhoneActivity$ButtonListener;->this$0:Lcom/android/phone/FakePhoneActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/FakePhoneActivity;Lcom/android/phone/FakePhoneActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/phone/FakePhoneActivity$ButtonListener;-><init>(Lcom/android/phone/FakePhoneActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/phone/FakePhoneActivity$ButtonListener;->this$0:Lcom/android/phone/FakePhoneActivity;

    iget-object v1, v1, Lcom/android/phone/FakePhoneActivity;->mRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-nez v1, :cond_0

    .line 67
    const-string v1, "Phone"

    const-string v2, "SimulatedRadioControl not available, abort!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/android/phone/FakePhoneActivity$ButtonListener;->this$0:Lcom/android/phone/FakePhoneActivity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/android/phone/FakePhoneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 70
    .local v0, nm:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/phone/FakePhoneActivity$ButtonListener;->this$0:Lcom/android/phone/FakePhoneActivity;

    const-string v2, "null mRadioControl!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 76
    .end local v0           #nm:Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/phone/FakePhoneActivity$ButtonListener;->this$0:Lcom/android/phone/FakePhoneActivity;

    iget-object v1, v1, Lcom/android/phone/FakePhoneActivity;->mRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    iget-object v2, p0, Lcom/android/phone/FakePhoneActivity$ButtonListener;->this$0:Lcom/android/phone/FakePhoneActivity;

    #getter for: Lcom/android/phone/FakePhoneActivity;->mPhoneNumber:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/FakePhoneActivity;->access$200(Lcom/android/phone/FakePhoneActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/test/SimulatedRadioControl;->triggerRing(Ljava/lang/String;)V

    goto :goto_0
.end method
