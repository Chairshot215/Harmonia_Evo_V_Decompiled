.class final Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/BaseRecipientAdapter;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "resultValue"

    .prologue
    .line 301
    move-object v2, p1

    check-cast v2, Lcom/android/ex/chips/RecipientEntry;

    .line 302
    .local v2, entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, displayName:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, emailAddress:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    .end local v1           #emailAddress:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1       #emailAddress:Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/text/util/Rfc822Token;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17
    .parameter "constraint"

    .prologue
    .line 202
    new-instance v16, Landroid/widget/Filter$FilterResults;

    invoke-direct/range {v16 .. v16}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 203
    .local v16, results:Landroid/widget/Filter$FilterResults;
    const/4 v13, 0x0

    .line 204
    .local v13, defaultDirectoryCursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 206
    .local v14, directoryCursor:Landroid/database/Cursor;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-object v16

    .line 212
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I
    invoke-static {v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$000(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v2

    const/4 v8, 0x0

    move-object/from16 v0, p1

    #calls: Lcom/android/ex/chips/BaseRecipientAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    invoke-static {v1, v0, v2, v8}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$100(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 214
    if-nez v13, :cond_3

    .line 264
    :goto_1
    if-eqz v13, :cond_2

    .line 265
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_2
    if-eqz v14, :cond_0

    .line 268
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 222
    :cond_3
    :try_start_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 224
    .local v4, entryMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v5, nonAggregatedEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 228
    .local v6, existingDestinations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    new-instance v2, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    invoke-direct {v2, v13}, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(Landroid/database/Cursor;)V

    const/4 v3, 0x1

    #calls: Lcom/android/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    invoke-static/range {v1 .. v6}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$200(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 264
    .end local v4           #entryMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    .end local v5           #nonAggregatedEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    .end local v6           #existingDestinations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_4

    .line 265
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_4
    if-eqz v14, :cond_5

    .line 268
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 236
    .restart local v4       #entryMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;>;"
    .restart local v5       #nonAggregatedEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    .restart local v6       #existingDestinations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    const/4 v2, 0x0

    #calls: Lcom/android/ex/chips/BaseRecipientAdapter;->constructEntryList(ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    invoke-static {v1, v2, v4, v5, v6}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$300(Lcom/android/ex/chips/BaseRecipientAdapter;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v3

    .line 241
    .local v3, entries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I
    invoke-static {v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$000(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v1

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v2

    sub-int v15, v1, v2

    .line 243
    .local v15, limit:I
    if-lez v15, :cond_7

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$400(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #calls: Lcom/android/ex/chips/BaseRecipientAdapter;->setupOtherDirectories(Landroid/database/Cursor;)Ljava/util/List;
    invoke-static {v1, v14}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$500(Lcom/android/ex/chips/BaseRecipientAdapter;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v7

    .line 258
    .local v7, paramsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    :goto_3
    new-instance v2, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;

    invoke-direct/range {v2 .. v7}, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;-><init>(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    move-object/from16 v0, v16

    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 261
    const/4 v1, 0x1

    move-object/from16 v0, v16

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 255
    .end local v7           #paramsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    :cond_7
    const/4 v7, 0x0

    .restart local v7       #paramsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    goto :goto_3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 279
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #setter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;
    invoke-static {v2, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$602(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 281
    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 282
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;

    .line 283
    .local v0, defaultFilterResult:Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entryMap:Ljava/util/LinkedHashMap;

    #setter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;
    invoke-static {v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$702(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 284
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->nonAggregatedEntries:Ljava/util/List;

    #setter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$802(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)Ljava/util/List;

    .line 285
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->existingDestinations:Ljava/util/Set;

    #setter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;
    invoke-static {v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$902(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;

    .line 287
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entries:Ljava/util/List;

    #calls: Lcom/android/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1000(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V

    .line 290
    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I
    invoke-static {v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$000(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v2

    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->existingDestinations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int v1, v2, v3

    .line 293
    .local v1, limit:I
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v3, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    #calls: Lcom/android/ex/chips/BaseRecipientAdapter;->startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V
    invoke-static {v2, p1, v3, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1100(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;Ljava/util/List;I)V

    .line 297
    .end local v0           #defaultFilterResult:Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;
    .end local v1           #limit:I
    :cond_0
    return-void
.end method
