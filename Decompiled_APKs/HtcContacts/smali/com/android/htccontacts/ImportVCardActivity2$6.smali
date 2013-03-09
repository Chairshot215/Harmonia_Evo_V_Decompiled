.class Lcom/android/htccontacts/ImportVCardActivity2$6;
.super Ljava/lang/Object;
.source "ImportVCardActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ImportVCardActivity2;->pickAccountTypeAndName()Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$6;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$6;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #setter for: Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I
    invoke-static {v0, p2}, Lcom/android/htccontacts/ImportVCardActivity2;->access$702(Lcom/android/htccontacts/ImportVCardActivity2;I)I

    .line 1630
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$6;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #calls: Lcom/android/htccontacts/ImportVCardActivity2;->setAccountTypeAndNameItem()V
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1900(Lcom/android/htccontacts/ImportVCardActivity2;)V

    .line 1631
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$6;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #calls: Lcom/android/htccontacts/ImportVCardActivity2;->setCurrentAccountSource()V
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$2000(Lcom/android/htccontacts/ImportVCardActivity2;)V

    .line 1632
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$6;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    const/4 v1, 0x0

    #calls: Lcom/android/htccontacts/ImportVCardActivity2;->checkMaxAllowedItems(Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->access$2100(Lcom/android/htccontacts/ImportVCardActivity2;Lcom/android/htccontacts/ImportVCardActivity2$ViewEntry;)Z

    .line 1633
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1634
    return-void
.end method
