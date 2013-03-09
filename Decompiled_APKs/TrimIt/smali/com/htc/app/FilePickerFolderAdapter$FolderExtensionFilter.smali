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
    .parameter
    .parameter "extensions"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;->mExtensionArray:[Ljava/lang/String;

    .line 453
    return-void
.end method

.method private checkSubLayerHasFile(Ljava/io/File;)Z
    .locals 9
    .parameter "f"

    .prologue
    .line 473
    iget-object v8, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFileExtensionFilter:Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
    invoke-static {v8}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 474
    .local v1, files:[Ljava/io/File;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 475
    .local v7, subFoldersList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    const/4 v4, 0x0

    .line 476
    .local v4, result:Z
    if-nez v1, :cond_0

    const/4 v8, 0x0

    .line 489
    :goto_0
    return v8

    .line 477
    :cond_0
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 478
    .local v5, subFiles:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 479
    const/4 v4, 0x1

    .line 477
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 481
    :cond_1
    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 484
    .end local v5           #subFiles:Ljava/io/File;
    :cond_2
    if-eqz v4, :cond_3

    move v8, v4

    goto :goto_0

    .line 485
    :cond_3
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 486
    .local v6, subFolder:Ljava/io/File;
    invoke-direct {p0, v6}, Lcom/htc/app/FilePickerFolderAdapter$FolderExtensionFilter;->checkSubLayerHasFile(Ljava/io/File;)Z

    move-result v4

    .line 487
    if-eqz v4, :cond_4

    .end local v6           #subFolder:Ljava/io/File;
    :cond_5
    move v8, v4

    .line 489
    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    const/4 v0, 0x1

    goto :goto_0
.end method
