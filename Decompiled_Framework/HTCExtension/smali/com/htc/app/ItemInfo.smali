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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/app/ItemInfo;->mFile:Ljava/io/File;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/ItemInfo;->checked:Z

    iput-boolean p2, p0, Lcom/htc/app/ItemInfo;->isFolder:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/htc/app/ItemInfo;->isFolder:Z

    iput-object p2, p0, Lcom/htc/app/ItemInfo;->mFolderPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/ItemInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFolderPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/ItemInfo;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/ItemInfo;->checked:Z

    return v0
.end method

.method public isFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/ItemInfo;->isFolder:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/app/ItemInfo;->checked:Z

    return-void
.end method
