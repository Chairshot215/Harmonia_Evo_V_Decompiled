.class Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactsPreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    .line 760
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 761
    iput-object p2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->mContext:Landroid/content/Context;

    .line 762
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 766
    sparse-switch p1, :sswitch_data_0

    .line 851
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 852
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 854
    :cond_1
    return-void

    .line 768
    :sswitch_0
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 772
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Last Name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$600(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)I

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Last Name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$600(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)I

    move-result v5

    if-ne v5, v9, :cond_4

    .line 774
    :cond_3
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    const-string v6, "All contact display order"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Last Name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #calls: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->updatePrefs(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$800(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;Ljava/lang/String;Z)V

    .line 775
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #calls: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->loadPrefs()V
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$900(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    .line 776
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setDisplayOrder()V

    .line 779
    :cond_4
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Last Name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortNameType:I
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$700(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)I

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Last Name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSortNameType:I
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$700(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 781
    :cond_6
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    const-string v6, "All contact sort order"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Last Name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #calls: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->updatePrefs(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$800(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;Ljava/lang/String;Z)V

    .line 782
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #calls: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->loadPrefs()V
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$900(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    .line 783
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setSortOrder()V

    goto/16 :goto_0

    .line 789
    :sswitch_1
    if-eqz p3, :cond_a

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 792
    :cond_7
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 793
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;

    iget-object v5, v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mAccountName:Ljava/lang/String;

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;

    iget-object v5, v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mAccountType:Ljava/lang/String;

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 795
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mCounts:Ljava/lang/String;

    .line 792
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 801
    :cond_9
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 804
    .end local v2           #i:I
    :cond_a
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v4

    .line 805
    .local v4, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v4, v8}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 807
    .local v1, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 809
    .local v0, accountDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    const-string v5, "com.htc.socialnetwork.flickr"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 810
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_b

    .line 811
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;

    iget-object v5, v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mAccountName:Ljava/lang/String;

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;

    iget-object v5, v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mAccountType:Ljava/lang/String;

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;

    iget-object v5, v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mCounts:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 814
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;

    const-string v6, " (0)"

    iput-object v6, v5, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountCount;->mCounts:Ljava/lang/String;

    .line 810
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 848
    .end local v0           #accountDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v2           #i:I
    :cond_d
    iget-object v5, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAdapter:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;
    invoke-static {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1100(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$DisplayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 766
    :sswitch_data_0
    .sparse-switch
        0x5dc -> :sswitch_0
        0x6a4 -> :sswitch_1
    .end sparse-switch
.end method
