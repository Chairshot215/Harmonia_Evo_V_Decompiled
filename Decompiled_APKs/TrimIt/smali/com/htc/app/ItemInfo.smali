.class public Lcom/htc/app/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# instance fields
.field private checked:Z

.field private isFolder:Z

.field private mFile:Ljava/io/File;

.field private mFolderPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .parameter "file"
    .parameter "isFolder"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/htc/app/ItemInfo;->mFile:Ljava/io/File;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/ItemInfo;->checked:Z

    .line 14
    iput-boolean p2, p0, Lcom/htc/app/ItemInfo;->isFolder:Z

    .line 15
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .parameter "isFolder"
    .parameter "path"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/htc/app/ItemInfo;->isFolder:Z

    .line 19
    iput-object p2, p0, Lcom/htc/app/ItemInfo;->mFolderPath:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/app/ItemInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/app/ItemInfo;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/app/ItemInfo;->checked:Z

    return v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/htc/app/ItemInfo;->isFolder:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/app/ItemInfo;->checked:Z

    .line 28
    return-void
.end method
