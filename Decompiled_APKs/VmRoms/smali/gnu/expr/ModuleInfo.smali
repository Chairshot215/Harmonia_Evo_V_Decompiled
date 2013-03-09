.class public Lgnu/expr/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/expr/ModuleInfo$ClassToInfoMap;
    }
.end annotation


# static fields
.field static mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;


# instance fields
.field private className:Ljava/lang/String;

.field comp:Lgnu/expr/Compilation;

.field dependencies:[Lgnu/expr/ModuleInfo;

.field exp:Lgnu/expr/ModuleExp;

.field public lastCheckedTime:J

.field public lastModifiedTime:J

.field moduleClass:Ljava/lang/Class;

.field numDependencies:I

.field sourceAbsPath:Lgnu/text/Path;

.field sourceAbsPathname:Ljava/lang/String;

.field public sourcePath:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lgnu/expr/ModuleInfo$ClassToInfoMap;

    invoke-direct {v0}, Lgnu/expr/ModuleInfo$ClassToInfoMap;-><init>()V

    sput-object v0, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method

.method public static absPath(Ljava/lang/String;)Lgnu/text/Path;
    .locals 1
    .parameter "path"

    .prologue
    .line 59
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public static find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;
    .locals 2
    .parameter "type"

    .prologue
    .line 244
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 250
    :catch_0
    move-exception v0

    .line 254
    :cond_0
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;
    .locals 1
    .parameter "instance"

    .prologue
    .line 239
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    return-object v0
.end method

.method static makeDeclInModule2(Lgnu/expr/ModuleExp;Lgnu/expr/Declaration;)V
    .locals 10
    .parameter "mod"
    .parameter "fdecl"

    .prologue
    const/4 v9, 0x1

    .line 277
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v3

    .line 278
    .local v3, fvalue:Ljava/lang/Object;
    instance-of v8, v3, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v8, :cond_2

    .line 280
    move-object v0, v3

    check-cast v0, Lgnu/kawa/reflect/FieldLocation;

    move-object v1, v0

    .line 281
    .local v1, floc:Lgnu/kawa/reflect/FieldLocation;
    invoke-virtual {v1}, Lgnu/kawa/reflect/FieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v4

    .line 282
    .local v4, vdecl:Lgnu/expr/Declaration;
    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 283
    .local v2, fref:Lgnu/expr/ReferenceExp;
    invoke-virtual {p1, v9}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 284
    invoke-virtual {v2, v9}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 285
    invoke-virtual {p1, v2}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 286
    invoke-virtual {v4}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 287
    invoke-virtual {p1, v9}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 288
    :cond_0
    const-wide/32 v8, 0x8000

    invoke-virtual {v4, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 289
    invoke-virtual {p1}, Lgnu/expr/Declaration;->setSyntax()V

    .line 290
    :cond_1
    const-wide/16 v8, 0x800

    invoke-virtual {p1, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 292
    invoke-virtual {v1}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 293
    .local v6, vtype:Lgnu/bytecode/ClassType;
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, vname:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 295
    .local v7, xdecl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v7, :cond_2

    .line 297
    invoke-virtual {v7}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-wide/32 v8, 0x40000000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 300
    invoke-virtual {v2, v7}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 306
    .end local v1           #floc:Lgnu/kawa/reflect/FieldLocation;
    .end local v2           #fref:Lgnu/expr/ReferenceExp;
    .end local v4           #vdecl:Lgnu/expr/Declaration;
    .end local v5           #vname:Ljava/lang/String;
    .end local v6           #vtype:Lgnu/bytecode/ClassType;
    .end local v7           #xdecl:Lgnu/expr/Declaration;
    :cond_2
    return-void

    .line 295
    .restart local v1       #floc:Lgnu/kawa/reflect/FieldLocation;
    .restart local v2       #fref:Lgnu/expr/ReferenceExp;
    .restart local v4       #vdecl:Lgnu/expr/Declaration;
    .restart local v5       #vname:Ljava/lang/String;
    .restart local v6       #vtype:Lgnu/bytecode/ClassType;
    .restart local v7       #xdecl:Lgnu/expr/Declaration;
    :cond_3
    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    goto :goto_0
.end method

.method public static register(Ljava/lang/Object;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 259
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V

    .line 260
    return-void
.end method


# virtual methods
.method public declared-synchronized addDependency(Lgnu/expr/ModuleInfo;)V
    .locals 5
    .parameter "dep"

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    if-nez v1, :cond_1

    .line 105
    const/16 v1, 0x8

    new-array v1, v1, [Lgnu/expr/ModuleInfo;

    iput-object v1, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    .line 112
    :cond_0
    :goto_0
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    iget v2, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    aput-object p1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 106
    :cond_1
    :try_start_1
    iget v1, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    iget-object v2, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 108
    iget v1, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lgnu/expr/ModuleInfo;

    .line 109
    .local v0, deps:[Lgnu/expr/ModuleInfo;
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    .end local v0           #deps:[Lgnu/expr/ModuleInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkCurrent(Lgnu/expr/ModuleManager;J)Z
    .locals 18
    .parameter "manager"
    .parameter "now"

    .prologue
    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    move-object v14, v0

    if-nez v14, :cond_0

    .line 379
    const/4 v14, 0x1

    .line 439
    :goto_0
    return v14

    .line 380
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lgnu/expr/ModuleInfo;->lastCheckedTime:J

    move-wide v14, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lgnu/expr/ModuleManager;->lastModifiedCacheTime:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    cmp-long v14, v14, p2

    if-ltz v14, :cond_2

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    move-object v14, v0

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 382
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    move-object v14, v0

    invoke-virtual {v14}, Lgnu/text/Path;->getLastModified()J

    move-result-wide v9

    .line 383
    .local v9, lastModifiedTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lgnu/expr/ModuleInfo;->lastModifiedTime:J

    move-wide v11, v0

    .line 384
    .local v11, oldModifiedTime:J
    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lgnu/expr/ModuleInfo;->lastModifiedTime:J

    .line 385
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lgnu/expr/ModuleInfo;->lastCheckedTime:J

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    move-object v14, v0

    if-nez v14, :cond_3

    .line 387
    const/4 v14, 0x0

    goto :goto_0

    .line 388
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    move-object v14, v0

    if-nez v14, :cond_4

    .line 392
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_4
    const-wide/16 v14, 0x0

    cmp-long v14, v11, v14

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    move-object v14, v0

    if-eqz v14, :cond_7

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    move-object v4, v0

    .line 402
    .local v4, classFilename:Ljava/lang/String;
    const/16 v14, 0x2e

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 403
    .local v6, dot:I
    if-ltz v6, :cond_5

    .line 404
    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 405
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".class"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    move-object v14, v0

    invoke-virtual {v14, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    .line 407
    .local v13, resource:Ljava/net/URL;
    if-eqz v13, :cond_6

    .line 411
    :try_start_1
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URLConnection;->getLastModified()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v11

    .line 418
    :cond_6
    :goto_1
    if-nez v13, :cond_7

    .line 422
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 394
    .end local v4           #classFilename:Ljava/lang/String;
    .end local v6           #dot:I
    .end local v13           #resource:Ljava/net/URL;
    :catch_0
    move-exception v14

    move-object v7, v14

    .line 396
    .local v7, ex:Ljava/lang/ClassNotFoundException;
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 413
    .end local v7           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v4       #classFilename:Ljava/lang/String;
    .restart local v6       #dot:I
    .restart local v13       #resource:Ljava/net/URL;
    :catch_1
    move-exception v14

    move-object v7, v14

    .line 415
    .local v7, ex:Ljava/io/IOException;
    const/4 v13, 0x0

    goto :goto_1

    .line 425
    .end local v4           #classFilename:Ljava/lang/String;
    .end local v6           #dot:I
    .end local v7           #ex:Ljava/io/IOException;
    .end local v13           #resource:Ljava/net/URL;
    :cond_7
    cmp-long v14, v9, v11

    if-lez v14, :cond_8

    .line 427
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 428
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 430
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/ModuleInfo;->numDependencies:I

    move v8, v0

    .local v8, i:I
    :cond_9
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_a

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    move-object v14, v0

    aget-object v5, v14, v8

    .line 433
    .local v5, dep:Lgnu/expr/ModuleInfo;
    iget-object v14, v5, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v14, :cond_9

    move-object v0, v5

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v14

    if-nez v14, :cond_9

    .line 435
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 436
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 439
    .end local v5           #dep:Lgnu/expr/ModuleInfo;
    :cond_a
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public cleanupAfterCompilation()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->cleanupAfterCompilation()V

    .line 55
    :cond_0
    return-void
.end method

.method public clearClass()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    iput-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 368
    iput-object v1, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    .line 369
    return-void
.end method

.method public declared-synchronized getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 130
    :cond_1
    :try_start_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClassType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-object v0

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCompilation()Lgnu/expr/Compilation;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getModuleClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .local v0, mclass:Ljava/lang/Class;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 222
    .end local v0           #mclass:Ljava/lang/Class;
    .local v1, mclass:Ljava/lang/Class;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 220
    .end local v1           #mclass:Ljava/lang/Class;
    .restart local v0       #mclass:Ljava/lang/Class;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v2}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 222
    .end local v0           #mclass:Ljava/lang/Class;
    .restart local v1       #mclass:Ljava/lang/Class;
    goto :goto_0

    .line 217
    .end local v1           #mclass:Ljava/lang/Class;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getModuleClassRaw()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    return-object v0
.end method

.method public declared-synchronized getModuleExp()Lgnu/expr/ModuleExp;
    .locals 4

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    .line 144
    .local v1, m:Lgnu/expr/ModuleExp;
    if-nez v1, :cond_1

    .line 146
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :goto_0
    monitor-exit p0

    return-object v2

    .line 148
    :cond_0
    :try_start_1
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 149
    .local v0, ctype:Lgnu/bytecode/ClassType;
    new-instance v1, Lgnu/expr/ModuleExp;

    .end local v1           #m:Lgnu/expr/ModuleExp;
    invoke-direct {v1}, Lgnu/expr/ModuleExp;-><init>()V

    .line 150
    .restart local v1       #m:Lgnu/expr/ModuleExp;
    iput-object v0, v1, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 151
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 152
    iget v2, v1, Lgnu/expr/ModuleExp;->flags:I

    const/high16 v3, 0x8

    or-int/2addr v2, v3

    iput v2, v1, Lgnu/expr/ModuleExp;->flags:I

    .line 153
    iput-object p0, v1, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    .line 154
    iput-object v1, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0           #ctype:Lgnu/bytecode/ClassType;
    :cond_1
    move-object v2, v1

    .line 156
    goto :goto_0

    .line 143
    .end local v1           #m:Lgnu/expr/ModuleExp;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getRunInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, inst:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 271
    move-object v0, v1

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 272
    :cond_0
    return-object v1
.end method

.method public getSourceAbsPath()Lgnu/text/Path;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    return-object v0
.end method

.method public getSourceAbsPathname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 94
    .local v0, str:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 99
    :cond_0
    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v0, :cond_0

    const/16 v0, 0xe

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->getState()I

    move-result v0

    goto :goto_0
.end method

.method public loadByStages(I)V
    .locals 6
    .parameter "wantedState"

    .prologue
    .line 312
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v3

    .line 313
    .local v3, state:I
    add-int/lit8 v4, v3, 0x1

    if-lt v4, p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const/4 v4, 0x2

    sub-int v4, p1, v4

    invoke-virtual {p0, v4}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 316
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v3

    .line 317
    if-ge v3, p1, :cond_0

    .line 319
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 320
    iget v2, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 321
    .local v2, ndeps:I
    const/4 v1, 0x0

    .local v1, idep:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 323
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v0, v4, v1

    .line 324
    .local v0, dep:Lgnu/expr/ModuleInfo;
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 326
    .end local v0           #dep:Lgnu/expr/ModuleInfo;
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v3

    .line 327
    if-ge v3, p1, :cond_0

    .line 329
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    and-int/lit8 v5, v3, -0x2

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 330
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, p1}, Lgnu/expr/Compilation;->process(I)V

    goto :goto_0
.end method

.method public loadEager(I)Z
    .locals 8
    .parameter "wantedState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 339
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v4, :cond_0

    iget-object v4, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-eqz v4, :cond_0

    move v4, v6

    .line 361
    :goto_0
    return v4

    .line 341
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v3

    .line 342
    .local v3, state:I
    if-lt v3, p1, :cond_1

    move v4, v7

    .line 343
    goto :goto_0

    .line 344
    :cond_1
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    move v4, v6

    .line 345
    goto :goto_0

    .line 346
    :cond_2
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 347
    iget v2, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 348
    .local v2, ndeps:I
    const/4 v1, 0x0

    .local v1, idep:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 350
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v0, v4, v1

    .line 351
    .local v0, dep:Lgnu/expr/ModuleInfo;
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleInfo;->loadEager(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 353
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-ne v4, v5, :cond_3

    .line 354
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, v3}, Lgnu/expr/Compilation;->setState(I)V

    :cond_3
    move v4, v6

    .line 355
    goto :goto_0

    .line 348
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 358
    .end local v0           #dep:Lgnu/expr/ModuleInfo;
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-ne v4, v5, :cond_6

    .line 359
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 360
    :cond_6
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, p1}, Lgnu/expr/Compilation;->process(I)V

    .line 361
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v4

    if-ne v4, p1, :cond_7

    move v4, v7

    goto :goto_0

    :cond_7
    move v4, v6

    goto :goto_0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 138
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setCompilation(Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "comp"

    .prologue
    .line 38
    iput-object p0, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 39
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .line 40
    iget-object v2, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 41
    .local v2, mod:Lgnu/expr/ModuleExp;
    iput-object v2, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    .line 42
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, fileName:Ljava/lang/String;
    iput-object v1, p0, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 46
    invoke-static {v1}, Lgnu/expr/ModuleInfo;->absPath(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    .line 47
    .local v0, abs:Lgnu/text/Path;
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 49
    .end local v0           #abs:Lgnu/text/Path;
    .end local v1           #fileName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setModuleClass(Ljava/lang/Class;)V
    .locals 1
    .parameter "clas"

    .prologue
    .line 232
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 233
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 234
    sget-object v0, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;

    invoke-virtual {v0, p1, p0}, Lgnu/expr/ModuleInfo$ClassToInfoMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public setNamespaceUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 28
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-void
.end method

.method public setSourceAbsPath(Lgnu/text/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 87
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public declared-synchronized setupModuleExp()Lgnu/expr/ModuleExp;
    .locals 12

    .prologue
    const/high16 v11, 0x8

    .line 162
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v7

    .line 163
    .local v7, mod:Lgnu/expr/ModuleExp;
    iget v10, v7, Lgnu/expr/ModuleExp;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v10, v11

    if-nez v10, :cond_1

    .line 211
    :cond_0
    monitor-exit p0

    return-object v7

    .line 165
    :cond_1
    const/4 v10, 0x0

    const/high16 v11, 0x8

    :try_start_1
    invoke-virtual {v7, v10, v11}, Lgnu/expr/ModuleExp;->setFlag(ZI)V

    .line 168
    iget-object v10, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v10, :cond_2

    .line 170
    iget-object v8, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 171
    .local v8, rclass:Ljava/lang/Class;
    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v9

    check-cast v9, Lgnu/bytecode/ClassType;

    .line 178
    .local v9, type:Lgnu/bytecode/ClassType;
    :goto_0
    const/4 v5, 0x0

    .line 180
    .local v5, instance:Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    .line 181
    .local v6, language:Lgnu/expr/Language;
    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v3

    .local v3, fld:Lgnu/bytecode/Field;
    move-object v10, v5

    .end local v5           #instance:Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_7

    .line 183
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getFlags()I

    move-result v2

    .line 184
    .local v2, flags:I
    and-int/lit8 v11, v2, 0x1

    if-nez v11, :cond_3

    .line 181
    :goto_2
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v3

    goto :goto_1

    .line 175
    .end local v2           #flags:I
    .end local v3           #fld:Lgnu/bytecode/Field;
    .end local v6           #language:Lgnu/expr/Language;
    .end local v8           #rclass:Ljava/lang/Class;
    .end local v9           #type:Lgnu/bytecode/ClassType;
    :cond_2
    iget-object v10, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v10}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v9

    .line 176
    .restart local v9       #type:Lgnu/bytecode/ClassType;
    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .restart local v8       #rclass:Ljava/lang/Class;
    goto :goto_0

    .line 188
    .restart local v2       #flags:I
    .restart local v3       #fld:Lgnu/bytecode/Field;
    .restart local v6       #language:Lgnu/expr/Language;
    :cond_3
    and-int/lit8 v11, v2, 0x8

    if-nez v11, :cond_4

    if-nez v10, :cond_4

    .line 189
    :try_start_2
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #instance:Ljava/lang/Object;
    move-object v10, v5

    .line 190
    .end local v5           #instance:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 192
    .local v4, fvalue:Ljava/lang/Object;
    invoke-virtual {v6, v7, v4, v3}, Lgnu/expr/Language;->declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 193
    .local v1, fdecl:Lgnu/expr/Declaration;
    and-int/lit8 v11, v2, 0x10

    if-eqz v11, :cond_6

    instance-of v11, v4, Lgnu/mapping/Location;

    if-eqz v11, :cond_5

    instance-of v11, v4, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v11, :cond_6

    .line 196
    :cond_5
    new-instance v11, Lgnu/expr/QuoteExp;

    invoke-direct {v11, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v11}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 200
    .end local v1           #fdecl:Lgnu/expr/Declaration;
    .end local v4           #fvalue:Ljava/lang/Object;
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 202
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    new-instance v10, Lgnu/mapping/WrappedException;

    invoke-direct {v10, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #flags:I
    .end local v3           #fld:Lgnu/bytecode/Field;
    .end local v6           #language:Lgnu/expr/Language;
    .end local v7           #mod:Lgnu/expr/ModuleExp;
    .end local v8           #rclass:Ljava/lang/Class;
    .end local v9           #type:Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 198
    .restart local v1       #fdecl:Lgnu/expr/Declaration;
    .restart local v2       #flags:I
    .restart local v3       #fld:Lgnu/bytecode/Field;
    .restart local v4       #fvalue:Ljava/lang/Object;
    .restart local v6       #language:Lgnu/expr/Language;
    .restart local v7       #mod:Lgnu/expr/ModuleExp;
    .restart local v8       #rclass:Ljava/lang/Class;
    .restart local v9       #type:Lgnu/bytecode/ClassType;
    :cond_6
    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v1, v11}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 206
    .end local v1           #fdecl:Lgnu/expr/Declaration;
    .end local v2           #flags:I
    .end local v4           #fvalue:Ljava/lang/Object;
    :cond_7
    :try_start_5
    invoke-virtual {v7}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 207
    .restart local v1       #fdecl:Lgnu/expr/Declaration;
    :goto_3
    if-eqz v1, :cond_0

    .line 209
    invoke-static {v7, v1}, Lgnu/expr/ModuleInfo;->makeDeclInModule2(Lgnu/expr/ModuleExp;Lgnu/expr/Declaration;)V

    .line 207
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 445
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "ModuleInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 448
    const-string v1, "class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 456
    :cond_0
    :goto_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 451
    :cond_1
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 453
    const-string v1, "class-name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
