.class Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter$1;
.super Ljava/lang/Object;
.source "ImportVCardActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter$1;->this$1:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1401
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter$1;->this$1:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-virtual {v1}, Lcom/android/htccontacts/ImportVCardActivity2;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1402
    const-string v1, "ImportVCardActivity2"

    const-string v2, "Send Via dialog is shown after activity is finished, do nothing..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter$1;->this$1:Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;

    iget-object v1, v1, Lcom/android/htccontacts/ImportVCardActivity2$ViewAdapter;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #calls: Lcom/android/htccontacts/ImportVCardActivity2;->pickAccountTypeAndName()Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1700(Lcom/android/htccontacts/ImportVCardActivity2;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1406
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 1407
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method
