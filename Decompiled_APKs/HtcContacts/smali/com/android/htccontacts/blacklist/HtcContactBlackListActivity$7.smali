.class Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$7;
.super Ljava/lang/Object;
.source "HtcContactBlackListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->createSelectionAdditionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$7;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0xf2

    .line 1018
    if-nez p2, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$7;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    #calls: Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->pickBlockedContacts()V
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->access$500(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;)V

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$7;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->removeDialog(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$7;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->showDialog(I)V

    goto :goto_0
.end method
