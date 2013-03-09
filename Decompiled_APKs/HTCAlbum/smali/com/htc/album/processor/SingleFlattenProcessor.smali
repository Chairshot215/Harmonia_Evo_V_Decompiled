.class public Lcom/htc/album/processor/SingleFlattenProcessor;
.super Lcom/htc/album/processor/FlattenBaseProcessor;
.source "SingleFlattenProcessor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/htc/album/processor/SingleFlattenProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/SingleFlattenProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V
    .locals 0
    .parameter "activity"
    .parameter "handler"
    .parameter "source"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/processor/FlattenBaseProcessor;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getLocalClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/htc/album/processor/SingleFlattenProcessor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostProcess()V
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/htc/album/processor/SingleFlattenProcessor;->getResultCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/processor/FileInfo;

    .line 76
    .local v0, fileInfo:Lcom/htc/album/processor/FileInfo;
    iget-object v1, p0, Lcom/htc/album/processor/BaseProcessor;->mProcessedResult:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/htc/album/processor/FileInfo;->mProcessedType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .end local v0           #fileInfo:Lcom/htc/album/processor/FileInfo;
    :cond_0
    invoke-super {p0}, Lcom/htc/album/processor/FlattenBaseProcessor;->onPostProcess()V

    .line 79
    return-void
.end method

.method protected onPreProcess()I
    .locals 7

    .prologue
    .line 43
    invoke-super {p0}, Lcom/htc/album/processor/FlattenBaseProcessor;->onPreProcess()I

    move-result v3

    .line 44
    .local v3, resultCode:I
    if-eqz v3, :cond_0

    .line 61
    .end local v3           #resultCode:I
    :goto_0
    return v3

    .line 47
    .restart local v3       #resultCode:I
    :cond_0
    iget-object v5, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 48
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/album/processor/SingleFlattenProcessor;->getFileInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/album/processor/FileInfo;

    move-result-object v0

    .line 49
    .local v0, fileInfo:Lcom/htc/album/processor/FileInfo;
    if-nez v0, :cond_1

    .line 51
    iget-object v5, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mSourceIntent:Landroid/content/Intent;

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, mime:Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lcom/htc/album/processor/SingleFlattenProcessor;->getFileInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/processor/FileInfo;

    move-result-object v0

    .line 56
    .end local v1           #mime:Ljava/lang/String;
    .end local v2           #path:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v5, v0, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    if-eqz v5, :cond_3

    .line 57
    :cond_2
    const/4 v3, 0x6

    goto :goto_0

    .line 59
    :cond_3
    iget-object v5, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const/4 v3, 0x0

    goto :goto_0
.end method
