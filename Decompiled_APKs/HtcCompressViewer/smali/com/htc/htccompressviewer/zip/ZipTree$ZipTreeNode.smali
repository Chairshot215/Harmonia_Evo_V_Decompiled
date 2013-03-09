.class public Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;
.super Ljava/lang/Object;
.source "ZipTree.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/zip/ZipTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZipTreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;",
        ">;"
    }
.end annotation


# instance fields
.field public child:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public isFolder:Z

.field public name:Ljava/lang/String;

.field public srcPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/htccompressviewer/zip/ZipTree;


# direct methods
.method public constructor <init>(Lcom/htc/htccompressviewer/zip/ZipTree;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->this$0:Lcom/htc/htccompressviewer/zip/ZipTree;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->child:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-eqz v0, :cond_1

    .line 125
    iget-boolean v0, p1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 129
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    iget-boolean v0, p1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->isFolder:Z

    if-eqz v0, :cond_2

    .line 134
    const/4 v0, -0x1

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    check-cast p1, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;->compareTo(Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;)I

    move-result v0

    return v0
.end method
