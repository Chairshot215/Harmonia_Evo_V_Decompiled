.class public Lcom/htc/app/FolderItemInfo;
.super Lcom/htc/widget/MoreExpandableItemInfo;
.source "FolderItemInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderItemInfo"


# instance fields
.field private isFolder:Z

.field private mChecked:Z

.field private mFile:Ljava/io/File;

.field private mFolderPath:Ljava/lang/String;

.field private mIsNothing:Z


# direct methods
.method public constructor <init>(JLjava/io/File;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FolderItemInfo;->mFile:Ljava/io/File;

    iput-boolean v1, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    iput-object p3, p0, Lcom/htc/app/FolderItemInfo;->mFile:Ljava/io/File;

    iput-boolean v1, p0, Lcom/htc/app/FolderItemInfo;->mIsNothing:Z

    return-void
.end method

.method public constructor <init>(JLjava/io/File;Z)V
    .locals 1

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FolderItemInfo;->mFile:Ljava/io/File;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    iput-object p3, p0, Lcom/htc/app/FolderItemInfo;->mFile:Ljava/io/File;

    iput-boolean p4, p0, Lcom/htc/app/FolderItemInfo;->mIsNothing:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x0

    instance-of v4, p1, Lcom/htc/app/FolderItemInfo;

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    long-to-int v0, v1

    add-int/lit8 v3, v0, 0x29

    mul-int/lit8 v3, v3, 0x29

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    return v3
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    return v0
.end method

.method public isFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->isFolder:Z

    return v0
.end method

.method public isNothing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mIsNothing:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    return-void
.end method
