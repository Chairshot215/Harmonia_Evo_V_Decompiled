.class final Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DirectoryFilter"
.end annotation


# instance fields
.field private mLimit:I

.field private final mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

.field final synthetic this$0:Lcom/android/ex/chips/BaseRecipientAdapter;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;)V
    .locals 0
    .parameter
    .parameter "params"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 320
    iput-object p2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .line 321
    return-void
.end method


# virtual methods
.method public declared-synchronized getLimit()I
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .parameter "constraint"

    .prologue
    .line 337
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 338
    .local v1, results:Landroid/widget/Filter$FilterResults;
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 339
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 342
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v2, tempEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    const/4 v0, 0x0

    .line 349
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->getLimit()I

    move-result v4

    iget-object v5, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v5, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #calls: Lcom/android/ex/chips/BaseRecipientAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    invoke-static {v3, p1, v4, v5}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$100(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_1

    .line 352
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    new-instance v3, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    invoke-direct {v3, v0}, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 357
    :cond_1
    if-eqz v0, :cond_2

    .line 358
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 362
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 363
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 372
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #tempEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    :cond_3
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 9
    .parameter "constraint"
    .parameter "results"

    .prologue
    const/4 v8, 0x0

    .line 381
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1200(Lcom/android/ex/chips/BaseRecipientAdapter;)Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->removeDelayedLoadMessage()V

    .line 386
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$600(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    .line 389
    iget-object v7, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    .line 392
    .local v7, tempEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    .line 393
    .local v1, tempEntry:Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v2, v2, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$700(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;
    invoke-static {v4}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$800(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;
    invoke-static {v5}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$900(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/Set;

    move-result-object v5

    #calls: Lcom/android/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    invoke-static/range {v0 .. v5}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$200(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    move v2, v8

    goto :goto_1

    .line 399
    .end local v1           #tempEntry:Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #tempEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;>;"
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1310(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    .line 400
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1300(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v0

    if-lez v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1200(Lcom/android/ex/chips/BaseRecipientAdapter;)Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendDelayedLoadMessage()V

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$700(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;
    invoke-static {v4}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$800(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;
    invoke-static {v5}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$900(Lcom/android/ex/chips/BaseRecipientAdapter;)Ljava/util/Set;

    move-result-object v5

    #calls: Lcom/android/ex/chips/BaseRecipientAdapter;->constructEntryList(ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    invoke-static {v2, v8, v3, v4, v5}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$300(Lcom/android/ex/chips/BaseRecipientAdapter;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    #calls: Lcom/android/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V
    invoke-static {v0, v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1000(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V

    .line 412
    return-void
.end method

.method public declared-synchronized setLimit(I)V
    .locals 1
    .parameter "limit"

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
