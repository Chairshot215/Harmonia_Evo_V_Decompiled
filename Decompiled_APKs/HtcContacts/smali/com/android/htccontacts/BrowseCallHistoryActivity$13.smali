.class Lcom/android/htccontacts/BrowseCallHistoryActivity$13;
.super Ljava/lang/Object;
.source "BrowseCallHistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;->doConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2712
    iput-object p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$13;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$13;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #calls: Lcom/android/htccontacts/BrowseCallHistoryActivity;->doDeleteAll()V
    invoke-static {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$3100(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    .line 2715
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2716
    return-void
.end method
