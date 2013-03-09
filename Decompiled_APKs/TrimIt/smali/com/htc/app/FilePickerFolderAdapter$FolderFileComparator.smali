.class Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderFileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/app/FolderItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final SORT_BY_DATE:I

.field private final SORT_BY_NAME:I

.field private final SORT_ORDER_ASCENDING:I

.field private final SORT_ORDER_DESCENDING:I

.field final synthetic this$0:Lcom/htc/app/FilePickerFolderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFolderAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 578
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->SORT_BY_NAME:I

    .line 580
    iput v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->SORT_BY_DATE:I

    .line 581
    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->SORT_ORDER_ASCENDING:I

    .line 582
    iput v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->SORT_ORDER_DESCENDING:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/app/FolderItemInfo;Lcom/htc/app/FolderItemInfo;)I
    .locals 12
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 585
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v3, 0x1

    .line 586
    .local v3, item1IsFolder:I
    :goto_0
    invoke-virtual {p2}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v7, 0x1

    .line 587
    .local v7, item2IsFolder:I
    :goto_1
    sub-int v0, v3, v7

    .line 589
    .local v0, folderWeight:I
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSortType:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$200(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 639
    :cond_0
    if-ge v3, v7, :cond_d

    .line 640
    const/4 v9, 0x1

    .line 645
    :cond_1
    :goto_2
    return v9

    .line 585
    .end local v0           #folderWeight:I
    .end local v3           #item1IsFolder:I
    .end local v7           #item2IsFolder:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 586
    .restart local v3       #item1IsFolder:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 591
    .restart local v0       #folderWeight:I
    .restart local v7       #item2IsFolder:I
    :pswitch_0
    const/4 v4, 0x0

    .line 592
    .local v4, item1Name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 593
    .local v8, item2Name:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mModeTypeOfFolderView:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$300(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 594
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-virtual {p2}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 604
    :goto_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    .line 606
    .local v9, result:I
    if-eqz v0, :cond_4

    .line 607
    add-int v10, v9, v0

    if-gez v10, :cond_8

    const/4 v9, -0x1

    .line 609
    :cond_4
    :goto_4
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    if-nez v10, :cond_9

    .line 611
    mul-int/lit8 v9, v9, 0x1

    .line 615
    :cond_5
    :goto_5
    if-eq v3, v7, :cond_1

    .line 619
    .end local v4           #item1Name:Ljava/lang/String;
    .end local v8           #item2Name:Ljava/lang/String;
    .end local v9           #result:I
    :pswitch_1
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 620
    .local v1, item1Date:J
    invoke-virtual {p2}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 622
    .local v5, item2Date:J
    cmp-long v10, v1, v5

    if-gez v10, :cond_a

    .line 623
    const/4 v9, -0x1

    .line 629
    .restart local v9       #result:I
    :goto_6
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    if-nez v10, :cond_c

    .line 630
    mul-int/lit8 v9, v9, 0x1

    .line 634
    :cond_6
    :goto_7
    if-ne v3, v7, :cond_0

    goto :goto_2

    .line 599
    .end local v1           #item1Date:J
    .end local v5           #item2Date:J
    .end local v9           #result:I
    .restart local v4       #item1Name:Ljava/lang/String;
    .restart local v8       #item2Name:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 601
    invoke-virtual {p2}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 607
    .restart local v9       #result:I
    :cond_8
    const/4 v9, 0x1

    goto :goto_4

    .line 612
    :cond_9
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 613
    mul-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 624
    .end local v4           #item1Name:Ljava/lang/String;
    .end local v8           #item2Name:Ljava/lang/String;
    .end local v9           #result:I
    .restart local v1       #item1Date:J
    .restart local v5       #item2Date:J
    :cond_a
    cmp-long v10, v1, v5

    if-lez v10, :cond_b

    .line 625
    const/4 v9, 0x1

    .restart local v9       #result:I
    goto :goto_6

    .line 627
    .end local v9           #result:I
    :cond_b
    const/4 v9, 0x0

    .restart local v9       #result:I
    goto :goto_6

    .line 631
    :cond_c
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 632
    mul-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 641
    .end local v1           #item1Date:J
    .end local v5           #item2Date:J
    .end local v9           #result:I
    :cond_d
    if-le v3, v7, :cond_e

    .line 642
    const/4 v9, -0x1

    goto/16 :goto_2

    .line 645
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 578
    check-cast p1, Lcom/htc/app/FolderItemInfo;

    .end local p1
    check-cast p2, Lcom/htc/app/FolderItemInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->compare(Lcom/htc/app/FolderItemInfo;Lcom/htc/app/FolderItemInfo;)I

    move-result v0

    return v0
.end method
