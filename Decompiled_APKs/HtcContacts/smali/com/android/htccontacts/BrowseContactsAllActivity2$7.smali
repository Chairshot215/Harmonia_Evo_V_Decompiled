.class Lcom/android/htccontacts/BrowseContactsAllActivity2$7;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;->launchAccountListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$7;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$7;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$7;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mAccountListAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    #setter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mCurrentAccountInfo:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;
    invoke-static {v1, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$902(Lcom/android/htccontacts/BrowseContactsAllActivity2;Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;)Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    .line 561
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$7;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$7;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mAccountListAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->updateCurrentAccount(Lcom/android/htccontacts/BrowseContactsAllActivity2$AccountInfo;)V

    .line 563
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$7;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startQuery()V

    .line 570
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 572
    return-void
.end method
