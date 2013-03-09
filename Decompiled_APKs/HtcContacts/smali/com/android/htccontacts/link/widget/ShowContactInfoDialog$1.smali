.class Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$1;
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
    .line 335
    iput-object p1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$1;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$1;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->setResult(I)V

    .line 340
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$1;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    #calls: Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->finishSelf()V
    invoke-static {v0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->access$200(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;)V

    .line 341
    return-void
.end method
