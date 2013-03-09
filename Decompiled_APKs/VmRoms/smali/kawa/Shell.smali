.class public Lkawa/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field private static boolClasses:[Ljava/lang/Class;

.field public static currentLoadPath:Ljava/lang/ThreadLocal;

.field public static defaultFormatInfo:[Ljava/lang/Object;

.field public static defaultFormatMethod:Ljava/lang/reflect/Method;

.field public static defaultFormatName:Ljava/lang/String;

.field static formats:[[Ljava/lang/Object;

.field private static httpPrinterClasses:[Ljava/lang/Class;

.field private static noClasses:[Ljava/lang/Class;

.field private static portArg:Ljava/lang/Object;

.field private static xmlPrinterClasses:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    .line 25
    new-array v0, v5, [Ljava/lang/Class;

    sput-object v0, Lkawa/Shell;->noClasses:[Ljava/lang/Class;

    .line 26
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sput-object v0, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    .line 27
    new-array v0, v7, [Ljava/lang/Class;

    const-class v1, Lgnu/mapping/OutPort;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v6

    sput-object v0, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    .line 29
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Lgnu/mapping/OutPort;

    aput-object v1, v0, v5

    sput-object v0, Lkawa/Shell;->httpPrinterClasses:[Ljava/lang/Class;

    .line 31
    const-string v0, "(port)"

    sput-object v0, Lkawa/Shell;->portArg:Ljava/lang/Object;

    .line 41
    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "scheme"

    aput-object v2, v1, v5

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v6

    const-string v2, "getSchemeFormat"

    aput-object v2, v1, v7

    sget-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v9

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "readable-scheme"

    aput-object v2, v1, v5

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v6

    const-string v2, "getSchemeFormat"

    aput-object v2, v1, v7

    sget-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "elisp"

    aput-object v2, v1, v5

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v6

    const-string v2, "getEmacsLispFormat"

    aput-object v2, v1, v7

    sget-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "readable-elisp"

    aput-object v2, v1, v5

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v6

    const-string v2, "getEmacsLispFormat"

    aput-object v2, v1, v7

    sget-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "clisp"

    aput-object v2, v1, v5

    const-string v2, "gnu.kawa.functions.DisplayFormat"

    aput-object v2, v1, v6

    const-string v2, "getCommonLispFormat"

    aput-object v2, v1, v7

    sget-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "readable-clisp"

    aput-object v3, v2, v5

    const-string v3, "gnu.kawa.functions.DisplayFormat"

    aput-object v3, v2, v6

    const-string v3, "getCommonLispFormat"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "commonlisp"

    aput-object v3, v2, v5

    const-string v3, "gnu.kawa.functions.DisplayFormat"

    aput-object v3, v2, v6

    const-string v3, "getCommonLispFormat"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "readable-commonlisp"

    aput-object v3, v2, v5

    const-string v3, "gnu.kawa.functions.DisplayFormat"

    aput-object v3, v2, v6

    const-string v3, "getCommonLispFormat"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "xml"

    aput-object v3, v2, v5

    const-string v3, "gnu.xml.XMLPrinter"

    aput-object v3, v2, v6

    const-string v3, "make"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "html"

    aput-object v3, v2, v5

    const-string v3, "gnu.xml.XMLPrinter"

    aput-object v3, v2, v6

    const-string v3, "make"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "html"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "xhtml"

    aput-object v3, v2, v5

    const-string v3, "gnu.xml.XMLPrinter"

    aput-object v3, v2, v6

    const-string v3, "make"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "xhtml"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cgi"

    aput-object v3, v2, v5

    const-string v3, "gnu.kawa.xml.HttpPrinter"

    aput-object v3, v2, v6

    const-string v3, "make"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->httpPrinterClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "ignore"

    aput-object v3, v2, v5

    const-string v3, "gnu.lists.VoidConsumer"

    aput-object v3, v2, v6

    const-string v3, "getInstance"

    aput-object v3, v2, v7

    sget-object v3, Lkawa/Shell;->noClasses:[Ljava/lang/Class;

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lkawa/Shell;->formats:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkCompiledZip(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;
    .locals 10
    .parameter "fs"
    .parameter "path"
    .parameter "env"
    .parameter "language"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 354
    const/4 v7, 0x5

    :try_start_0
    invoke-virtual {p0, v7}, Ljava/io/InputStream;->mark(I)V

    .line 355
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v8, 0x50

    if-ne v7, v8, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v8, 0x4b

    if-ne v7, v8, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    move v2, v7

    .line 357
    .local v2, isZip:Z
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    if-nez v2, :cond_2

    move-object v7, v9

    .line 390
    .end local v2           #isZip:Z
    .end local p1
    :cond_0
    :goto_1
    return-object v7

    .line 355
    .restart local p1
    :cond_1
    const/4 v7, 0x0

    move v2, v7

    goto :goto_0

    .line 361
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, ex:Ljava/io/IOException;
    move-object v7, v9

    .line 363
    goto :goto_1

    .line 365
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v2       #isZip:Z
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 366
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v5

    .line 367
    .local v5, orig_env:Lgnu/mapping/Environment;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, name:Ljava/lang/String;
    if-eq p2, v5, :cond_3

    .line 371
    :try_start_1
    invoke-static {p2}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 372
    :cond_3
    instance-of v7, p1, Lgnu/text/FilePath;

    if-nez v7, :cond_5

    .line 373
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - not a file path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    .end local p1
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 385
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_2
    new-instance v7, Lgnu/mapping/WrappedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eq p2, v5, :cond_4

    .line 390
    invoke-static {v5}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_4
    throw v7

    .line 374
    .restart local p1
    :cond_5
    :try_start_3
    check-cast p1, Lgnu/text/FilePath;

    .end local p1
    invoke-virtual {p1}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v6

    .line 375
    .local v6, zfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 376
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 377
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_7

    .line 378
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - not readable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 379
    :cond_7
    new-instance v3, Lgnu/bytecode/ZipLoader;

    invoke-direct {v3, v4}, Lgnu/bytecode/ZipLoader;-><init>(Ljava/lang/String;)V

    .line 380
    .local v3, loader:Lgnu/bytecode/ZipLoader;
    invoke-virtual {v3}, Lgnu/bytecode/ZipLoader;->loadAllClasses()Ljava/lang/Class;

    move-result-object v0

    .line 381
    .local v0, clas:Ljava/lang/Class;
    invoke-static {v0, p3}, Lgnu/expr/CompiledModule;->make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v7

    .line 389
    if-eq p2, v5, :cond_0

    .line 390
    invoke-static {v5}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    goto/16 :goto_1
.end method

.method static compileSource(Lgnu/mapping/InPort;Lgnu/mapping/Environment;Ljava/net/URL;Lgnu/expr/Language;Lgnu/text/SourceMessages;)Lgnu/expr/CompiledModule;
    .locals 7
    .parameter "port"
    .parameter "env"
    .parameter "url"
    .parameter "language"
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 524
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v3

    .line 525
    .local v3, manager:Lgnu/expr/ModuleManager;
    invoke-virtual {p0}, Lgnu/mapping/InPort;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lgnu/expr/ModuleManager;->findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v4

    .line 526
    .local v4, minfo:Lgnu/expr/ModuleInfo;
    const/4 v5, 0x1

    invoke-virtual {p3, p0, p4, v5, v4}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v0

    .line 528
    .local v0, comp:Lgnu/expr/Compilation;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v1

    .line 529
    .local v1, ctx:Lgnu/mapping/CallContext;
    sget-object v5, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    iput-object v5, v1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 530
    invoke-static {p1, v0, p2, v6}, Lgnu/expr/ModuleExp;->evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;

    move-result-object v2

    .line 531
    .local v2, inst:Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-virtual {p4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v6

    .line 533
    :goto_0
    return-object v5

    :cond_1
    new-instance v5, Lgnu/expr/CompiledModule;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v6

    invoke-direct {v5, v6, v2, p3}, Lgnu/expr/CompiledModule;-><init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V

    goto :goto_0
.end method

.method public static getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;
    .locals 8
    .parameter "out"

    .prologue
    const/4 v6, 0x4

    .line 132
    sget-object v4, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    .line 133
    .local v4, info:[Ljava/lang/Object;
    if-nez p0, :cond_0

    .line 134
    invoke-static {}, Lgnu/lists/VoidConsumer;->getInstance()Lgnu/lists/VoidConsumer;

    move-result-object v5

    .line 151
    :goto_0
    return-object v5

    .line 135
    :cond_0
    if-nez v4, :cond_1

    .line 136
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    invoke-virtual {v5, p0}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object v5

    goto :goto_0

    .line 139
    :cond_1
    :try_start_0
    array-length v5, v4

    sub-int/2addr v5, v6

    new-array v0, v5, [Ljava/lang/Object;

    .line 140
    .local v0, args:[Ljava/lang/Object;
    const/4 v5, 0x4

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    array-length v3, v0

    .local v3, i:I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 142
    aget-object v5, v0, v3

    sget-object v6, Lkawa/Shell;->portArg:Ljava/lang/Object;

    if-ne v5, v6, :cond_2

    .line 143
    aput-object p0, v0, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    .end local v0           #args:[Ljava/lang/Object;
    .end local v3           #i:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 155
    .local v1, ex:Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get output-format \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' - caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 144
    .end local v1           #ex:Ljava/lang/Throwable;
    .restart local v0       #args:[Ljava/lang/Object;
    .restart local v3       #i:I
    :cond_3
    :try_start_1
    sget-object v5, Lkawa/Shell;->defaultFormatMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    .local v2, format:Ljava/lang/Object;
    instance-of v5, v2, Lgnu/lists/AbstractFormat;

    if-eqz v5, :cond_4

    .line 147
    check-cast v2, Lgnu/lists/AbstractFormat;

    .end local v2           #format:Ljava/lang/Object;
    iput-object v2, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    move-object v5, p0

    .line 148
    goto :goto_0

    .line 151
    .restart local v2       #format:Ljava/lang/Object;
    :cond_4
    check-cast v2, Lgnu/lists/Consumer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2           #format:Ljava/lang/Object;
    move-object v5, v2

    goto :goto_0
.end method

.method public static printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V
    .locals 5
    .parameter "ex"
    .parameter "messages"
    .parameter "perr"

    .prologue
    const/16 v4, 0x14

    .line 308
    instance-of v3, p0, Lgnu/mapping/WrongArguments;

    if-eqz v3, :cond_1

    .line 310
    move-object v0, p0

    check-cast v0, Lgnu/mapping/WrongArguments;

    move-object v1, v0

    .line 311
    .local v1, e:Lgnu/mapping/WrongArguments;
    invoke-virtual {p1, p2, v4}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 312
    iget-object v3, v1, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 314
    :cond_0
    invoke-virtual {v1, p2}, Lgnu/mapping/WrongArguments;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 347
    .end local v1           #e:Lgnu/mapping/WrongArguments;
    :goto_0
    return-void

    .line 316
    :cond_1
    instance-of v3, p0, Ljava/lang/ClassCastException;

    if-eqz v3, :cond_2

    .line 318
    invoke-virtual {p1, p2, v4}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter, was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 335
    :cond_2
    instance-of v3, p0, Lgnu/text/SyntaxException;

    if-eqz v3, :cond_3

    move-object v0, p0

    check-cast v0, Lgnu/text/SyntaxException;

    move-object v2, v0

    .local v2, se:Lgnu/text/SyntaxException;
    invoke-virtual {v2}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 338
    invoke-virtual {v2, p2, v4}, Lgnu/text/SyntaxException;->printAll(Ljava/io/PrintWriter;I)V

    .line 339
    invoke-virtual {v2}, Lgnu/text/SyntaxException;->clear()V

    goto :goto_0

    .line 343
    .end local v2           #se:Lgnu/text/SyntaxException;
    :cond_3
    invoke-virtual {p1, p2, v4}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 344
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    .locals 14
    .parameter "language"
    .parameter "env"
    .parameter "inp"
    .parameter "out"
    .parameter "perr"
    .parameter "url"
    .parameter "messages"

    .prologue
    .line 218
    invoke-static {p0}, Lgnu/expr/Language;->setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;

    move-result-object v11

    .line 219
    .local v11, saveLanguage:Lgnu/expr/Language;
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v9

    .line 222
    .local v9, lexer:Lgnu/text/Lexer;
    if-eqz p4, :cond_3

    const/4 v5, 0x1

    move v8, v5

    .line 223
    .local v8, interactive:Z
    :goto_0
    invoke-virtual {v9, v8}, Lgnu/text/Lexer;->setInteractive(Z)V

    .line 224
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v7

    .line 225
    .local v7, ctx:Lgnu/mapping/CallContext;
    const/4 v5, 0x0

    .line 226
    .local v5, saveConsumer:Lgnu/lists/Consumer;
    if-eqz p3, :cond_0

    .line 228
    iget-object v5, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 229
    move-object/from16 v0, p3

    move-object v1, v7

    iput-object v0, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    :cond_0
    move-object v10, v5

    .line 233
    .end local v5           #saveConsumer:Lgnu/lists/Consumer;
    .local v10, saveConsumer:Lgnu/lists/Consumer;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 234
    .local v6, thread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 238
    .local v5, parentLoader:Ljava/lang/ClassLoader;
    instance-of v12, v5, Lgnu/bytecode/ArrayClassLoader;

    if-nez v12, :cond_1

    .line 239
    new-instance v12, Lgnu/bytecode/ArrayClassLoader;

    invoke-direct {v12, v5}, Lgnu/bytecode/ArrayClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v6, v12}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    .end local v5           #parentLoader:Ljava/lang/ClassLoader;
    .end local v6           #thread:Ljava/lang/Thread;
    :cond_1
    :goto_1
    const/4 v5, 0x7

    .line 252
    .local v5, opts:I
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, v9, v5, v6}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v6

    .line 254
    .local v6, comp:Lgnu/expr/Compilation;
    if-eqz v8, :cond_4

    .line 255
    const/16 v5, 0x14

    move-object/from16 v0, p6

    move-object/from16 v1, p4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5           #opts:I
    move-result v5

    .line 260
    .local v5, sawError:Z
    :goto_2
    if-nez v6, :cond_7

    .line 298
    .end local v5           #sawError:Z
    .end local v6           #comp:Lgnu/expr/Compilation;
    :goto_3
    if-eqz p3, :cond_2

    .line 299
    iput-object v10, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_2
    invoke-static {v11}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 302
    const/4 p0, 0x0

    .end local p0
    :goto_4
    return-object p0

    .line 222
    .end local v7           #ctx:Lgnu/mapping/CallContext;
    .end local v8           #interactive:Z
    .end local v10           #saveConsumer:Lgnu/lists/Consumer;
    .restart local p0
    :cond_3
    const/4 v5, 0x0

    move v8, v5

    goto :goto_0

    .line 256
    .local v5, opts:I
    .restart local v6       #comp:Lgnu/expr/Compilation;
    .restart local v7       #ctx:Lgnu/mapping/CallContext;
    .restart local v8       #interactive:Z
    .restart local v10       #saveConsumer:Lgnu/lists/Consumer;
    :cond_4
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    .end local v5           #opts:I
    if-eqz v5, :cond_6

    .line 257
    new-instance v5, Lgnu/text/SyntaxException;

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 288
    .end local v6           #comp:Lgnu/expr/Compilation;
    :catch_0
    move-exception v5

    .line 290
    .local v5, e:Ljava/lang/Throwable;
    if-nez v8, :cond_d

    .line 298
    if-eqz p3, :cond_5

    .line 299
    iput-object v10, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_5
    invoke-static {v11}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    move-object p0, v5

    goto :goto_4

    .line 259
    .end local v5           #e:Ljava/lang/Throwable;
    .restart local v6       #comp:Lgnu/expr/Compilation;
    :cond_6
    const/4 v5, 0x0

    .local v5, sawError:Z
    goto :goto_2

    .line 262
    :cond_7
    if-nez v5, :cond_1

    .line 264
    :try_start_3
    invoke-virtual {v6}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v5

    .end local v5           #sawError:Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "atInteractiveLevel$"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lgnu/expr/ModuleExp;->interactiveCounter:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Lgnu/expr/ModuleExp;->interactiveCounter:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 271
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lgnu/mapping/InPort;->read()I

    move-result v5

    .line 272
    .local v5, ch:I
    if-ltz v5, :cond_9

    const/16 v12, 0xd

    if-eq v5, v12, :cond_9

    const/16 v12, 0xa

    if-ne v5, v12, :cond_b

    .line 281
    :cond_9
    :goto_5
    move-object v0, p1

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    move-result v6

    .end local v6           #comp:Lgnu/expr/Compilation;
    if-eqz v6, :cond_1

    .line 283
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/io/Writer;

    move v6, v0

    if-eqz v6, :cond_a

    .line 284
    move-object/from16 v0, p3

    check-cast v0, Ljava/io/Writer;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 285
    :cond_a
    if-gez v5, :cond_1

    goto :goto_3

    .line 274
    .restart local v6       #comp:Lgnu/expr/Compilation;
    :cond_b
    const/16 v12, 0x20

    if-eq v5, v12, :cond_8

    const/16 v12, 0x9

    if-eq v5, v12, :cond_8

    .line 276
    invoke-virtual/range {p2 .. p2}, Lgnu/mapping/InPort;->unread()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 298
    .end local v5           #ch:I
    .end local v6           #comp:Lgnu/expr/Compilation;
    :catchall_0
    move-exception p0

    .end local p0
    if-eqz p3, :cond_c

    .line 299
    iput-object v10, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_c
    invoke-static {v11}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    throw p0

    .line 292
    .local v5, e:Ljava/lang/Throwable;
    .restart local p0
    :cond_d
    :try_start_4
    move-object v0, v5

    move-object/from16 v1, p6

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 241
    .end local v5           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    .locals 8
    .parameter "language"
    .parameter "env"
    .parameter "inp"
    .parameter "pout"
    .parameter "perr"
    .parameter "messages"

    .prologue
    .line 188
    const/4 v7, 0x0

    .line 189
    .local v7, saveFormat:Lgnu/lists/AbstractFormat;
    if-eqz p3, :cond_0

    .line 190
    iget-object v7, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 191
    :cond_0
    invoke-static {p3}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v3

    .line 194
    .local v3, out:Lgnu/lists/Consumer;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p5

    :try_start_0
    invoke-static/range {v0 .. v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 198
    if-eqz p3, :cond_1

    .line 199
    iput-object v7, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    :cond_1
    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_2

    .line 199
    iput-object v7, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    :cond_2
    throw v0
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z
    .locals 9
    .parameter "language"
    .parameter "env"

    .prologue
    .line 162
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v3

    .line 163
    .local v3, inp:Lgnu/mapping/InPort;
    new-instance v6, Lgnu/text/SourceMessages;

    invoke-direct {v6}, Lgnu/text/SourceMessages;-><init>()V

    .line 165
    .local v6, messages:Lgnu/text/SourceMessages;
    instance-of v1, v3, Lgnu/mapping/TtyInPort;

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {p0}, Lgnu/expr/Language;->getPrompter()Lgnu/mapping/Procedure;

    move-result-object v8

    .line 168
    .local v8, prompter:Lgnu/mapping/Procedure;
    if-eqz v8, :cond_0

    .line 169
    move-object v0, v3

    check-cast v0, Lgnu/mapping/TtyInPort;

    move-object v4, v0

    invoke-virtual {v4, v8}, Lgnu/mapping/TtyInPort;->setPrompter(Lgnu/mapping/Procedure;)V

    .line 170
    :cond_0
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v5

    .line 175
    .end local v8           #prompter:Lgnu/mapping/Procedure;
    .local v5, perr:Lgnu/mapping/OutPort;
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v7

    .line 177
    .local v7, ex:Ljava/lang/Throwable;
    if-nez v7, :cond_2

    .line 178
    const/4 v1, 0x1

    .line 180
    :goto_1
    return v1

    .line 173
    .end local v5           #perr:Lgnu/mapping/OutPort;
    .end local v7           #ex:Ljava/lang/Throwable;
    :cond_1
    const/4 v5, 0x0

    .restart local v5       #perr:Lgnu/mapping/OutPort;
    goto :goto_0

    .line 179
    .restart local v7       #ex:Ljava/lang/Throwable;
    :cond_2
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    invoke-static {v7, v6, v1}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 180
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;)Z
    .locals 8
    .parameter "language"
    .parameter "env"
    .parameter "inp"
    .parameter "out"
    .parameter "perr"
    .parameter "url"

    .prologue
    .line 207
    new-instance v6, Lgnu/text/SourceMessages;

    invoke-direct {v6}, Lgnu/text/SourceMessages;-><init>()V

    .local v6, messages:Lgnu/text/SourceMessages;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 208
    invoke-static/range {v0 .. v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v7

    .line 209
    .local v7, ex:Ljava/lang/Throwable;
    if-eqz v7, :cond_0

    .line 210
    invoke-static {v7, v6, p4}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 211
    :cond_0
    if-nez v7, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final runFile(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;ZI)Z
    .locals 9
    .parameter "fs"
    .parameter "path"
    .parameter "env"
    .parameter "lineByLine"
    .parameter "skipLines"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 468
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .local v0, fs:Ljava/io/InputStream;
    move-object p0, v0

    .line 470
    .end local v0           #fs:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 471
    .local v0, language:Lgnu/expr/Language;
    sget-object v1, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/text/Path;

    .line 474
    .local v8, savePath:Lgnu/text/Path;
    :try_start_0
    sget-object v1, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 475
    invoke-static {p0, p1, p2, v0}, Lkawa/Shell;->checkCompiledZip(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;

    move-result-object v7

    .line 476
    .local v7, cmodule:Lgnu/expr/CompiledModule;
    if-nez v7, :cond_7

    .line 478
    invoke-static {p0, p1}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v2

    .line 479
    .local v2, src:Lgnu/mapping/InPort;
    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_1

    .line 480
    invoke-virtual {v2}, Lgnu/mapping/InPort;->skipRestOfLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 513
    .end local v2           #src:Lgnu/mapping/InPort;
    .end local v7           #cmodule:Lgnu/expr/CompiledModule;
    .end local p0
    .end local p1
    .end local p3
    :catchall_0
    move-exception p0

    sget-object p1, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0

    .line 483
    .restart local v2       #src:Lgnu/mapping/InPort;
    .restart local v7       #cmodule:Lgnu/expr/CompiledModule;
    .restart local p0
    .restart local p1
    .restart local p3
    :cond_1
    :try_start_1
    new-instance v6, Lgnu/text/SourceMessages;

    invoke-direct {v6}, Lgnu/text/SourceMessages;-><init>()V

    .line 484
    .local v6, messages:Lgnu/text/SourceMessages;
    invoke-virtual {p1}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v5

    .line 485
    .local v5, url:Ljava/net/URL;
    if-eqz p3, :cond_6

    .line 487
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result p0

    .line 488
    .local p0, print:Z
    if-eqz p0, :cond_2

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object p0

    .end local p0           #print:Z
    invoke-static {p0}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object p0

    move-object v3, p0

    .line 490
    .local v3, out:Lgnu/lists/Consumer;
    :goto_1
    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object p0

    .line 492
    .local p0, ex:Ljava/lang/Throwable;
    if-eqz p0, :cond_3

    .line 493
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 505
    .end local v3           #out:Lgnu/lists/Consumer;
    .end local v5           #url:Ljava/net/URL;
    .end local v6           #messages:Lgnu/text/SourceMessages;
    .end local p0           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v7

    .end local v7           #cmodule:Lgnu/expr/CompiledModule;
    .end local p1
    .end local p3
    .local p0, cmodule:Lgnu/expr/CompiledModule;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lgnu/mapping/InPort;->close()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 488
    .restart local v5       #url:Ljava/net/URL;
    .restart local v6       #messages:Lgnu/text/SourceMessages;
    .restart local v7       #cmodule:Lgnu/expr/CompiledModule;
    .local p0, print:Z
    .restart local p1
    .restart local p3
    :cond_2
    :try_start_3
    new-instance p0, Lgnu/lists/VoidConsumer;

    .end local p0           #print:Z
    invoke-direct {p0}, Lgnu/lists/VoidConsumer;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, p0

    goto :goto_1

    .restart local v3       #out:Lgnu/lists/Consumer;
    .local p0, ex:Ljava/lang/Throwable;
    :cond_3
    move-object p0, v7

    .line 505
    .end local v3           #out:Lgnu/lists/Consumer;
    .end local v7           #cmodule:Lgnu/expr/CompiledModule;
    .end local p1
    .end local p3
    .local p0, cmodule:Lgnu/expr/CompiledModule;
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Lgnu/mapping/InPort;->close()V

    .line 508
    .end local v2           #src:Lgnu/mapping/InPort;
    .end local v5           #url:Ljava/net/URL;
    .end local v6           #messages:Lgnu/text/SourceMessages;
    :goto_3
    if-eqz p0, :cond_5

    .line 509
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 513
    :cond_5
    sget-object p1, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 515
    const/4 p1, 0x1

    .end local p2
    :goto_4
    return p1

    .line 497
    .restart local v2       #src:Lgnu/mapping/InPort;
    .restart local v5       #url:Ljava/net/URL;
    .restart local v6       #messages:Lgnu/text/SourceMessages;
    .restart local v7       #cmodule:Lgnu/expr/CompiledModule;
    .local p0, fs:Ljava/io/InputStream;
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_6
    :try_start_5
    invoke-static {v2, p2, v5, v0, v6}, Lkawa/Shell;->compileSource(Lgnu/mapping/InPort;Lgnu/mapping/Environment;Ljava/net/URL;Lgnu/expr/Language;Lgnu/text/SourceMessages;)Lgnu/expr/CompiledModule;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object p0

    .line 498
    .end local v7           #cmodule:Lgnu/expr/CompiledModule;
    .local p0, cmodule:Lgnu/expr/CompiledModule;
    :try_start_6
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object p1

    .end local p1
    const/16 p3, 0x14

    invoke-virtual {v6, p1, p3}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 499
    .end local p3
    if-nez p0, :cond_4

    .line 500
    const/4 p1, 0x0

    .line 505
    :try_start_7
    invoke-virtual {v2}, Lgnu/mapping/InPort;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 513
    sget-object p2, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    .end local p2
    invoke-virtual {p2, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_4

    .line 505
    .restart local p2
    :catchall_2
    move-exception p1

    goto :goto_2

    .end local v2           #src:Lgnu/mapping/InPort;
    .end local v5           #url:Ljava/net/URL;
    .end local v6           #messages:Lgnu/text/SourceMessages;
    .restart local v7       #cmodule:Lgnu/expr/CompiledModule;
    .local p0, fs:Ljava/io/InputStream;
    .restart local p1
    .restart local p3
    :cond_7
    move-object p0, v7

    .end local v7           #cmodule:Lgnu/expr/CompiledModule;
    .local p0, cmodule:Lgnu/expr/CompiledModule;
    goto :goto_3
.end method

.method public static runFileOrClass(Ljava/lang/String;ZI)Z
    .locals 12
    .parameter "fname"
    .parameter "lineByLine"
    .parameter "skipLines"

    .prologue
    const/4 v11, 0x0

    .line 410
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    .line 415
    .local v6, language:Lgnu/expr/Language;
    :try_start_0
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 417
    const-string v8, "/dev/stdin"

    invoke-static {v8}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v7

    .line 418
    .local v7, path:Lgnu/text/Path;
    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 427
    .local v5, fs:Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    .line 428
    .local v3, env:Lgnu/mapping/Environment;
    invoke-static {v5, v7, v3, p1, p2}, Lkawa/Shell;->runFile(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;ZI)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 457
    .end local v3           #env:Lgnu/mapping/Environment;
    .end local v5           #fs:Ljava/io/InputStream;
    .end local v7           #path:Lgnu/text/Path;
    :goto_1
    return v8

    .line 422
    :cond_0
    :try_start_2
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v7

    .line 423
    .restart local v7       #path:Lgnu/text/Path;
    invoke-virtual {v7}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v5

    .restart local v5       #fs:Ljava/io/InputStream;
    goto :goto_0

    .line 430
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 432
    .local v2, e:Ljava/lang/Throwable;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move v8, v11

    .line 433
    goto :goto_1

    .line 436
    .end local v2           #e:Ljava/lang/Throwable;
    .end local v5           #fs:Ljava/io/InputStream;
    .end local v7           #path:Lgnu/text/Path;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 441
    .restart local v2       #e:Ljava/lang/Throwable;
    :try_start_3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 450
    .local v0, clas:Ljava/lang/Class;
    :try_start_4
    invoke-static {v0, v6}, Lgnu/expr/CompiledModule;->make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;

    move-result-object v1

    .line 451
    .local v1, cmodule:Lgnu/expr/CompiledModule;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v8

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 452
    const/4 v8, 0x1

    goto :goto_1

    .line 443
    .end local v0           #clas:Ljava/lang/Class;
    .end local v1           #cmodule:Lgnu/expr/CompiledModule;
    :catch_2
    move-exception v4

    .line 445
    .local v4, ex:Ljava/lang/Throwable;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v8, v11

    .line 446
    goto :goto_1

    .line 454
    .end local v4           #ex:Ljava/lang/Throwable;
    .restart local v0       #clas:Ljava/lang/Class;
    :catch_3
    move-exception v8

    move-object v4, v8

    .line 456
    .restart local v4       #ex:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move v8, v11

    .line 457
    goto :goto_1
.end method

.method public static setDefaultFormat(Ljava/lang/String;)V
    .locals 10
    .parameter "name"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 94
    sput-object p0, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    .line 95
    const/4 v2, 0x0

    .line 97
    .local v2, i:I
    :goto_0
    sget-object v5, Lkawa/Shell;->formats:[[Ljava/lang/Object;

    aget-object v4, v5, v2

    .line 98
    .local v4, info:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 99
    .local v3, iname:Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 101
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kawa: unknown output format \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 95
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    if-ne v3, p0, :cond_0

    .line 106
    sput-object v4, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    .line 109
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v4, v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 110
    .local v1, formatClass:Ljava/lang/Class;
    const/4 v5, 0x2

    aget-object v5, v4, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v4, v6

    check-cast v6, [Ljava/lang/Class;

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lkawa/Shell;->defaultFormatMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #formatClass:Ljava/lang/Class;
    :goto_1
    sget-object v5, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    aget-object v5, v5, v8

    const-string v6, "gnu.lists.VoidConsumer"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 123
    invoke-static {v8}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    .line 124
    :cond_2
    return-void

    .line 114
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 116
    .local v0, ex:Ljava/lang/Throwable;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kawa:  caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while looking for format \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method
