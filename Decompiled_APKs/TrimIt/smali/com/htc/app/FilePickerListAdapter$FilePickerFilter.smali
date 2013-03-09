.class Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;
.super Landroid/widget/Filter;
.source "FilePickerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePickerFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerListAdapter;Lcom/htc/app/FilePickerListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 14
    .parameter "prefix"

    .prologue
    .line 435
    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 436
    .local v6, results:Landroid/widget/Filter$FilterResults;
    iget-object v10, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v10}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_0

    .line 437
    iget-object v10, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/htc/app/FilePickerListAdapter;->access$200(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 438
    :try_start_0
    iget-object v10, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;
    invoke-static {v13}, Lcom/htc/app/FilePickerListAdapter;->access$300(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #setter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v10, v12}, Lcom/htc/app/FilePickerListAdapter;->access$102(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 439
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "GarbageMessage_LongVacation"

    if-ne p1, v10, :cond_2

    .line 444
    :cond_1
    iget-object v10, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/htc/app/FilePickerListAdapter;->access$200(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 445
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v10}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 447
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    iput-object v3, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 448
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v6, Landroid/widget/Filter$FilterResults;->count:I

    .line 449
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 479
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    :goto_0
    return-object v6

    .line 439
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 449
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 451
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, prefixString:Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v10}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 453
    .local v9, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 456
    .local v0, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    .local v4, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 460
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/app/ItemInfo;

    .line 461
    .local v7, value:Lcom/htc/app/ItemInfo;
    invoke-virtual {v7}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v2

    .line 463
    .local v2, isFolder:Z
    if-eqz v2, :cond_4

    .line 464
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    :cond_4
    invoke-virtual {v7}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 468
    .local v8, valueText:Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 469
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 474
    .end local v2           #isFolder:Z
    .end local v7           #value:Lcom/htc/app/ItemInfo;
    .end local v8           #valueText:Ljava/lang/String;
    :cond_5
    iput-object v4, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 475
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v6, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 489
    const-string v0, "GarbageMessage_LongVacation"

    if-eq p1, v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    .line 491
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerListAdapter;->access$302(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 493
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/app/FilePickerListAdapter;->access$300(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v2

    #calls: Lcom/htc/app/FilePickerListAdapter;->removeRedundantPath(Ljava/util/List;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->access$302(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 495
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    goto :goto_0
.end method
