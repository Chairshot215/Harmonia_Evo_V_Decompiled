.class public Lgnu/expr/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# static fields
.field public static final LAST_MODIFIED_CACHE_TIME:J = 0x3e8L

.field static instance:Lgnu/expr/ModuleManager;


# instance fields
.field private compilationDirectory:Ljava/lang/String;

.field public lastModifiedCacheTime:J

.field modules:[Lgnu/expr/ModuleInfo;

.field numModules:I

.field packageInfoChain:Lgnu/expr/ModuleSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lgnu/expr/ModuleManager;

    invoke-direct {v0}, Lgnu/expr/ModuleManager;-><init>()V

    sput-object v0, Lgnu/expr/ModuleManager;->instance:Lgnu/expr/ModuleManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lgnu/expr/ModuleManager;->compilationDirectory:Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lgnu/expr/ModuleManager;->lastModifiedCacheTime:J

    return-void
.end method

.method private declared-synchronized add(Lgnu/expr/ModuleInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    if-nez v1, :cond_1

    .line 66
    const/16 v1, 0xa

    new-array v1, v1, [Lgnu/expr/ModuleInfo;

    iput-object v1, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    .line 73
    :cond_0
    :goto_0
    iget-object v1, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    iget v2, p0, Lgnu/expr/ModuleManager;->numModules:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/expr/ModuleManager;->numModules:I

    aput-object p1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 67
    :cond_1
    :try_start_1
    iget v1, p0, Lgnu/expr/ModuleManager;->numModules:I

    iget-object v2, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 69
    iget v1, p0, Lgnu/expr/ModuleManager;->numModules:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lgnu/expr/ModuleInfo;

    .line 70
    .local v0, tmp:[Lgnu/expr/ModuleInfo;
    iget-object v1, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lgnu/expr/ModuleManager;->numModules:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput-object v0, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    .end local v0           #tmp:[Lgnu/expr/ModuleInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;
    .locals 3
    .parameter "clas"

    .prologue
    .line 89
    const-class v1, Lgnu/expr/ModuleManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;

    invoke-virtual {v2, p0}, Lgnu/expr/ModuleInfo$ClassToInfoMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/ModuleInfo;

    .line 90
    .local v0, info:Lgnu/expr/ModuleInfo;
    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lgnu/expr/ModuleInfo;

    .end local v0           #info:Lgnu/expr/ModuleInfo;
    invoke-direct {v0}, Lgnu/expr/ModuleInfo;-><init>()V

    .line 93
    .restart local v0       #info:Lgnu/expr/ModuleInfo;
    invoke-virtual {v0, p0}, Lgnu/expr/ModuleInfo;->setModuleClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit v1

    return-object v0

    .line 89
    .end local v0           #info:Lgnu/expr/ModuleInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static getInstance()Lgnu/expr/ModuleManager;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lgnu/expr/ModuleManager;->instance:Lgnu/expr/ModuleManager;

    return-object v0
.end method

.method private declared-synchronized searchWithAbsSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 3
    .parameter "sourcePath"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgnu/expr/ModuleManager;->numModules:I

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 117
    iget-object v2, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    aget-object v1, v2, v0

    .line 118
    .local v1, info:Lgnu/expr/ModuleInfo;
    invoke-virtual {v1}, Lgnu/expr/ModuleInfo;->getSourceAbsPathname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 121
    .end local v1           #info:Lgnu/expr/ModuleInfo;
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 115
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    .line 237
    .local v1, set:Lgnu/expr/ModuleSet;
    :goto_0
    if-eqz v1, :cond_0

    .line 239
    iget-object v0, v1, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    .line 240
    .local v0, next:Lgnu/expr/ModuleSet;
    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    .line 241
    move-object v1, v0

    .line 242
    goto :goto_0

    .line 243
    .end local v0           #next:Lgnu/expr/ModuleSet;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    .line 245
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    .line 246
    const/4 v2, 0x0

    iput v2, p0, Lgnu/expr/ModuleManager;->numModules:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 236
    .end local v1           #set:Lgnu/expr/ModuleSet;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;
    .locals 6
    .parameter "comp"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v3

    .line 52
    .local v3, mexp:Lgnu/expr/ModuleExp;
    invoke-virtual {v3, p1}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 53
    .local v0, ctype:Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, fileName:Ljava/lang/String;
    invoke-static {v1}, Lgnu/expr/ModuleInfo;->absPath(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v4

    .line 55
    .local v4, sourceAbsPath:Lgnu/text/Path;
    invoke-virtual {p0, v4, v1}, Lgnu/expr/ModuleManager;->findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v2

    .line 56
    .local v2, info:Lgnu/expr/ModuleInfo;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 57
    iput-object v3, v2, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    .line 58
    iput-object v2, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 59
    iput-object p1, v2, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-object v2

    .line 51
    .end local v0           #ctype:Lgnu/bytecode/ClassType;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #info:Lgnu/expr/ModuleInfo;
    .end local v3           #mexp:Lgnu/expr/ModuleExp;
    .end local v4           #sourceAbsPath:Lgnu/text/Path;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 3
    .parameter "className"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleManager;->searchWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v1

    .line 101
    .local v1, info:Lgnu/expr/ModuleInfo;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 105
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 107
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 109
    .local v0, ex:Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public declared-synchronized findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 3
    .parameter "sourceAbsPath"
    .parameter "sourcePath"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, sourceAbsPathname:Ljava/lang/String;
    invoke-direct {p0, v1}, Lgnu/expr/ModuleManager;->searchWithAbsSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    .line 129
    .local v0, info:Lgnu/expr/ModuleInfo;
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lgnu/expr/ModuleInfo;

    .end local v0           #info:Lgnu/expr/ModuleInfo;
    invoke-direct {v0}, Lgnu/expr/ModuleInfo;-><init>()V

    .line 132
    .restart local v0       #info:Lgnu/expr/ModuleInfo;
    iput-object p2, v0, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 133
    iput-object p1, v0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 134
    iput-object v1, v0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 135
    invoke-direct {p0, v0}, Lgnu/expr/ModuleManager;->add(Lgnu/expr/ModuleInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    monitor-exit p0

    return-object v0

    .line 127
    .end local v0           #info:Lgnu/expr/ModuleInfo;
    .end local v1           #sourceAbsPathname:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 1
    .parameter "sourcePath"

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lgnu/expr/ModuleInfo;->absPath(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/expr/ModuleManager;->findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findWithURL(Ljava/net/URL;)Lgnu/expr/ModuleInfo;
    .locals 3
    .parameter "url"

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v0

    .line 148
    .local v0, sourceAbsPath:Lgnu/text/Path;
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, sourcePath:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lgnu/expr/ModuleManager;->findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 147
    .end local v0           #sourceAbsPath:Lgnu/text/Path;
    .end local v1           #sourcePath:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCompilationDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lgnu/expr/ModuleManager;->compilationDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getModule(I)Lgnu/expr/ModuleInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgnu/expr/ModuleManager;->numModules:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadPackageInfo(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$ModulesMap$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, moduleSetClassName:Ljava/lang/String;
    iget-object v2, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    .local v2, set:Lgnu/expr/ModuleSet;
    :goto_0
    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, setName:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    :cond_0
    iget-object v2, v2, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    goto :goto_0

    .line 219
    .end local v4           #setName:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 220
    .local v3, setClass:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/ModuleSet;

    .line 222
    .local v0, instance:Lgnu/expr/ModuleSet;
    iget-object v5, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    iput-object v5, v0, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    .line 225
    iput-object v0, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    .line 226
    invoke-virtual {v0, p0}, Lgnu/expr/ModuleSet;->register(Lgnu/expr/ModuleManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 211
    .end local v0           #instance:Lgnu/expr/ModuleSet;
    .end local v1           #moduleSetClassName:Ljava/lang/String;
    .end local v2           #set:Lgnu/expr/ModuleSet;
    .end local v3           #setClass:Ljava/lang/Class;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "moduleClass"
    .parameter "moduleSource"
    .parameter "moduleUri"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleManager;->searchWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_1

    .line 201
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :cond_1
    :try_start_1
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v7

    .line 168
    .local v7, sourcePath:Lgnu/text/Path;
    invoke-virtual {v7}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v5

    .line 169
    .local v5, sourceAbsPath:Lgnu/text/Path;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, sourceAbsPathname:Ljava/lang/String;
    invoke-direct {p0, v6}, Lgnu/expr/ModuleManager;->searchWithAbsSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v8

    if-nez v8, :cond_0

    .line 172
    new-instance v1, Lgnu/expr/ModuleInfo;

    invoke-direct {v1}, Lgnu/expr/ModuleInfo;-><init>()V

    .line 173
    .local v1, info:Lgnu/expr/ModuleInfo;
    invoke-virtual {v7}, Lgnu/text/Path;->isAbsolute()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 175
    iput-object v7, v1, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 176
    iput-object v6, v1, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 197
    :goto_1
    invoke-virtual {v1, p1}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 198
    iput-object p2, v1, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 199
    iput-object p3, v1, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    .line 200
    invoke-direct {p0, v1}, Lgnu/expr/ModuleManager;->add(Lgnu/expr/ModuleInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    .end local v1           #info:Lgnu/expr/ModuleInfo;
    .end local v5           #sourceAbsPath:Lgnu/text/Path;
    .end local v6           #sourceAbsPathname:Ljava/lang/String;
    .end local v7           #sourcePath:Lgnu/text/Path;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 184
    .restart local v1       #info:Lgnu/expr/ModuleInfo;
    .restart local v5       #sourceAbsPath:Lgnu/text/Path;
    .restart local v6       #sourceAbsPathname:Ljava/lang/String;
    .restart local v7       #sourcePath:Lgnu/text/Path;
    :cond_2
    :try_start_2
    iget-object v8, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 185
    .local v2, setClass:Ljava/lang/Class;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    const/16 v11, 0x2f

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, setClassName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 188
    .local v4, setClassURL:Ljava/net/URL;
    invoke-static {v4}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v8

    invoke-virtual {v8, p2}, Lgnu/text/URLPath;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v5

    .line 189
    iput-object v5, v1, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 190
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 192
    .end local v2           #setClass:Ljava/lang/Class;
    .end local v3           #setClassName:Ljava/lang/String;
    .end local v4           #setClassURL:Ljava/net/URL;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 194
    .local v0, ex:Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public declared-synchronized searchWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 3
    .parameter "className"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgnu/expr/ModuleManager;->numModules:I

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 80
    iget-object v2, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    aget-object v1, v2, v0

    .line 81
    .local v1, info:Lgnu/expr/ModuleInfo;
    invoke-virtual {v1}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 84
    .end local v1           #info:Lgnu/expr/ModuleInfo;
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setCompilationDirectory(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 18
    const-string p1, ""

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 20
    .local v0, plen:I
    if-lez v0, :cond_1

    .line 22
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 23
    .local v1, sep:C
    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    .end local v1           #sep:C
    :cond_1
    iput-object p1, p0, Lgnu/expr/ModuleManager;->compilationDirectory:Ljava/lang/String;

    .line 27
    return-void
.end method
