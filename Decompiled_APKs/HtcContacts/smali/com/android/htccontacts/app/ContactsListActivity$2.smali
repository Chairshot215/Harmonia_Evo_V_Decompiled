.class Lcom/android/htccontacts/app/ContactsListActivity$2;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/app/ContactsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/ContactsListActivity;

.field final synthetic val$header:Landroid/view/View;

.field final synthetic val$list:Lcom/htc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/ContactsListActivity;Lcom/htc/widget/HtcListView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iput-object p2, p0, Lcom/android/htccontacts/app/ContactsListActivity$2;->val$list:Lcom/htc/widget/HtcListView;

    iput-object p3, p0, Lcom/android/htccontacts/app/ContactsListActivity$2;->val$header:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$2;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$2;->val$list:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/android/htccontacts/app/ContactsListActivity$2;->val$header:Landroid/view/View;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/app/ContactsListActivity;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    .line 915
    return-void
.end method
