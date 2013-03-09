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

    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerListAdapter;Lcom/htc/app/FilePickerListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 14

    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v10, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v10}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/htc/app/FilePickerListAdapter;->access$200(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

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

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "GarbageMessage_LongVacation"

    if-ne p1, v10, :cond_2

    :cond_1
    iget-object v10, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/htc/app/FilePickerListAdapter;->access$200(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v10}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v6, Landroid/widget/Filter$FilterResults;->count:I

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-object v6

    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v10}, Lcom/htc/app/FilePickerListAdapter;->access$100(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/app/ItemInfo;

    invoke-virtual {v7}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iput-object v4, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v6, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    const-string v0, "GarbageMessage_LongVacation"

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerListAdapter;->notifyDataSetInvalidated()V

    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Lcom/htc/app/FilePickerListAdapter;->mObjects:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerListAdapter;->access$302(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;

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

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    goto :goto_0
.end method
