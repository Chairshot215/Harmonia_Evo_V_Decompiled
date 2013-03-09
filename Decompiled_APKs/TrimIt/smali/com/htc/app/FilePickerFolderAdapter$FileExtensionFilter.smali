.class Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileExtensionFilter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileExtensionFilter"


# instance fields
.field private containFolder:Z

.field mExtensionArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/app/FilePickerFolderAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/app/FilePickerFolderAdapter;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "extensions"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p2, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->mExtensionArray:[Ljava/lang/String;

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->containFolder:Z

    .line 391
    return-void
.end method

.method public constructor <init>(Lcom/htc/app/FilePickerFolderAdapter;[Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "extensions"
    .parameter "isContainFolder"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p2, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->mExtensionArray:[Ljava/lang/String;

    .line 385
    iput-boolean p3, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->containFolder:Z

    .line 386
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "dir"
    .parameter "filename"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 395
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 397
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 398
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/FilePickerUtil;->isAllowForder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    iget-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->containFolder:Z

    .line 425
    :cond_1
    :goto_0
    return v2

    .line 403
    :cond_2
    iget-boolean v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->containFolder:Z

    goto :goto_0

    .line 407
    :cond_3
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v4}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/htc/app/FilePickerUtil;->isContainDM(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 411
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->mExtensionArray:[Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 412
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-nez v4, :cond_1

    .line 415
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->mExtensionArray:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 417
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$FileExtensionFilter;->mExtensionArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 419
    goto :goto_0

    .line 415
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    :cond_5
    move v2, v3

    .line 425
    goto :goto_0
.end method
