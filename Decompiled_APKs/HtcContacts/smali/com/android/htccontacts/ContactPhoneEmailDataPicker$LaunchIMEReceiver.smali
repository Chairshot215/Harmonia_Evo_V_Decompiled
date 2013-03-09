.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "ContactPhoneEmailDataPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchIMEReceiver"
.end annotation


# instance fields
.field private mURLEdit:Landroid/widget/EditText;

.field private retryCount:I

.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Landroid/widget/EditText;)V
    .locals 1
    .parameter
    .parameter "editor"

    .prologue
    .line 3181
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    .line 3182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 3183
    iput-object p2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;

    .line 3184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->retryCount:I

    .line 3185
    return-void
.end method

.method static synthetic access$4000(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3177
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->mURLEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4108(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 3177
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->retryCount:I

    return v0
.end method

.method private relaunchIME()V
    .locals 4

    .prologue
    .line 3188
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver$1;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3211
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 3214
    packed-switch p1, :pswitch_data_0

    .line 3228
    :goto_0
    return-void

    .line 3217
    :pswitch_0
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->retryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 3218
    const-string v0, "JuLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch IME failed, retryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->relaunchIME()V

    goto :goto_0

    .line 3224
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;->retryCount:I

    goto :goto_0

    .line 3214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
