.class public Lcom/htc/home/personalize/scene/BuilderSceneInfo;
.super Ljava/lang/Object;
.source "BuilderSceneInfo.java"


# instance fields
.field public id:Ljava/lang/String;

.field public landscapePreviewImageUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public portraitPreviewImageUrl:Ljava/lang/String;

.field public updatedTimestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseLandscapePreviewFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->landscapePreviewImageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->landscapePreviewImageUrl:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->landscapePreviewImageUrl:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->landscapePreviewImageUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->landscapePreviewImageUrl:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->landscapePreviewImageUrl:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBasePortraitPreviewFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->portraitPreviewImageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->portraitPreviewImageUrl:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->portraitPreviewImageUrl:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->portraitPreviewImageUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->portraitPreviewImageUrl:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->portraitPreviewImageUrl:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ", portraitPreviewImageUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->portraitPreviewImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", landscapePreviewImageUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->landscapePreviewImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", updatedTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p0, Lcom/htc/home/personalize/scene/BuilderSceneInfo;->updatedTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
