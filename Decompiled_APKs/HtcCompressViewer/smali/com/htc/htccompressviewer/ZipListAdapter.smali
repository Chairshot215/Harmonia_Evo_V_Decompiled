.class public Lcom/htc/htccompressviewer/ZipListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ZipListAdapter.java"


# instance fields
.field public MAX_ZIP_IN_ZIP_LEVEL:I

.field private currentLevel:I

.field private isRootNoFile:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mfileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->MAX_ZIP_IN_ZIP_LEVEL:I

    .line 27
    iput-boolean v1, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->isRootNoFile:Z

    .line 31
    iput v1, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->currentLevel:I

    .line 32
    iput-object p1, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method

.method private checkBottomRound(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, bottomRound:Z
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/ZipListAdapter;->getCount()I

    move-result v2

    .line 114
    .local v2, finalItem:I
    add-int/lit8 v3, p1, 0x1

    if-le v2, v3, :cond_0

    .line 115
    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3}, Lcom/htc/htccompressviewer/ZipListAdapter;->getNodePostision(I)Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    move-result-object v0

    .line 116
    .local v0, Node:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    iget-boolean v3, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-eqz v3, :cond_0

    .line 117
    const/4 v1, 0x1

    .line 121
    .end local v0           #Node:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    :cond_0
    if-ne p1, v2, :cond_1

    .line 122
    const/4 v1, 0x1

    .line 124
    :cond_1
    return v1
.end method

.method private getNodePostision(I)Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    .locals 3
    .parameter "position"

    .prologue
    .line 129
    iget-boolean v1, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->isRootNoFile:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mfileList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .line 134
    .local v0, TreeNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    :goto_0
    return-object v0

    .line 132
    .end local v0           #TreeNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    :cond_0
    iget-object v1, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mfileList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .restart local v0       #TreeNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mfileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mfileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    iget-boolean v0, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->isRootNoFile:Z

    .line 141
    iget-object v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mfileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 143
    :cond_0
    iput-boolean v1, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->isRootNoFile:Z

    .line 144
    iget-object v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mfileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
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
    .line 60
    iget-object v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mfileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsRootNoFile()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->isRootNoFile:Z

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 155
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/ZipListAdapter;->getNodePostision(I)Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    move-result-object v0

    .line 181
    .local v0, TreeNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    iget-boolean v2, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->isRootNoFile:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 184
    :cond_1
    iget-boolean v2, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-eqz v2, :cond_0

    .line 186
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x7f070007

    const v6, 0x20900ce

    const/4 v3, 0x1

    const v5, 0x2020010

    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/ZipListAdapter;->getNodePostision(I)Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    move-result-object v0

    .line 71
    .local v0, TreeNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    if-nez p2, :cond_2

    .line 72
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->isRootNoFile:Z

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 74
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 75
    .local v1, itemText:Landroid/widget/TextView;
    new-instance v2, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {v2, v4, v3}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v2, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_0
    return-object p2

    .line 78
    .end local v1           #itemText:Landroid/widget/TextView;
    :cond_0
    iget-boolean v2, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x2090021

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 80
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    .restart local v1       #itemText:Landroid/widget/TextView;
    iget-object v2, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->srcPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    .end local v1           #itemText:Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 86
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    .restart local v1       #itemText:Landroid/widget/TextView;
    new-instance v2, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/ZipListAdapter;->checkBottomRound(I)Z

    move-result v3

    invoke-direct {v2, v4, v3}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v2, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    .end local v1           #itemText:Landroid/widget/TextView;
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->isRootNoFile:Z

    if-eqz v2, :cond_3

    .line 93
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    .restart local v1       #itemText:Landroid/widget/TextView;
    new-instance v2, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {v2, v4, v3}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v2, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    .end local v1           #itemText:Landroid/widget/TextView;
    :cond_3
    iget-boolean v2, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    .restart local v1       #itemText:Landroid/widget/TextView;
    iget-object v2, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->srcPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    .end local v1           #itemText:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 104
    .restart local v1       #itemText:Landroid/widget/TextView;
    new-instance v2, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/ZipListAdapter;->checkBottomRound(I)Z

    move-result v3

    invoke-direct {v2, v4, v3}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v2, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x2

    return v0
.end method

.method public getZipInZipLevel()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->currentLevel:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/ZipListAdapter;->getNodePostision(I)Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    move-result-object v0

    .line 46
    .local v0, TreeNode:Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->isRootNoFile:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, v0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-eqz v1, :cond_2

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 50
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public zipInZipLevelHandler()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->currentLevel:I

    iget v1, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->MAX_ZIP_IN_ZIP_LEVEL:I

    if-ge v0, v1, :cond_0

    .line 161
    iget v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->currentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->currentLevel:I

    .line 162
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zipInZipLevelback()Z
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->currentLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->currentLevel:I

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public zipListAdapterIniTree()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/CompressViewer;->getZipTree()Lcom/htc/htccompressviewer/zip/ZipTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/zip/ZipTree;->newFileList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccompressviewer/ZipListAdapter;->mfileList:Ljava/util/ArrayList;

    .line 56
    return-void
.end method
