.class public Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "ContactListSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactListSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LaunchIMEReceiver"
.end annotation


# instance fields
.field private mURLEditRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private retryCount:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 1
    .parameter "editor"

    .prologue
    .line 3350
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 3351
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;->mURLEditRef:Ljava/lang/ref/WeakReference;

    .line 3352
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;->retryCount:I

    .line 3353
    return-void
.end method

.method private relaunchIME()V
    .locals 0

    .prologue
    .line 3356
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 3384
    packed-switch p1, :pswitch_data_0

    .line 3399
    :cond_0
    :goto_0
    return-void

    .line 3387
    :pswitch_0
    iget v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;->retryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 3388
    const-string v0, "JuLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch IME failed, retryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    invoke-direct {p0}, Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;->relaunchIME()V

    goto :goto_0

    .line 3395
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;->retryCount:I

    goto :goto_0

    .line 3384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
