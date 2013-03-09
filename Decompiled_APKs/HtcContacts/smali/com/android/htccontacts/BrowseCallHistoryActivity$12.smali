.class Lcom/android/htccontacts/BrowseCallHistoryActivity$12;
.super Ljava/lang/Object;
.source "BrowseCallHistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;->showConfirmBlockCallerDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2504
    iput-object p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$12;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    iput p2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$12;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2506
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$12;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    iget v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$12;->val$position:I

    #calls: Lcom/android/htccontacts/BrowseCallHistoryActivity;->addContactToBlacklist(I)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$3000(Lcom/android/htccontacts/BrowseCallHistoryActivity;I)V

    .line 2507
    return-void
.end method
