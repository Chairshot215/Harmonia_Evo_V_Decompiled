.class public Lcom/m0narx/tweaks/widgets/Dialogs;
.super Ljava/lang/Object;
.source "Dialogs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static restartPhone(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 14
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 15
    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 16
    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 17
    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 18
    const v1, 0x7f05007c

    .line 19
    new-instance v2, Lcom/m0narx/tweaks/widgets/Dialogs$1;

    invoke-direct {v2}, Lcom/m0narx/tweaks/widgets/Dialogs$1;-><init>()V

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 31
    const v1, 0x7f05002e

    .line 32
    new-instance v2, Lcom/m0narx/tweaks/widgets/Dialogs$2;

    invoke-direct {v2}, Lcom/m0narx/tweaks/widgets/Dialogs$2;-><init>()V

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 38
    return-void
.end method

.method public static restartSense(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 43
    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 44
    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 45
    const v1, 0x7f05007c

    .line 46
    new-instance v2, Lcom/m0narx/tweaks/widgets/Dialogs$3;

    invoke-direct {v2}, Lcom/m0narx/tweaks/widgets/Dialogs$3;-><init>()V

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 58
    const v1, 0x7f05002e

    .line 59
    new-instance v2, Lcom/m0narx/tweaks/widgets/Dialogs$4;

    invoke-direct {v2}, Lcom/m0narx/tweaks/widgets/Dialogs$4;-><init>()V

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 65
    return-void
.end method

.method public static restartSenseNSytemUI(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 95
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 97
    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 98
    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 99
    const v1, 0x7f05007c

    .line 100
    new-instance v2, Lcom/m0narx/tweaks/widgets/Dialogs$7;

    invoke-direct {v2}, Lcom/m0narx/tweaks/widgets/Dialogs$7;-><init>()V

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 113
    const v1, 0x7f05002e

    .line 114
    new-instance v2, Lcom/m0narx/tweaks/widgets/Dialogs$8;

    invoke-direct {v2}, Lcom/m0narx/tweaks/widgets/Dialogs$8;-><init>()V

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 120
    return-void
.end method

.method public static restartSystemUI(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 68
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 70
    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 71
    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 72
    const v1, 0x7f05007c

    .line 73
    new-instance v2, Lcom/m0narx/tweaks/widgets/Dialogs$5;

    invoke-direct {v2}, Lcom/m0narx/tweaks/widgets/Dialogs$5;-><init>()V

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 85
    const v1, 0x7f05002e

    .line 86
    new-instance v2, Lcom/m0narx/tweaks/widgets/Dialogs$6;

    invoke-direct {v2}, Lcom/m0narx/tweaks/widgets/Dialogs$6;-><init>()V

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 92
    return-void
.end method
