.class Lcom/android/htccontacts/DeDuplicationActivity$10;
.super Ljava/lang/Object;
.source "DeDuplicationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/DeDuplicationActivity;->pickAccountTypeAndName()Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$10;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$10;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #setter for: Lcom/android/htccontacts/DeDuplicationActivity;->mSelectedAccountIdx:I
    invoke-static {v0, p2}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1502(Lcom/android/htccontacts/DeDuplicationActivity;I)I

    .line 762
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$10;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #calls: Lcom/android/htccontacts/DeDuplicationActivity;->startScanningThread()V
    invoke-static {v0}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1600(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 763
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 764
    return-void
.end method
