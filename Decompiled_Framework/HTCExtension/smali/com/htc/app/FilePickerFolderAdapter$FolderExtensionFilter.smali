.class Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderExtensionFilter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderExtensionFilter"


# instance fields
.field mExtensionArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/app/FilePickerFolderAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/app/FilePickerFolderAdapter;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;->mExtensionArray:[Ljava/lang/String;

    return-void
.end method

.method private checkSubLayerHasFile(Ljava/io/File;)Z
    .locals 9

    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    invoke-static {v8}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    move v8, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;->checkSubLayerHasFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_5
    move v8, v4

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
