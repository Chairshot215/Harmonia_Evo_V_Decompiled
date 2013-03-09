.class public Lcom/htc/htccompressviewer/zip/ZipTree;
.super Ljava/lang/Object;
.source "ZipTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    }
.end annotation


# instance fields
.field public mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public mRoot:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

.field public mTreePath:Ljava/lang/String;

.field public mZipFileCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "treePath"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mZipFileCount:I

    .line 19
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    invoke-direct {v0, p0}, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;-><init>(Lcom/htc/htccompressviewer/zip/ZipTree;)V

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mRoot:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .line 20
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mRoot:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    .line 21
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mRoot:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    const-string v1, "/"

    iput-object v1, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->name:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mFileList:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mTreePath:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private addTreeNode(Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    .locals 2
    .parameter "currentNode"
    .parameter "itemName"
    .parameter "isFolder"
    .parameter "sourcePath"

    .prologue
    .line 63
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    invoke-direct {v0, p0}, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;-><init>(Lcom/htc/htccompressviewer/zip/ZipTree;)V

    .line 64
    .local v0, newNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    iput-boolean p3, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    .line 65
    iput-object p2, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->name:Ljava/lang/String;

    .line 66
    if-eqz p4, :cond_0

    .line 67
    iput-object p4, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->srcPath:Ljava/lang/String;

    .line 69
    :cond_0
    if-nez p3, :cond_1

    .line 70
    iget v1, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mZipFileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mZipFileCount:I

    .line 73
    :cond_1
    iget-object v1, p1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->child:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v0
.end method


# virtual methods
.method public addFile(Ljava/lang/String;)V
    .locals 12
    .parameter "fileName"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 28
    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mRoot:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .line 29
    .local v2, currentNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 30
    .local v7, token:[Ljava/lang/String;
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v5, v7, v8

    .line 31
    .local v5, itemName:Ljava/lang/String;
    array-length v8, v7

    if-ne v8, v11, :cond_0

    .line 33
    invoke-direct {p0, v2, v5, v10, p1}, Lcom/htc/htccompressviewer/zip/ZipTree;->addTreeNode(Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .line 60
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v6, "/"

    .line 37
    .local v6, srcPath:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_4

    .line 39
    const/4 v3, 0x0

    .line 40
    .local v3, findFolder:Z
    iget-object v8, v2, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->child:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 42
    .local v0, childIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .line 44
    .local v1, curItem:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    iget-boolean v8, v1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->name:Ljava/lang/String;

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 45
    move-object v2, v1

    .line 46
    const/4 v3, 0x1

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 52
    .end local v1           #curItem:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    :cond_2
    if-nez v3, :cond_3

    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 54
    aget-object v8, v7, v4

    invoke-direct {p0, v2, v8, v11, v6}, Lcom/htc/htccompressviewer/zip/ZipTree;->addTreeNode(Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    move-result-object v2

    .line 37
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57
    .end local v0           #childIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;>;"
    .end local v3           #findFolder:Z
    :cond_4
    invoke-direct {p0, v2, v5, v10, p1}, Lcom/htc/htccompressviewer/zip/ZipTree;->addTreeNode(Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mRoot:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .line 109
    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mFileList:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mZipFileCount:I

    .line 111
    return-void
.end method

.method public contructList(Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;)V
    .locals 3
    .parameter "currentNode"

    .prologue
    .line 90
    iget-object v2, p1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->child:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    .local v0, childIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .line 95
    .local v1, curNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    iget-boolean v2, v1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-nez v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    iget-object v2, v1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->child:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-boolean v2, v2, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-nez v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/zip/ZipTree;->contructList(Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;)V

    goto :goto_0

    .line 105
    .end local v1           #curNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    :cond_2
    return-void
.end method

.method public getFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public newFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mRoot:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipTree;->contructList(Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;)V

    .line 81
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method
