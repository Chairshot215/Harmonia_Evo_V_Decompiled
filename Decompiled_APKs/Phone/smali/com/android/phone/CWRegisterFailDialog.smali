.class public Lcom/android/phone/CWRegisterFailDialog;
.super Lcom/htc/app/HtcAlertActivity;
.source "CWRegisterFailDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CWRegisterFailDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 32
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 34
    .local v1, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->requestCW_UW_REG()V

    .line 35
    const-string v2, "CWRegisterFailDialog"

    const-string v3, "retry registration!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CWRegisterFailDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object v0, p0, Lcom/android/phone/CWRegisterFailDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 22
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x1080027

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 23
    const v1, 0x7f0e01a2

    invoke-virtual {p0, v1}, Lcom/android/phone/CWRegisterFailDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 24
    const v1, 0x7f0e01a3

    invoke-virtual {p0, v1}, Lcom/android/phone/CWRegisterFailDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 25
    const v1, 0x7f0e0250

    invoke-virtual {p0, v1}, Lcom/android/phone/CWRegisterFailDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 26
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 27
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/phone/CWRegisterFailDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {p0}, Lcom/android/phone/CWRegisterFailDialog;->setupAlert()V

    .line 29
    return-void
.end method
