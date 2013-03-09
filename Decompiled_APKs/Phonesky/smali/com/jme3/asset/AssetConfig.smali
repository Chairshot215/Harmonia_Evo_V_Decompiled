.class public Lcom/jme3/asset/AssetConfig;
.super Ljava/lang/Object;
.source "AssetConfig.java"


# instance fields
.field private manager:Lcom/jme3/asset/AssetManager;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/jme3/asset/AssetConfig;->manager:Lcom/jme3/asset/AssetManager;

    .line 59
    return-void
.end method

.method private hasClass(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 97
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    .local v0, clazz:Ljava/lang/Class;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 100
    .end local v0           #clazz:Ljava/lang/Class;
    :cond_0
    :goto_0
    return v2

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public loadText(Ljava/io/InputStream;)V
    .locals 12
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 63
    .local v8, scan:Ljava/util/Scanner;
    :goto_0
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 64
    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, cmd:Ljava/lang/String;
    const-string v9, "LOADER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 66
    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, loaderClass:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, colon:Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 69
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected \':\', got \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 71
    :cond_0
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, extensionsList:Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, extensions:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v9, v2

    if-ge v4, v9, :cond_1

    .line 74
    aget-object v9, v2, v4

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v4

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 76
    :cond_1
    invoke-direct {p0, v5}, Lcom/jme3/asset/AssetConfig;->hasClass(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 77
    iget-object v9, p0, Lcom/jme3/asset/AssetConfig;->manager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v9, v5, v2}, Lcom/jme3/asset/AssetManager;->registerLoader(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "Cannot find loader {0}"

    invoke-virtual {v9, v10, v11, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    .end local v1           #colon:Ljava/lang/String;
    .end local v2           #extensions:[Ljava/lang/String;
    .end local v3           #extensionsList:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #loaderClass:Ljava/lang/String;
    :cond_3
    const-string v9, "LOCATOR"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 82
    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, rootPath:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, locatorClass:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/jme3/asset/AssetConfig;->hasClass(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 85
    iget-object v9, p0, Lcom/jme3/asset/AssetConfig;->manager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v9, v7, v6}, Lcom/jme3/asset/AssetManager;->registerLocator(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "Cannot find locator {0}"

    invoke-virtual {v9, v10, v11, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 90
    .end local v6           #locatorClass:Ljava/lang/String;
    .end local v7           #rootPath:Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected command, got \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 93
    .end local v0           #cmd:Ljava/lang/String;
    :cond_6
    return-void
.end method
