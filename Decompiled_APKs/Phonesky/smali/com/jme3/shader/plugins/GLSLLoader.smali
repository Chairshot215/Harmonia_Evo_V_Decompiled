.class public Lcom/jme3/shader/plugins/GLSLLoader;
.super Ljava/lang/Object;
.source "GLSLLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shader/plugins/GLSLLoader$GlslDependKey;,
        Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    }
.end annotation


# instance fields
.field private dependCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lcom/jme3/asset/AssetManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/plugins/GLSLLoader;->dependCache:Ljava/util/Map;

    .line 80
    return-void
.end method

.method private loadNode(Ljava/io/InputStream;Ljava/lang/String;)Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    .locals 10
    .parameter "in"
    .parameter "nodeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v3, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;

    invoke-direct {v3, p0, p2}, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;-><init>(Lcom/jme3/shader/plugins/GLSLLoader;Ljava/lang/String;)V

    .line 92
    .local v3, node:Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    if-nez p1, :cond_0

    .line 93
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dependency "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cannot be found."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 95
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v5, sb:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 97
    .local v4, r:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->ready()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 98
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, ln:Ljava/lang/String;
    const-string v7, "#import "

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 100
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v7, "\""

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "\""

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_1

    .line 104
    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 106
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Node depends on itself."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 109
    :cond_2
    iget-object v7, p0, Lcom/jme3/shader/plugins/GLSLLoader;->dependCache:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;

    .line 110
    .local v0, dependNode:Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    if-nez v0, :cond_3

    .line 111
    new-instance v1, Lcom/jme3/shader/plugins/GLSLLoader$GlslDependKey;

    invoke-direct {v1, p0, v2}, Lcom/jme3/shader/plugins/GLSLLoader$GlslDependKey;-><init>(Lcom/jme3/shader/plugins/GLSLLoader;Ljava/lang/String;)V

    .line 114
    .local v1, key:Lcom/jme3/shader/plugins/GLSLLoader$GlslDependKey;
    iget-object v7, p0, Lcom/jme3/shader/plugins/GLSLLoader;->owner:Lcom/jme3/asset/AssetManager;

    invoke-interface {v7, v1}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;

    .line 115
    .local v6, stream:Ljava/io/InputStream;
    invoke-direct {p0, v6, v2}, Lcom/jme3/shader/plugins/GLSLLoader;->loadNode(Ljava/io/InputStream;Ljava/lang/String;)Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;

    move-result-object v0

    .line 117
    .end local v1           #key:Lcom/jme3/shader/plugins/GLSLLoader$GlslDependKey;
    .end local v6           #stream:Ljava/io/InputStream;
    :cond_3
    invoke-virtual {v3, v0}, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->addDependency(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)V

    goto :goto_0

    .line 130
    .end local v0           #dependNode:Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 133
    .end local v2           #ln:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->setSource(Ljava/lang/String;)V

    .line 136
    iget-object v7, p0, Lcom/jme3/shader/plugins/GLSLLoader;->dependCache:Ljava/util/Map;

    invoke-interface {v7, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-object v3
.end method

.method private nextIndependentNode(Ljava/util/List;)Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;",
            ">;)",
            "Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, checkedNodes:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;>;"
    iget-object v3, p0, Lcom/jme3/shader/plugins/GLSLLoader;->dependCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 142
    .local v0, allNodes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    :cond_0
    const/4 v2, 0x0

    .line 147
    :goto_0
    return-object v2

    .line 145
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;

    .line 146
    .local v2, node:Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    #getter for: Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->dependsOn:Ljava/util/Set;
    invoke-static {v2}, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->access$000(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 152
    .end local v2           #node:Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;

    .line 153
    .restart local v2       #node:Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #getter for: Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->shaderName:Ljava/lang/String;
    invoke-static {v2}, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->access$100(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 155
    .end local v2           #node:Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Circular dependency."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private resolveDependencies(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/lang/String;
    .locals 7
    .parameter "root"

    .prologue
    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, checkedNodes:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    invoke-direct {p0, v0}, Lcom/jme3/shader/plugins/GLSLLoader;->nextIndependentNode(Ljava/util/List;)Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;

    move-result-object v2

    .line 165
    .local v2, indepnNode:Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    if-nez v2, :cond_1

    .line 183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 168
    :cond_1
    #getter for: Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->shaderSource:Ljava/lang/String;
    invoke-static {v2}, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->access$200(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    iget-object v5, p0, Lcom/jme3/shader/plugins/GLSLLoader;->dependCache:Ljava/util/Map;

    #getter for: Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->shaderName:Ljava/lang/String;
    invoke-static {v2}, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->access$100(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    #getter for: Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->dependOnMe:Ljava/util/Set;
    invoke-static {v2}, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->access$300(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 173
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;

    .line 175
    .local v1, dependNode:Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 176
    #getter for: Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->dependsOn:Ljava/util/Set;
    invoke-static {v1}, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->access$000(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 4
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/shader/plugins/GLSLLoader;->owner:Lcom/jme3/asset/AssetManager;

    .line 199
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/asset/AssetKey;->getExtension()Ljava/lang/String;

    move-result-object v2

    const-string v3, "glsllib"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "[main]"

    invoke-direct {p0, v2, v3}, Lcom/jme3/shader/plugins/GLSLLoader;->loadNode(Ljava/io/InputStream;Ljava/lang/String;)Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;

    move-result-object v1

    .line 207
    .local v1, rootNode:Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
    invoke-direct {p0, v1}, Lcom/jme3/shader/plugins/GLSLLoader;->resolveDependencies(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, code:Ljava/lang/String;
    iget-object v2, p0, Lcom/jme3/shader/plugins/GLSLLoader;->dependCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method
