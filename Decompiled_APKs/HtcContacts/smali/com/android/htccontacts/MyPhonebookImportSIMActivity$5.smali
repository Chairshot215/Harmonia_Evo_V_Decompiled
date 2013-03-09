.class Lcom/android/htccontacts/MyPhonebookImportSIMActivity$5;
.super Ljava/lang/Object;
.source "MyPhonebookImportSIMActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->showDeleteFinishDialog()V
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
    .line 339
    iput-object p1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$5;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$5;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mAction:I
    invoke-static {v0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$1000(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$5;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #getter for: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mAction:I
    invoke-static {v0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$1000(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$5;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    iget-object v0, v0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$5;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->finish()V

    goto :goto_0
.end method
