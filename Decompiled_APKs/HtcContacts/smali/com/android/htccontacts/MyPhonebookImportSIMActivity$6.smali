.class Lcom/android/htccontacts/MyPhonebookImportSIMActivity$6;
.super Ljava/lang/Object;
.source "MyPhonebookImportSIMActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->showImportSIMContactsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$6;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 392
    const-string v0, "MyPhonebookImportSIMActivity"

    const-string v1, "User confirm to import SIM contacts, start picker for user to pick SIM contacts..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$6;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #calls: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->startPickerToImportSIM()V
    invoke-static {v0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$1100(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    .line 394
    return-void
.end method
