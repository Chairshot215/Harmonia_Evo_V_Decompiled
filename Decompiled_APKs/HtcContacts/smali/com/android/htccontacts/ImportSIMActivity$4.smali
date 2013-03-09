.class Lcom/android/htccontacts/ImportSIMActivity$4;
.super Ljava/lang/Object;
.source "ImportSIMActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ImportSIMActivity;->showSecondDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportSIMActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ImportSIMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/htccontacts/ImportSIMActivity$4;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$4;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    #getter for: Lcom/android/htccontacts/ImportSIMActivity;->mImportingThread:Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;
    invoke-static {v0}, Lcom/android/htccontacts/ImportSIMActivity;->access$300(Lcom/android/htccontacts/ImportSIMActivity;)Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportSIMActivity$ImportSimContactsThread;->setCancel()V

    .line 146
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$4;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportSIMActivity;->finish()V

    .line 147
    return-void
.end method
