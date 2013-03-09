.class Lcom/futuredial/ui/DialogManager$Builder;
.super Lcom/htc/widget/HtcAlertDialog$Builder;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    return-void
.end method


# virtual methods
.method public show()Lcom/htc/widget/HtcAlertDialog;
    .locals 3

    .prologue
    .line 84
    sget-object v1, Lcom/futuredial/ui/DialogManager;->TAG:Ljava/lang/String;

    const-string v2, "show"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/futuredial/ui/DialogManager$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 86
    .local v0, d:Lcom/htc/widget/HtcAlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    const v1, 0x2080859

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setIcon(I)V

    .line 88
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 89
    invoke-static {v0}, Lcom/futuredial/ui/DialogManager;->reg_dialog(Landroid/app/Dialog;)V

    .line 90
    return-object v0
.end method
