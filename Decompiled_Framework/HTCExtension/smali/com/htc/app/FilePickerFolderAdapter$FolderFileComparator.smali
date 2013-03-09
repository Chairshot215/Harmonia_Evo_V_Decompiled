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

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->SORT_BY_NAME:I

    iput v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->SORT_BY_DATE:I

    iput v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->SORT_ORDER_ASCENDING:I

    iput v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->SORT_ORDER_DESCENDING:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/app/FolderItemInfo;Lcom/htc/app/FolderItemInfo;)I
    .locals 12

    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p2}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v7, 0x1

    :goto_1
    sub-int v0, v3, v7

    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSortType:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$200(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_0
    if-ge v3, v7, :cond_d

    const/4 v9, 0x1

    :cond_1
    :goto_2
    return v9

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v4, 0x0

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mModeTypeOfFolderView:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$300(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v0, :cond_4

    add-int v10, v9, v0

    if-gez v10, :cond_8

    const/4 v9, -0x1

    :cond_4
    :goto_4
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    if-nez v10, :cond_9

    mul-int/lit8 v9, v9, 0x1

    :cond_5
    :goto_5
    if-eq v3, v7, :cond_1

    :pswitch_1
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v10, v1, v5

    if-gez v10, :cond_a

    const/4 v9, -0x1

    :goto_6
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    if-nez v10, :cond_c

    mul-int/lit8 v9, v9, 0x1

    :cond_6
    :goto_7
    if-ne v3, v7, :cond_0

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_8
    const/4 v9, 0x1

    goto :goto_4

    :cond_9
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    mul-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_a
    cmp-long v10, v1, v5

    if-lez v10, :cond_b

    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    goto :goto_6

    :cond_c
    iget-object v10, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    mul-int/lit8 v9, v9, -0x1

    goto :goto_7

    :cond_d
    if-le v3, v7, :cond_e

    const/4 v9, -0x1

    goto/16 :goto_2

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/app/FolderItemInfo;

    check-cast p2, Lcom/htc/app/FolderItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/htc/app/FilePickerFolderAdapter$FolderFileComparator;->compare(Lcom/htc/app/FolderItemInfo;Lcom/htc/app/FolderItemInfo;)I

    move-result v0

    return v0
.end method
