.class public Lcom/htc/album/processor/MultipleFlattenProcessor;
.super Lcom/htc/album/processor/FlattenBaseProcessor;
.source "MultipleFlattenProcessor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/album/processor/MultipleFlattenProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/MultipleFlattenProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V
    .locals 0
    .parameter "activity"
    .parameter "handler"
    .parameter "source"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/processor/FlattenBaseProcessor;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected getLocalClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/htc/album/processor/MultipleFlattenProcessor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostProcess()V
    .locals 6

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/htc/album/processor/MultipleFlattenProcessor;->getResultCode()I

    move-result v4

    if-nez v4, :cond_2

    .line 84
    iget-object v2, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    .line 85
    .local v2, fileLIst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/processor/FileInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v0, convertedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/processor/FileInfo;

    .line 88
    .local v1, file:Lcom/htc/album/processor/FileInfo;
    iget-boolean v4, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    if-eqz v4, :cond_0

    .line 96
    .end local v0           #convertedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v1           #file:Lcom/htc/album/processor/FileInfo;
    .end local v2           #fileLIst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/processor/FileInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 90
    .restart local v0       #convertedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v1       #file:Lcom/htc/album/processor/FileInfo;
    .restart local v2       #fileLIst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/processor/FileInfo;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v4, v1, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v1           #file:Lcom/htc/album/processor/FileInfo;
    :cond_1
    iget-object v4, p0, Lcom/htc/album/processor/BaseProcessor;->mProcessedResult:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    iget-object v4, p0, Lcom/htc/album/processor/BaseProcessor;->mProcessedResult:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    const-string v5, "image/jpeg"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .end local v0           #convertedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v2           #fileLIst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/processor/FileInfo;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-super {p0}, Lcom/htc/album/processor/FlattenBaseProcessor;->onPostProcess()V

    goto :goto_1
.end method

.method protected onPreProcess()I
    .locals 7

    .prologue
    .line 51
    invoke-super {p0}, Lcom/htc/album/processor/FlattenBaseProcessor;->onPreProcess()I

    move-result v2

    .line 52
    .local v2, resultCode:I
    if-eqz v2, :cond_0

    .line 72
    .end local v2           #resultCode:I
    :goto_0
    return v2

    .line 55
    .restart local v2       #resultCode:I
    :cond_0
    iget-object v5, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mSourceIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 56
    .local v4, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 57
    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 61
    .local v3, uri:Landroid/net/Uri;
    iget-boolean v5, p0, Lcom/htc/album/processor/BaseProcessor;->mStop:Z

    if-eqz v5, :cond_4

    .line 62
    const/4 v2, 0x4

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p0, v3}, Lcom/htc/album/processor/MultipleFlattenProcessor;->getFileInfo(Landroid/net/Uri;)Lcom/htc/album/processor/FileInfo;

    move-result-object v0

    .line 65
    .local v0, file:Lcom/htc/album/processor/FileInfo;
    if-eqz v0, :cond_3

    iget-boolean v5, v0, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    if-nez v5, :cond_3

    .line 66
    iget-object v5, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    .end local v0           #file:Lcom/htc/album/processor/FileInfo;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_5
    iget-object v5, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 70
    const/4 v2, 0x5

    goto :goto_0

    .line 72
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method
