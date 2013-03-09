.class Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter$1;
.super Ljava/lang/Object;
.source "BrowseCallHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter$1;->this$1:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 780
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;

    move-object v0, v3

    check-cast v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;

    .line 782
    .local v0, cache:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;
    const-string v3, "BrowseCallHistoryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mViewContactListener onClick item.mPersonId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mPersonId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v3, "BrowseCallHistoryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mViewContactListener onClick item.isSim(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mbSim:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-wide v3, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mPersonId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 797
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 798
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    iget-wide v3, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mPersonId:J

    iget-object v5, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mLookup:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 801
    .local v2, uriLookup:Landroid/net/Uri;
    iget-boolean v3, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mbSim:Z

    if-eqz v3, :cond_0

    .line 802
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.anddroid.contacts.sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 806
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 808
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v3

    if-nez v3, :cond_1

    .line 809
    const-string v3, "DefaultTab"

    const-string v4, "PEOPLE_DETAIL_CALL_HISTORY"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter$1;->this$1:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    iget-object v3, v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v3, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 838
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uriLookup:Landroid/net/Uri;
    :goto_1
    return-void

    .line 811
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #uriLookup:Landroid/net/Uri;
    :cond_1
    const-string v3, "DefaultTab"

    const-string v4, "PEOPLE_DETAIL_VIEW_DETAIL"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 830
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uriLookup:Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 831
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter$1;->this$1:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    iget-object v3, v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->addToContact(Ljava/lang/String;)V

    goto :goto_1

    .line 833
    :cond_3
    iget-object v3, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 834
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "DefaultTab"

    const-string v4, "PEOPLE_DETAIL_CALL_HISTORY"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter$1;->this$1:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    iget-object v3, v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v3, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
