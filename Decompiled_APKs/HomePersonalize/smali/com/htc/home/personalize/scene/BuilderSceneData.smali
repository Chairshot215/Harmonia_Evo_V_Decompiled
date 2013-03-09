.class public Lcom/htc/home/personalize/scene/BuilderSceneData;
.super Ljava/lang/Object;
.source "BuilderSceneData.java"


# instance fields
.field public count:I

.field public hasContent:Z

.field public scenes:[Lcom/htc/home/personalize/scene/SceneContent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v5, "hasContent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-boolean v5, p0, Lcom/htc/home/personalize/scene/BuilderSceneData;->hasContent:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    const-string v5, ", count: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/htc/home/personalize/scene/BuilderSceneData;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v5, p0, Lcom/htc/home/personalize/scene/BuilderSceneData;->scenes:[Lcom/htc/home/personalize/scene/SceneContent;

    if-eqz v5, :cond_0

    .line 18
    iget-object v0, p0, Lcom/htc/home/personalize/scene/BuilderSceneData;->scenes:[Lcom/htc/home/personalize/scene/SceneContent;

    .local v0, arr$:[Lcom/htc/home/personalize/scene/SceneContent;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 19
    .local v4, scene:Lcom/htc/home/personalize/scene/SceneContent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    .end local v0           #arr$:[Lcom/htc/home/personalize/scene/SceneContent;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #scene:Lcom/htc/home/personalize/scene/SceneContent;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
