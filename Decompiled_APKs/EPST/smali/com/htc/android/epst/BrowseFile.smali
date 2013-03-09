.class public Lcom/htc/android/epst/BrowseFile;
.super Ljava/lang/Object;
.source "BrowseFile.java"


# instance fields
.field private mDirectory:Ljava/lang/String;

.field private mFileList:[Ljava/io/File;

.field private mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "directory"
    .parameter "filetype"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/BrowseFile;->mFileNameList:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Lcom/htc/android/epst/BrowseFile;->mDirectory:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/htc/android/epst/BrowseFile;->mFileType:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private getSpecifyFileType(Ljava/lang/String;)V
    .locals 8
    .parameter "subFileName"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/android/epst/BrowseFile;->mFileList:[Ljava/io/File;

    .line 38
    .local v0, fileList:[Ljava/io/File;
    if-nez v0, :cond_1

    .line 55
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 43
    .local v6, subFileNameLen:I
    array-length v1, v0

    .line 45
    .local v1, fileListLen:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 46
    aget-object v7, v0, v5

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, fileName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 49
    .local v3, fileNameLen:I
    sub-int v7, v3, v6

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, fileType:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 52
    iget-object v7, p0, Lcom/htc/android/epst/BrowseFile;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private listFile()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/android/epst/BrowseFile;->mDirectory:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 29
    .local v1, list:[Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/htc/android/epst/BrowseFile;->mFileList:[Ljava/io/File;

    .line 32
    iget-object v2, p0, Lcom/htc/android/epst/BrowseFile;->mFileType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/android/epst/BrowseFile;->getSpecifyFileType(Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public getFileNameList()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/htc/android/epst/BrowseFile;->listFile()V

    .line 59
    iget-object v0, p0, Lcom/htc/android/epst/BrowseFile;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDirectoryAndTypeToFind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "directory"
    .parameter "filetype"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/android/epst/BrowseFile;->mDirectory:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/htc/android/epst/BrowseFile;->mFileType:Ljava/lang/String;

    .line 24
    return-void
.end method
