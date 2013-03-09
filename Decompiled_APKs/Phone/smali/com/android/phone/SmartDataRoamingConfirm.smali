.class public Lcom/android/phone/SmartDataRoamingConfirm;
.super Landroid/app/Activity;
.source "SmartDataRoamingConfirm.java"


# static fields
.field private static DBG:Z = false

.field private static final DIALOG_SMART_DATA_ROAMING_CONFIRM:I = 0x1b5a

.field private static final TAG:Ljava/lang/String; = "SmartDataRoamingConfirm"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/SmartDataRoamingConfirm;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/phone/SmartDataRoamingConfirm;->DBG:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/SmartDataRoamingConfirm;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    const/16 v0, 0x1b5a

    invoke-virtual {p0, v0}, Lcom/android/phone/SmartDataRoamingConfirm;->showDialog(I)V

    .line 96
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 115
    const/16 v1, 0x1b5a

    if-ne p1, v1, :cond_0

    .line 117
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0090

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/SmartDataRoamingConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0140

    new-instance v3, Lcom/android/phone/SmartDataRoamingConfirm$2;

    invoke-direct {v3, p0}, Lcom/android/phone/SmartDataRoamingConfirm$2;-><init>(Lcom/android/phone/SmartDataRoamingConfirm;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e013f

    new-instance v3, Lcom/android/phone/SmartDataRoamingConfirm$1;

    invoke-direct {v3, p0}, Lcom/android/phone/SmartDataRoamingConfirm$1;-><init>(Lcom/android/phone/SmartDataRoamingConfirm;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
