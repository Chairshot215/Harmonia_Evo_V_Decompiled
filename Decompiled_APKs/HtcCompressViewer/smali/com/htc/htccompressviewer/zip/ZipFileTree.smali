.class public Lcom/htc/htccompressviewer/zip/ZipFileTree;
.super Ljava/lang/Object;
.source "ZipFileTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;
    }
.end annotation


# static fields
.field public static fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static root:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/htccompressviewer/zip/ZipFileTree;->fileList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    invoke-direct {v0, p0, v3}, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;-><init>(Lcom/htc/htccompressviewer/zip/ZipFileTree;Z)V

    .line 22
    .local v0, ZipFileTreeNode1:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;
    new-instance v1, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    invoke-direct {v1, p0, v3}, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;-><init>(Lcom/htc/htccompressviewer/zip/ZipFileTree;Z)V

    sput-object v1, Lcom/htc/htccompressviewer/zip/ZipFileTree;->root:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    .line 23
    sget-object v1, Lcom/htc/htccompressviewer/zip/ZipFileTree;->root:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    iget-object v1, v1, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->folderName:Ljava/util/TreeMap;

    const-string v2, "123"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcom/htc/htccompressviewer/zip/ZipFileTree;->root:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    iput-boolean v3, v1, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->mHasNextItem:Z

    .line 26
    return-void
.end method

.method private static addFileNameToList(Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;)V
    .locals 3
    .parameter "currentNode"

    .prologue
    .line 92
    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->fileName:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->fileName:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    .local v0, itemNameIt:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, name:Ljava/lang/String;
    sget-object v2, Lcom/htc/htccompressviewer/zip/ZipFileTree;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0           #itemNameIt:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/htc/htccompressviewer/zip/ZipFileTree;->fileList:Ljava/util/ArrayList;

    .line 69
    sget-object v1, Lcom/htc/htccompressviewer/zip/ZipFileTree;->root:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    .line 70
    .local v1, currentNode:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 72
    .local v0, NodeStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;>;"
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentNode:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;
    check-cast v1, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    .line 76
    .restart local v1       #currentNode:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;
    invoke-static {v1}, Lcom/htc/htccompressviewer/zip/ZipFileTree;->addFileNameToList(Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;)V

    .line 77
    iget-object v3, v1, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->folderName:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    iget-object v3, v1, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->folderName:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, firstFolderItem:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 82
    iget-object v3, v1, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->folderName:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v3, v1, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->folderName:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v2           #firstFolderItem:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public addFile(Ljava/lang/String;)V
    .locals 8
    .parameter "fileName"

    .prologue
    .line 31
    sget-object v0, Lcom/htc/htccompressviewer/zip/ZipFileTree;->root:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    .line 32
    .local v0, currentNode:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, token:[Ljava/lang/String;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v3, v4

    .line 35
    .local v2, itmeName:Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 36
    sget-object v4, Lcom/htc/htccompressviewer/zip/ZipFileTree;->root:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    iget-object v4, v4, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->fileName:Ljava/util/TreeSet;

    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 55
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 42
    iget-object v4, v0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->folderName:Ljava/util/TreeMap;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    iget-object v4, v0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->folderName:Ljava/util/TreeMap;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentNode:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;
    check-cast v0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    .line 40
    .restart local v0       #currentNode:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_1
    iget-object v4, v0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->folderName:Ljava/util/TreeMap;

    aget-object v5, v3, v1

    new-instance v6, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;-><init>(Lcom/htc/htccompressviewer/zip/ZipFileTree;Z)V

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v4, v0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->folderName:Ljava/util/TreeMap;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentNode:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;
    check-cast v0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    .restart local v0       #currentNode:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;
    goto :goto_2

    .line 53
    :cond_2
    iget-object v4, v0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->fileName:Ljava/util/TreeSet;

    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addFolder()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/htc/htccompressviewer/zip/ZipFileTree;->root:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->folderName:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 60
    sget-object v0, Lcom/htc/htccompressviewer/zip/ZipFileTree;->root:Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->fileName:Ljava/util/TreeSet;

    .line 61
    return-void
.end method

.method public getItemInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method
