.class Lcom/futuredial/ObexFileReadThread$FolderStructure;
.super Ljava/lang/Object;
.source "ObexFileReadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ObexFileReadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderStructure"
.end annotation


# instance fields
.field public fileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public folderName:Ljava/lang/String;

.field public fullPath:Ljava/lang/String;

.field public subFolderNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/ObexFileReadThread$FolderStructure;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/futuredial/ObexFileReadThread;


# direct methods
.method public constructor <init>(Lcom/futuredial/ObexFileReadThread;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/futuredial/ObexFileReadThread$FolderStructure;->this$0:Lcom/futuredial/ObexFileReadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread$FolderStructure;->folderName:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fileNameList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ObexFileReadThread$FolderStructure;->subFolderNameList:Ljava/util/ArrayList;

    .line 97
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 2

    .prologue
    .line 101
    const-string v1, ""

    iput-object v1, p0, Lcom/futuredial/ObexFileReadThread$FolderStructure;->folderName:Ljava/lang/String;

    .line 102
    const-string v1, ""

    iput-object v1, p0, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fullPath:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/futuredial/ObexFileReadThread$FolderStructure;->fileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/futuredial/ObexFileReadThread$FolderStructure;->subFolderNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/futuredial/ObexFileReadThread$FolderStructure;->subFolderNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/ObexFileReadThread$FolderStructure;

    invoke-virtual {v1}, Lcom/futuredial/ObexFileReadThread$FolderStructure;->Clear()V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/futuredial/ObexFileReadThread$FolderStructure;->subFolderNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 109
    return-void
.end method
