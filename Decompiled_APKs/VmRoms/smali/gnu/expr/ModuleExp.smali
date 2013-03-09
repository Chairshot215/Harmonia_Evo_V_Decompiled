.class public Lgnu/expr/ModuleExp;
.super Lgnu/expr/LambdaExp;
.source "ModuleExp.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final EXPORT_SPECIFIED:I = 0x4000

.field public static final IMMEDIATE:I = 0x100000

.field public static final LAZY_DECLARATIONS:I = 0x80000

.field public static final NONSTATIC_SPECIFIED:I = 0x10000

.field public static final STATIC_RUN_SPECIFIED:I = 0x40000

.field public static final STATIC_SPECIFIED:I = 0x8000

.field public static final SUPERTYPE_SPECIFIED:I = 0x20000

.field public static alwaysCompile:Z

.field public static compilerAvailable:Z

.field public static dumpZipPrefix:Ljava/lang/String;

.field public static interactiveCounter:I

.field static lastZipCounter:I

.field public static neverCompile:Z


# instance fields
.field info:Lgnu/expr/ModuleInfo;

.field interfaces:[Lgnu/bytecode/ClassType;

.field superType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    .line 173
    sget-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 177
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lgnu/expr/LambdaExp;-><init>()V

    .line 28
    return-void
.end method

.method public static final evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z
    .locals 4
    .parameter "env"
    .parameter "ctx"
    .parameter "comp"
    .parameter "url"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    .line 197
    .local v2, mexp:Lgnu/expr/ModuleExp;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 198
    .local v1, language:Lgnu/expr/Language;
    invoke-static {p0, p2, p3, p4}, Lgnu/expr/ModuleExp;->evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, inst:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 200
    const/4 v3, 0x0

    .line 202
    :goto_0
    return v3

    .line 201
    :cond_0
    invoke-static {p0, p1, v1, v2, v0}, Lgnu/expr/ModuleExp;->evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V

    .line 202
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static final evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;
    .locals 11
    .parameter "env"
    .parameter "comp"
    .parameter "url"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 214
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v3

    .line 215
    .local v3, mexp:Lgnu/expr/ModuleExp;
    iget-object v8, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iput-object v8, v3, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    .line 216
    invoke-static {p0}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v5

    .line 217
    .local v5, orig_env:Lgnu/mapping/Environment;
    invoke-static {p1}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v4

    .line 218
    .local v4, orig_comp:Lgnu/expr/Compilation;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    .line 219
    .local v2, messages:Lgnu/text/SourceMessages;
    const/4 v6, 0x0

    .line 220
    .local v6, savedLoader:Ljava/lang/ClassLoader;
    const/4 v7, 0x0

    .line 227
    .local v7, thread:Ljava/lang/Thread;
    sget-boolean v8, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    if-eqz v8, :cond_0

    sget-boolean v8, Lgnu/expr/ModuleExp;->neverCompile:Z

    if-eqz v8, :cond_0

    .line 229
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "alwaysCompile and neverCompile are both true!"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 231
    :cond_0
    sget-boolean v8, Lgnu/expr/ModuleExp;->neverCompile:Z

    if-eqz v8, :cond_1

    .line 232
    iput-boolean v9, p1, Lgnu/expr/Compilation;->mustCompile:Z

    .line 237
    :cond_1
    const/4 v8, 0x6

    :try_start_0
    invoke-virtual {p1, v8}, Lgnu/expr/Compilation;->process(I)V

    .line 238
    iget-object v8, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 240
    if-eqz p3, :cond_5

    const/16 v8, 0x14

    invoke-virtual {v2, p3, v8}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_6

    .line 285
    :cond_2
    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_3

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_3
    move-object v8, v10

    :cond_4
    :goto_0
    return-object v8

    .line 240
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v8

    if-nez v8, :cond_2

    .line 247
    :cond_6
    iget-boolean v8, p1, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v8, :cond_8

    .line 250
    sget-boolean v8, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    if-eqz v8, :cond_7

    if-eqz p3, :cond_7

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Evaluating final module \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3, p3}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 254
    const/16 v8, 0x5d

    invoke-virtual {p3, v8}, Lgnu/mapping/OutPort;->println(C)V

    .line 255
    invoke-virtual {p3}, Lgnu/mapping/OutPort;->flush()V

    .line 257
    :cond_7
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_4

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 261
    :cond_8
    :try_start_2
    invoke-static {p1, p2}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 262
    .local v0, clas:Ljava/lang/Class;
    if-nez v0, :cond_a

    .line 285
    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_9

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_9
    move-object v8, v10

    goto :goto_0

    .line 266
    :cond_a
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 267
    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 268
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 275
    :goto_1
    const/4 v8, 0x0

    :try_start_4
    iput-object v8, v3, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 276
    const/4 v8, 0x0

    iput-object v8, v3, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    .line 277
    if-eqz p3, :cond_c

    const/16 v8, 0x14

    invoke-virtual {v2, p3, v8}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 279
    :cond_b
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 285
    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_4

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto/16 :goto_0

    .line 270
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 272
    .local v1, ex:Ljava/lang/Throwable;
    const/4 v7, 0x0

    goto :goto_1

    .line 277
    .end local v1           #ex:Ljava/lang/Throwable;
    :cond_c
    :try_start_5
    invoke-virtual {v2}, Lgnu/text/SourceMessages;->seenErrors()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v8

    if-nez v8, :cond_b

    .line 285
    :cond_d
    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_e

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_e
    move-object v8, v0

    goto/16 :goto_0

    .line 285
    .end local v0           #clas:Ljava/lang/Class;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v7, :cond_f

    .line 288
    invoke-virtual {v7, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_f
    throw v8
.end method

.method public static final evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V
    .locals 9
    .parameter "env"
    .parameter "ctx"
    .parameter "language"
    .parameter "mexp"
    .parameter "inst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {p0}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v3

    .line 298
    .local v3, orig_env:Lgnu/mapping/Environment;
    const/4 v5, 0x0

    .line 299
    .local v5, savedLoader:Ljava/lang/ClassLoader;
    const/4 v7, 0x0

    .line 302
    .local v7, thread:Ljava/lang/Thread;
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p4, v1, :cond_2

    .line 304
    iget-object p0, p3, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .end local p0
    invoke-virtual {p0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 383
    .end local p3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-static {v3}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 388
    if-eqz v7, :cond_1

    .line 389
    invoke-virtual {v7, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 391
    :cond_1
    return-void

    .line 308
    .restart local p0
    .restart local p3
    :cond_2
    :try_start_1
    instance-of v1, p4, Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 309
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v2

    move-object v0, p4

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v2, v1}, Lgnu/expr/ModuleContext;->findInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    .line 311
    :cond_3
    instance-of v1, p4, Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 313
    instance-of v1, p4, Lgnu/expr/ModuleBody;

    if-eqz v1, :cond_6

    .line 315
    move-object v0, p4

    check-cast v0, Lgnu/expr/ModuleBody;

    move-object v1, v0

    .line 316
    .local v1, mb:Lgnu/expr/ModuleBody;
    iget-boolean v2, v1, Lgnu/expr/ModuleBody;->runDone:Z

    if-nez v2, :cond_4

    .line 318
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/expr/ModuleBody;->runDone:Z

    .line 319
    invoke-virtual {v1, p1}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 326
    .end local v1           #mb:Lgnu/expr/ModuleBody;
    :cond_4
    :goto_1
    if-nez p3, :cond_7

    .line 327
    invoke-static {p4, p2, p0}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    .end local p0
    .end local p3
    :catchall_0
    move-exception p0

    invoke-static {v3}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 388
    if-eqz v7, :cond_5

    .line 389
    invoke-virtual {v7, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_5
    throw p0

    .line 323
    .restart local p0
    .restart local p3
    :cond_6
    :try_start_2
    move-object v0, p4

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 331
    :cond_7
    invoke-virtual {p3}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p3

    .line 332
    .local p3, decl:Lgnu/expr/Declaration;
    :goto_2
    if-eqz p3, :cond_0

    .line 334
    invoke-virtual {p3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 335
    .local v1, dname:Ljava/lang/Object;
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v2

    if-nez v2, :cond_8

    if-nez v1, :cond_9

    .line 332
    .end local v1           #dname:Ljava/lang/Object;
    :cond_8
    :goto_3
    invoke-virtual {p3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p3

    goto :goto_2

    .line 337
    .restart local v1       #dname:Ljava/lang/Object;
    :cond_9
    iget-object v2, p3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 338
    .local v2, fld:Lgnu/bytecode/Field;
    instance-of v4, v1, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_a

    check-cast v1, Lgnu/mapping/Symbol;

    .end local v1           #dname:Ljava/lang/Object;
    move-object v6, v1

    .line 340
    .local v6, sym:Lgnu/mapping/Symbol;
    :goto_4
    invoke-virtual {p2, p3}, Lgnu/expr/Language;->getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;

    move-result-object v4

    .line 341
    .local v4, property:Ljava/lang/Object;
    invoke-virtual {p3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 346
    .local v1, dvalue:Lgnu/expr/Expression;
    iget-object v8, p3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v8}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_10

    .line 349
    instance-of v2, v1, Lgnu/expr/QuoteExp;

    .end local v2           #fld:Lgnu/bytecode/Field;
    if-eqz v2, :cond_b

    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v1, v2, :cond_b

    .line 351
    check-cast v1, Lgnu/expr/QuoteExp;

    .end local v1           #dvalue:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 360
    .local v1, value:Ljava/lang/Object;
    :goto_5
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 361
    check-cast v1, Lgnu/mapping/Location;

    .end local v1           #value:Ljava/lang/Object;
    invoke-virtual {p0, v6, v4, v1}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    goto :goto_3

    .line 338
    .end local v4           #property:Ljava/lang/Object;
    .end local v6           #sym:Lgnu/mapping/Symbol;
    .local v1, dname:Ljava/lang/Object;
    .restart local v2       #fld:Lgnu/bytecode/Field;
    :cond_a
    const-string v4, ""

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #dname:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v6, v1

    goto :goto_4

    .line 354
    .end local v2           #fld:Lgnu/bytecode/Field;
    .local v1, dvalue:Lgnu/expr/Expression;
    .restart local v4       #property:Ljava/lang/Object;
    .restart local v6       #sym:Lgnu/mapping/Symbol;
    :cond_b
    iget-object v2, p3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 355
    .local v2, value:Ljava/lang/Object;
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v8

    if-nez v8, :cond_c

    .line 356
    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    .end local v1           #dvalue:Lgnu/expr/Expression;
    invoke-virtual {p3, v1}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    move-object v1, v2

    .end local v2           #value:Ljava/lang/Object;
    .local v1, value:Ljava/lang/Object;
    goto :goto_5

    .line 357
    .local v1, dvalue:Lgnu/expr/Expression;
    .restart local v2       #value:Ljava/lang/Object;
    :cond_c
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v8

    if-eqz v8, :cond_d

    instance-of v1, v1, Lgnu/expr/ReferenceExp;

    .end local v1           #dvalue:Lgnu/expr/Expression;
    if-nez v1, :cond_e

    .line 358
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    :cond_e
    move-object v1, v2

    .end local v2           #value:Ljava/lang/Object;
    .local v1, value:Ljava/lang/Object;
    goto :goto_5

    .line 363
    :cond_f
    invoke-virtual {p0, v6, v4, v1}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 367
    .local v1, dvalue:Lgnu/expr/Expression;
    .local v2, fld:Lgnu/bytecode/Field;
    :cond_10
    new-instance v1, Lgnu/kawa/reflect/StaticFieldLocation;

    .end local v1           #dvalue:Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .end local v2           #fld:Lgnu/bytecode/Field;
    invoke-direct {v1, v8, v2}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 370
    .local v1, loc:Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v1, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 371
    invoke-virtual {p0, v6, v4, v1}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 372
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public static evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;
    .locals 9
    .parameter "comp"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 51
    .local v0, mexp:Lgnu/expr/ModuleExp;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    .line 55
    .local v6, messages:Lgnu/text/SourceMessages;
    :try_start_0
    iget-object v0, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .end local v0           #mexp:Lgnu/expr/ModuleExp;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 57
    invoke-virtual {v6}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 p0, 0x0

    .line 148
    .end local p0
    :goto_0
    return-object p0

    .line 60
    .restart local p0
    :cond_0
    iget-object v5, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    .line 61
    .local v5, loader:Lgnu/bytecode/ArrayClassLoader;
    if-nez p1, :cond_1

    .line 62
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object p1

    .line 63
    :cond_1
    invoke-virtual {v5, p1}, Lgnu/bytecode/ArrayClassLoader;->setResourceContext(Ljava/net/URL;)V

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, zout:Ljava/util/zip/ZipOutputStream;
    sget-object v1, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 68
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v0, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    .end local v0           #zout:Ljava/util/zip/ZipOutputStream;
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, zipname:Ljava/lang/StringBuffer;
    sget v0, Lgnu/expr/ModuleExp;->lastZipCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 71
    sget v0, Lgnu/expr/ModuleExp;->interactiveCounter:I

    sget v2, Lgnu/expr/ModuleExp;->lastZipCounter:I

    if-le v0, v2, :cond_2

    .line 72
    sget v0, Lgnu/expr/ModuleExp;->interactiveCounter:I

    sput v0, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 73
    :cond_2
    sget v0, Lgnu/expr/ModuleExp;->lastZipCounter:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    const-string v0, ".zip"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #zipname:Ljava/lang/StringBuffer;
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, zfout:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, zout:Ljava/util/zip/ZipOutputStream;
    move-object v4, v1

    .line 80
    .end local v0           #zfout:Ljava/io/FileOutputStream;
    .end local v1           #zout:Ljava/util/zip/ZipOutputStream;
    .local v4, zout:Ljava/util/zip/ZipOutputStream;
    :goto_1
    const/4 v0, 0x0

    .local v0, iClass:I
    move v2, v0

    .end local v0           #iClass:I
    .local v2, iClass:I
    :goto_2
    iget v0, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v2, v0, :cond_4

    .line 82
    iget-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v0, v0, v2

    .line 83
    .local v0, clas:Lgnu/bytecode/ClassType;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v0

    .line 85
    .local v0, classBytes:[B
    invoke-virtual {v5, v1, v0}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    .line 87
    if-eqz v4, :cond_3

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .end local v1           #className:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".class"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, clname:Ljava/lang/String;
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, zent:Ljava/util/zip/ZipEntry;
    array-length v1, v0

    .end local v1           #clname:Ljava/lang/String;
    int-to-long v7, v1

    invoke-virtual {v3, v7, v8}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 93
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 94
    .local v1, crc:Ljava/util/zip/CRC32;
    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 95
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 97
    .end local v1           #crc:Ljava/util/zip/CRC32;
    invoke-virtual {v4, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 98
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 80
    .end local v3           #zent:Ljava/util/zip/ZipEntry;
    :cond_3
    add-int/lit8 v0, v2, 0x1

    .end local v2           #iClass:I
    .local v0, iClass:I
    move v2, v0

    .end local v0           #iClass:I
    .restart local v2       #iClass:I
    goto :goto_2

    .line 101
    :cond_4
    if-eqz v4, :cond_5

    .line 103
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 111
    :cond_5
    const/4 v0, 0x0

    .line 115
    .local v0, clas:Ljava/lang/Class;
    move-object v1, v5

    .local v1, context:Lgnu/bytecode/ArrayClassLoader;
    move-object v2, v1

    .line 116
    .end local v1           #context:Lgnu/bytecode/ArrayClassLoader;
    .local v2, context:Lgnu/bytecode/ArrayClassLoader;
    :goto_3
    invoke-virtual {v2}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    instance-of v1, v1, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v1, :cond_6

    .line 117
    invoke-virtual {v2}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ArrayClassLoader;

    .end local v2           #context:Lgnu/bytecode/ArrayClassLoader;
    .restart local v1       #context:Lgnu/bytecode/ArrayClassLoader;
    move-object v2, v1

    .end local v1           #context:Lgnu/bytecode/ArrayClassLoader;
    .restart local v2       #context:Lgnu/bytecode/ArrayClassLoader;
    goto :goto_3

    .line 118
    :cond_6
    const/4 v1, 0x0

    .local v1, iClass:I
    move v4, v1

    .end local v1           #iClass:I
    .local v4, iClass:I
    move-object v1, v0

    .end local v0           #clas:Ljava/lang/Class;
    .local v1, clas:Ljava/lang/Class;
    :goto_4
    iget v0, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v4, v0, :cond_9

    .line 120
    iget-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v3, v0, v4

    .line 121
    .local v3, ctype:Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 122
    .local v0, cclass:Ljava/lang/Class;
    invoke-virtual {v3, v0}, Lgnu/bytecode/ClassType;->setReflectClass(Ljava/lang/Class;)V

    .line 123
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lgnu/bytecode/ClassType;->setExisting(Z)V

    .line 124
    if-nez v4, :cond_7

    .line 125
    move-object v0, v0

    .line 118
    .end local v1           #clas:Ljava/lang/Class;
    .local v0, clas:Ljava/lang/Class;
    :goto_5
    add-int/lit8 v1, v4, 0x1

    .end local v4           #iClass:I
    .local v1, iClass:I
    move v4, v1

    .end local v1           #iClass:I
    .restart local v4       #iClass:I
    move-object v1, v0

    .end local v0           #clas:Ljava/lang/Class;
    .local v1, clas:Ljava/lang/Class;
    goto :goto_4

    .line 130
    .local v0, cclass:Ljava/lang/Class;
    :cond_7
    if-eq v2, v5, :cond_8

    .line 131
    invoke-virtual {v2, v0}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V

    :cond_8
    move-object v0, v1

    .end local v1           #clas:Ljava/lang/Class;
    .local v0, clas:Ljava/lang/Class;
    goto :goto_5

    .line 134
    .end local v0           #clas:Ljava/lang/Class;
    .end local v3           #ctype:Lgnu/bytecode/ClassType;
    .restart local v1       #clas:Ljava/lang/Class;
    :cond_9
    iget-object v4, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 135
    .local v4, minfo:Lgnu/expr/ModuleInfo;
    invoke-virtual {v4, v1}, Lgnu/expr/ModuleInfo;->setModuleClass(Ljava/lang/Class;)V

    .line 136
    invoke-virtual {p0}, Lgnu/expr/Compilation;->cleanupAfterCompilation()V

    .line 137
    iget v5, v4, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 139
    .local v5, ndeps:I
    const/4 v0, 0x0

    .local v0, idep:I
    move v3, v0

    .end local v0           #idep:I
    .end local v2           #context:Lgnu/bytecode/ArrayClassLoader;
    .local v3, idep:I
    :goto_6
    if-ge v3, v5, :cond_b

    .line 141
    iget-object v0, v4, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v2, v0, v3

    .line 142
    .local v2, dep:Lgnu/expr/ModuleInfo;
    invoke-virtual {v2}, Lgnu/expr/ModuleInfo;->getModuleClassRaw()Ljava/lang/Class;

    move-result-object v0

    .line 143
    .local v0, dclass:Ljava/lang/Class;
    if-nez v0, :cond_a

    .line 144
    iget-object v0, v2, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .end local v0           #dclass:Ljava/lang/Class;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;

    .end local v2           #dep:Lgnu/expr/ModuleInfo;
    move-result-object v0

    .line 145
    .restart local v0       #dclass:Ljava/lang/Class;
    :cond_a
    iget-object v2, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    invoke-virtual {v2, v0}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    add-int/lit8 v0, v3, 0x1

    .end local v3           #idep:I
    .local v0, idep:I
    move v3, v0

    .end local v0           #idep:I
    .restart local v3       #idep:I
    goto :goto_6

    :cond_b
    move-object p0, v1

    .line 148
    goto/16 :goto_0

    .line 150
    .end local v1           #clas:Ljava/lang/Class;
    .end local v3           #idep:I
    .end local v4           #minfo:Lgnu/expr/ModuleInfo;
    .end local v5           #ndeps:I
    :catch_0
    move-exception p0

    .line 152
    .local p0, ex:Ljava/io/IOException;
    new-instance p1, Lgnu/mapping/WrappedException;

    .end local p1
    const-string v0, "I/O error in lambda eval"

    invoke-direct {p1, v0, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 154
    .local p0, comp:Lgnu/expr/Compilation;
    .restart local p1
    :catch_1
    move-exception p0

    .line 156
    .local p0, ex:Ljava/lang/ClassNotFoundException;
    new-instance p1, Lgnu/mapping/WrappedException;

    .end local p1
    const-string v0, "class not found in lambda eval"

    invoke-direct {p1, v0, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 158
    .local p0, comp:Lgnu/expr/Compilation;
    .restart local p1
    :catch_2
    move-exception v0

    .line 160
    .local v0, ex:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p0

    .end local p0           #comp:Lgnu/expr/Compilation;
    const/16 p1, 0x66

    new-instance v1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internal compile error - caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    new-instance p0, Lgnu/text/SyntaxException;

    invoke-direct {p0, v6}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw p0

    .local v0, zout:Ljava/util/zip/ZipOutputStream;
    .local v5, loader:Lgnu/bytecode/ArrayClassLoader;
    .restart local p0       #comp:Lgnu/expr/Compilation;
    .restart local p1
    :cond_c
    move-object v4, v0

    .end local v0           #zout:Ljava/util/zip/ZipOutputStream;
    .local v4, zout:Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_1
.end method

.method public static mustAlwaysCompile()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 187
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    .line 188
    return-void
.end method

.method public static mustNeverCompile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    sput-boolean v1, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 181
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    .line 182
    sput-boolean v1, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    .line 183
    return-void
.end method


# virtual methods
.method public allocChildClasses(Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "comp"

    .prologue
    .line 426
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    .line 427
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleExp;->allocFrame(Lgnu/expr/Compilation;)V

    goto :goto_0
.end method

.method allocFields(Lgnu/expr/Compilation;)V
    .locals 9
    .parameter "comp"

    .prologue
    const-wide/32 v7, 0x10000

    const-wide/16 v5, 0x6

    const/4 v4, 0x0

    .line 440
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 441
    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_3

    .line 443
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v2, :cond_2

    .line 441
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {v0, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    invoke-virtual {v0, p1, v4}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    goto :goto_1

    .line 451
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 452
    :goto_2
    if-eqz v0, :cond_a

    .line 454
    iget-object v2, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v2, :cond_5

    .line 452
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_2

    .line 456
    :cond_5
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 457
    .local v1, value:Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isNamespaceDecl()Z

    move-result v2

    if-nez v2, :cond_6

    const-wide/16 v2, 0x4000

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 463
    :cond_6
    invoke-virtual {v0, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 465
    instance-of v2, v1, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_7

    instance-of v2, v1, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_7

    instance-of v2, v1, Lgnu/expr/ClassExp;

    if-nez v2, :cond_7

    .line 469
    check-cast v1, Lgnu/expr/LambdaExp;

    .end local v1           #value:Lgnu/expr/Expression;
    invoke-virtual {v1, p1}, Lgnu/expr/LambdaExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    goto :goto_3

    .line 473
    .restart local v1       #value:Lgnu/expr/Expression;
    :cond_7
    invoke-virtual {v0}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move-object v2, v1

    :goto_4
    invoke-virtual {v0, p1, v2}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    goto :goto_3

    :cond_9
    move-object v2, v4

    goto :goto_4

    .line 478
    .end local v1           #value:Lgnu/expr/Expression;
    :cond_a
    return-void
.end method

.method public classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 11
    .parameter "comp"

    .prologue
    .line 532
    iget-object v8, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v9, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v8, v9, :cond_0

    .line 533
    iget-object v8, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 590
    :goto_0
    return-object v8

    .line 534
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, mname:Ljava/lang/String;
    const/4 v1, 0x0

    .line 537
    .local v1, className:Ljava/lang/String;
    const/4 v7, 0x0

    .line 538
    .local v7, path:Lgnu/text/Path;
    if-eqz v4, :cond_5

    .line 539
    move-object v3, v4

    .line 562
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 563
    invoke-virtual {p0, v3}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 564
    :cond_2
    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 565
    iget-object v8, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lgnu/text/Path;->isAbsolute()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Lgnu/text/Path;->getParent()Lgnu/text/Path;

    move-result-object v6

    .local v6, parentPath:Lgnu/text/Path;
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, parent:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    const-string v8, ".."

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_a

    .line 572
    const-string v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 573
    const-string v8, "./"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 574
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 575
    :cond_3
    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v1, v3

    .line 580
    .end local v5           #parent:Ljava/lang/String;
    .end local v6           #parentPath:Lgnu/text/Path;
    :goto_2
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, clas:Lgnu/bytecode/ClassType;
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 582
    iget-object v8, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    if-ne v8, p0, :cond_4

    .line 584
    iget-object v8, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-nez v8, :cond_b

    .line 585
    iput-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    :cond_4
    :goto_3
    move-object v8, v0

    .line 590
    goto :goto_0

    .line 540
    .end local v0           #clas:Lgnu/bytecode/ClassType;
    :cond_5
    if-nez v3, :cond_6

    .line 542
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v3

    .line 543
    if-nez v3, :cond_1

    .line 544
    const-string v3, "$unnamed_input_file$"

    goto :goto_1

    .line 546
    :cond_6
    iget-object v8, p0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string v9, "/dev/stdin"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 548
    :cond_7
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v3

    .line 549
    if-nez v3, :cond_1

    .line 550
    const-string v3, "$stdin$"

    goto/16 :goto_1

    .line 554
    :cond_8
    invoke-static {v3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v7

    .line 555
    invoke-virtual {v7}, Lgnu/text/Path;->getLast()Ljava/lang/String;

    move-result-object v3

    .line 556
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 557
    .local v2, dotIndex:I
    if-lez v2, :cond_1

    .line 558
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 575
    .end local v2           #dotIndex:I
    .restart local v5       #parent:Ljava/lang/String;
    .restart local v6       #parentPath:Lgnu/text/Path;
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_2

    .line 579
    .end local v5           #parent:Ljava/lang/String;
    .end local v6           #parentPath:Lgnu/text/Path;
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 586
    .restart local v0       #clas:Lgnu/bytecode/ClassType;
    :cond_b
    iget-object v8, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 587
    const/16 v8, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inconsistent main class name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - old name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_3
.end method

.method public firstDecl()Lgnu/expr/Declaration;
    .locals 1

    .prologue
    .line 519
    monitor-enter p0

    .line 521
    const/high16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->setupModuleExp()Lgnu/expr/ModuleExp;

    .line 523
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    iget-object v0, p0, Lgnu/expr/ModuleExp;->decls:Lgnu/expr/Declaration;

    return-object v0

    .line 523
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getInterfaces()[Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuperType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final isStatic()Z
    .locals 1

    .prologue
    .line 409
    const v0, 0x8000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lgnu/expr/Compilation;->moduleStatic:I

    if-gez v0, :cond_0

    const/high16 v0, 0x10

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 6
    .parameter "out"

    .prologue
    const/16 v5, 0x2f

    .line 487
    const-string v2, "(Module/"

    const-string v3, ")"

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v3, v4}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 488
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 489
    .local v1, sym:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 492
    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 494
    :cond_0
    iget v2, p0, Lgnu/expr/ModuleExp;->id:I

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(I)V

    .line 495
    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 496
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 497
    const-string v2, "("

    const/4 v3, 0x0

    const-string v4, ")"

    invoke-virtual {p1, v2, v3, v4}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 499
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_1

    .line 501
    const-string v2, "Declarations:"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 502
    :goto_0
    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 505
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 502
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_1
    const-string v2, ")"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 510
    iget-object v2, p0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    if-nez v2, :cond_2

    .line 511
    const-string v2, "<null body>"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 514
    :goto_1
    const-string v2, ")"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 515
    return-void

    .line 513
    :cond_2
    iget-object v2, p0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 616
    .local v0, name:Ljava/lang/Object;
    instance-of v1, v0, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_0

    .line 618
    check-cast v0, Lgnu/bytecode/ClassType;

    .end local v0           #name:Ljava/lang/Object;
    iput-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 619
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 623
    :goto_0
    iget v1, p0, Lgnu/expr/ModuleExp;->flags:I

    const/high16 v2, 0x8

    or-int/2addr v1, v2

    iput v1, p0, Lgnu/expr/ModuleExp;->flags:I

    .line 624
    return-void

    .line 622
    .restart local v0       #name:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #name:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setInterfaces([Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 403
    iput-object p1, p0, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public final setSuperType(Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 401
    iput-object p1, p0, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public staticInitRun()Z
    .locals 2

    .prologue
    .line 419
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lgnu/expr/Compilation;->moduleStatic:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 610
    :goto_0
    return-void

    .line 604
    :cond_0
    if-nez v0, :cond_1

    .line 605
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v0

    .line 606
    :cond_1
    if-nez v0, :cond_2

    .line 607
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_2
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
