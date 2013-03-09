.class Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;
.super Ljava/lang/Object;
.source "ShowContactInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->showContactDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 347
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a03d4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 349
    const v1, 0x7f0a03d5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 350
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 351
    const v1, 0x7f0a0160

    new-instance v2, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$1;-><init>(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 360
    const v1, 0x7f0a0161

    new-instance v2, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$2;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$2;-><init>(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 367
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 368
    return-void
.end method
