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
    .parameter "id"
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FolderItemInfo;->mFile:Ljava/io/File;

    .line 15
    iput-boolean v1, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    .line 22
    iput-object p3, p0, Lcom/htc/app/FolderItemInfo;->mFile:Ljava/io/File;

    .line 23
    iput-boolean v1, p0, Lcom/htc/app/FolderItemInfo;->mIsNothing:Z

    .line 24
    return-void
.end method

.method public constructor <init>(JLjava/io/File;Z)V
    .locals 1
    .parameter "id"
    .parameter "file"
    .parameter "isNothing"

    .prologue
    .line 26
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FolderItemInfo;->mFile:Ljava/io/File;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    .line 27
    iput-object p3, p0, Lcom/htc/app/FolderItemInfo;->mFile:Ljava/io/File;

    .line 28
    iput-boolean p4, p0, Lcom/htc/app/FolderItemInfo;->mIsNothing:Z

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "that"

    .prologue
    const/4 v3, 0x0

    .line 56
    instance-of v4, p1, Lcom/htc/app/FolderItemInfo;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 58
    .local v0, p:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_1

    .line 63
    .end local v0           #p:Lcom/htc/app/FolderItemInfo;
    :cond_0
    :goto_0
    return v3

    .line 59
    .restart local v0       #p:Lcom/htc/app/FolderItemInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, thisPath:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, thatPath:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 50
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

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 68
    .local v1, l:J
    long-to-int v0, v1

    .line 69
    .local v0, i:I
    add-int/lit8 v3, v0, 0x29

    mul-int/lit8 v3, v3, 0x29

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    return v3
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    return v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->isFolder:Z

    return v0
.end method

.method public isNothing()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mIsNothing:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    .line 43
    return-void
.end method
