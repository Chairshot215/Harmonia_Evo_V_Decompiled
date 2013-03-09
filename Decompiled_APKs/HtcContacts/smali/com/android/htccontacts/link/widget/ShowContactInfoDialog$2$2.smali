.class Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$2;
.super Ljava/lang/Object;
.source "ShowContactInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$2;->this$1:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$2;->this$1:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->setResult(I)V

    .line 363
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$2;->this$1:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    #calls: Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->finishSelf()V
    invoke-static {v0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->access$200(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;)V

    .line 364
    return-void
.end method
