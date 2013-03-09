.class Lcom/android/htccontacts/BrowseCallHistoryActivity$10;
.super Ljava/lang/Object;
.source "BrowseCallHistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;->createFontSizeDialog()Landroid/app/Dialog;
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
    .line 2277
    iput-object p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2279
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2280
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-static {v2, p2}, Lcom/android/htccontacts/util/ContactsUtils;->setFontSize(Landroid/content/Context;I)Z

    move-result v1

    .line 2281
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 2282
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-static {v3}, Lcom/android/htccontacts/util/ContactsUtils;->getFontSize(Landroid/content/Context;)I

    move-result v3

    #setter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mFontSize:I
    invoke-static {v2, v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2702(Lcom/android/htccontacts/BrowseCallHistoryActivity;I)I

    .line 2283
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 2284
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->updateResource()V

    .line 2285
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #calls: Lcom/android/htccontacts/BrowseCallHistoryActivity;->resetEmptyView()V
    invoke-static {v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2800(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V

    .line 2286
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    if-eqz v2, :cond_0

    .line 2287
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    iget-object v3, v3, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 2290
    .end local v0           #mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    :cond_0
    return-void
.end method
