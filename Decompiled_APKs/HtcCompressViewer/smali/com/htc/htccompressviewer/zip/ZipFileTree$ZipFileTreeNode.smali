.class Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;
.super Ljava/lang/Object;
.source "ZipFileTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/zip/ZipFileTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZipFileTreeNode"
.end annotation


# instance fields
.field fileName:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field folderName:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field mHasNextItem:Z

.field final synthetic this$0:Lcom/htc/htccompressviewer/zip/ZipFileTree;


# direct methods
.method constructor <init>(Lcom/htc/htccompressviewer/zip/ZipFileTree;Z)V
    .locals 1
    .parameter
    .parameter "hasNextItem"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->this$0:Lcom/htc/htccompressviewer/zip/ZipFileTree;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean p2, p0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->mHasNextItem:Z

    .line 118
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->folderName:Ljava/util/TreeMap;

    .line 119
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipFileTree$ZipFileTreeNode;->fileName:Ljava/util/TreeSet;

    .line 121
    return-void
.end method
