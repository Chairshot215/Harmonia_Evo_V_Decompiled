.class public Lkawa/repl;
.super Lgnu/mapping/Procedure0or1;
.source "repl.java"


# static fields
.field public static compilationTopname:Ljava/lang/String;

.field static defaultParseOptions:I

.field public static homeDirectory:Ljava/lang/String;

.field public static noConsole:Z

.field static previousLanguage:Lgnu/expr/Language;

.field static shutdownRegistered:Z


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    .line 23
    const/16 v0, 0x48

    sput v0, Lkawa/repl;->defaultParseOptions:I

    .line 176
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0}, Lgnu/text/WriterManager;->registerShutdownHook()Z

    move-result v0

    sput-boolean v0, Lkawa/repl;->shutdownRegistered:Z

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 26
    invoke-direct {p0}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 27
    iput-object p1, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    .line 28
    return-void
.end method

.method static bad_option(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 44
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kawa: bad option \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lkawa/repl;->printOptions(Ljava/io/PrintStream;)V

    .line 46
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 47
    return-void
.end method

.method static checkInitFile()V
    .locals 7

    .prologue
    .line 125
    sget-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, initFile:Ljava/io/File;
    const-string v4, "user.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    .line 130
    sget-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 132
    new-instance v3, Lgnu/lists/FString;

    sget-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    invoke-direct {v3, v4}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    .line 133
    .local v3, scmHomeDirectory:Lgnu/lists/FString;
    const-string v4, "file.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, file_separator:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ".kawarc.scm"

    move-object v2, v4

    .line 137
    .local v2, kawarc_name:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    .end local v1           #initFile:Ljava/io/File;
    sget-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v0           #file_separator:Ljava/lang/String;
    .end local v2           #kawarc_name:Ljava/lang/String;
    .end local v3           #scmHomeDirectory:Lgnu/lists/FString;
    .restart local v1       #initFile:Ljava/io/File;
    :goto_1
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    const-string v5, "home-directory"

    invoke-virtual {v4, v5, v3}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 146
    .end local v1           #initFile:Ljava/io/File;
    :cond_0
    return-void

    .line 134
    .restart local v0       #file_separator:Ljava/lang/String;
    .restart local v1       #initFile:Ljava/io/File;
    .restart local v3       #scmHomeDirectory:Lgnu/lists/FString;
    :cond_1
    const-string v4, "kawarc.scm"

    move-object v2, v4

    goto :goto_0

    .line 140
    .end local v0           #file_separator:Ljava/lang/String;
    .end local v3           #scmHomeDirectory:Lgnu/lists/FString;
    :cond_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v3, scmHomeDirectory:Ljava/lang/Boolean;
    goto :goto_1
.end method

.method public static compileFiles([Ljava/lang/String;II)V
    .locals 12
    .parameter "args"
    .parameter "iArg"
    .parameter "maxArg"

    .prologue
    .line 718
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v8

    .line 719
    .local v8, manager:Lgnu/expr/ModuleManager;
    sub-int v1, p2, p1

    new-array v4, v1, [Lgnu/expr/Compilation;

    .line 720
    .local v4, comps:[Lgnu/expr/Compilation;
    sub-int v1, p2, p1

    new-array v7, v1, [Lgnu/expr/ModuleInfo;

    .line 721
    .local v7, infos:[Lgnu/expr/ModuleInfo;
    new-instance v9, Lgnu/text/SourceMessages;

    invoke-direct {v9}, Lgnu/text/SourceMessages;-><init>()V

    .line 722
    .local v9, messages:Lgnu/text/SourceMessages;
    move v1, p1

    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .local v6, i:I
    :goto_0
    if-ge v6, p2, :cond_3

    .line 724
    aget-object v1, p0, v6

    .line 725
    .local v1, arg:Ljava/lang/String;
    invoke-static {v1}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    .line 727
    .local v5, language:Lgnu/expr/Language;
    const/4 v2, 0x0

    .line 733
    .local v2, comp:Lgnu/expr/Compilation;
    :try_start_0
    invoke-static {v1}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 742
    .local v3, fstream:Lgnu/mapping/InPort;
    :try_start_1
    sget v10, Lkawa/repl;->defaultParseOptions:I

    invoke-virtual {v5, v3, v9, v10}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 746
    .end local v2           #comp:Lgnu/expr/Compilation;
    .local v3, comp:Lgnu/expr/Compilation;
    :try_start_2
    sget-object v2, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 748
    sget-object v2, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    invoke-static {v2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, cname:Ljava/lang/String;
    new-instance v5, Lgnu/bytecode/ClassType;

    .end local v5           #language:Lgnu/expr/Language;
    invoke-direct {v5, v2}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 751
    .local v5, ctype:Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    .line 752
    .local v2, mexp:Lgnu/expr/ModuleExp;
    invoke-virtual {v2, v5}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 753
    sget-object v10, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 754
    iput-object v5, v3, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 757
    .end local v2           #mexp:Lgnu/expr/ModuleExp;
    .end local v5           #ctype:Lgnu/bytecode/ClassType;
    :cond_0
    sub-int v2, v6, p1

    invoke-virtual {v8, v3}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    move-result-object v5

    aput-object v5, v7, v2

    .line 758
    sub-int v2, v6, p1

    aput-object v3, v4, v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 767
    .end local v3           #comp:Lgnu/expr/Compilation;
    .local v2, comp:Lgnu/expr/Compilation;
    :cond_1
    :goto_1
    invoke-virtual {v9}, Lgnu/text/SourceMessages;->seenErrorsOrWarnings()Z

    move-result v2

    .end local v2           #comp:Lgnu/expr/Compilation;
    if-eqz v2, :cond_2

    .line 769
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(compiling "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #arg:Ljava/lang/String;
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 770
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v2, 0x14

    invoke-virtual {v9, v1, v2}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 771
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 722
    :cond_2
    add-int/lit8 v1, v6, 0x1

    .end local v6           #i:I
    .local v1, i:I
    move v6, v1

    .end local v1           #i:I
    .restart local v6       #i:I
    goto :goto_0

    .line 735
    .local v1, arg:Ljava/lang/String;
    .restart local v2       #comp:Lgnu/expr/Compilation;
    .local v5, language:Lgnu/expr/Language;
    :catch_0
    move-exception v3

    .line 737
    .local v3, ex:Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local v5           #language:Lgnu/expr/Language;
    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 738
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 775
    .end local v1           #arg:Ljava/lang/String;
    .end local v2           #comp:Lgnu/expr/Compilation;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :cond_3
    move v1, p1

    .end local v6           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .end local v8           #manager:Lgnu/expr/ModuleManager;
    .local v5, i:I
    :goto_2
    if-ge v5, p2, :cond_7

    .line 777
    aget-object v1, p0, v5

    .line 778
    .local v1, arg:Ljava/lang/String;
    sub-int v2, v5, p1

    aget-object v2, v4, v2

    .line 781
    .restart local v2       #comp:Lgnu/expr/Compilation;
    :try_start_4
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(compiling "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v2, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x29

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    sub-int v3, v5, p1

    aget-object v3, v7, v3

    const/16 v6, 0xe

    invoke-virtual {v3, v6}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 784
    invoke-virtual {v9}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v3

    .line 785
    .local v3, sawErrors:Z
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v8, 0x32

    invoke-virtual {v9, v6, v8}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    .line 786
    if-eqz v3, :cond_4

    .line 787
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 788
    .end local v3           #sawErrors:Z
    :cond_4
    sub-int v3, v5, p1

    aput-object v2, v4, v3

    .line 789
    invoke-virtual {v9}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v3

    .line 790
    .restart local v3       #sawErrors:Z
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v8, 0x32

    invoke-virtual {v9, v6, v8}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    .line 791
    if-eqz v3, :cond_5

    .line 792
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 775
    .end local v3           #sawErrors:Z
    :cond_5
    :goto_3
    add-int/lit8 v1, v5, 0x1

    .end local v5           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto :goto_2

    .line 761
    .end local v5           #i:I
    .local v1, arg:Ljava/lang/String;
    .restart local v6       #i:I
    .restart local v8       #manager:Lgnu/expr/ModuleManager;
    :catch_1
    move-exception v3

    .line 763
    .local v3, ex:Ljava/lang/Throwable;
    :goto_4
    instance-of v5, v3, Lgnu/text/SyntaxException;

    if-eqz v5, :cond_6

    move-object v0, v3

    check-cast v0, Lgnu/text/SyntaxException;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v5

    if-eq v5, v9, :cond_1

    .line 765
    :cond_6
    invoke-static {v3, v2, v1}, Lkawa/repl;->internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 794
    .end local v3           #ex:Ljava/lang/Throwable;
    .end local v6           #i:I
    .end local v8           #manager:Lgnu/expr/ModuleManager;
    .restart local v5       #i:I
    :catch_2
    move-exception v3

    .line 796
    .restart local v3       #ex:Ljava/lang/Throwable;
    invoke-static {v3, v2, v1}, Lkawa/repl;->internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V

    goto :goto_3

    .line 799
    .end local v1           #arg:Ljava/lang/String;
    .end local v2           #comp:Lgnu/expr/Compilation;
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_7
    return-void

    .line 761
    .end local v5           #i:I
    .restart local v1       #arg:Ljava/lang/String;
    .local v3, comp:Lgnu/expr/Compilation;
    .restart local v6       #i:I
    .restart local v8       #manager:Lgnu/expr/ModuleManager;
    :catch_3
    move-exception v2

    move-object v11, v2

    move-object v2, v3

    .end local v3           #comp:Lgnu/expr/Compilation;
    .restart local v2       #comp:Lgnu/expr/Compilation;
    move-object v3, v11

    goto :goto_4
.end method

.method public static getLanguage()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    sput-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    .line 172
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 174
    :cond_0
    return-void
.end method

.method public static getLanguageFromFilenameExtension(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 155
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v0, :cond_0

    .line 157
    invoke-static {p0}, Lgnu/expr/Language;->getInstanceFromFilenameExtension(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    sput-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    .line 158
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {}, Lkawa/repl;->getLanguage()V

    goto :goto_0
.end method

.method static internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V
    .locals 5
    .parameter "ex"
    .parameter "comp"
    .parameter "arg"

    .prologue
    .line 803
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 804
    .local v2, sbuf:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 806
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, file:Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v1

    .line 808
    .local v1, line:I
    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    .line 810
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 812
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 813
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    .end local v0           #file:Ljava/lang/String;
    .end local v1           #line:I
    :cond_0
    const-string v3, "internal error while compiling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 818
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 819
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 820
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 821
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 827
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p0

    invoke-static {p0, v3, v4}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 828
    .local v1, iArg:I
    if-gez v1, :cond_1

    .line 857
    sget-boolean v3, Lkawa/repl;->shutdownRegistered:Z

    if-nez v3, :cond_0

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_0
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    .line 864
    :goto_0
    return-void

    .line 831
    :cond_1
    :try_start_1
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 833
    aget-object v0, p0, v1

    .line 834
    .local v0, filename:Ljava/lang/String;
    invoke-static {v0}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 835
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v3}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 836
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 837
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 857
    .end local v0           #filename:Ljava/lang/String;
    :cond_2
    :goto_1
    sget-boolean v3, Lkawa/repl;->shutdownRegistered:Z

    if-nez v3, :cond_3

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_3
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    goto :goto_0

    .line 841
    :cond_4
    :try_start_2
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 842
    invoke-static {p0, v1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 843
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 844
    invoke-static {}, Lkawa/repl;->shouldUseGuiConsole()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 845
    invoke-static {}, Lkawa/repl;->startGuiConsole()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 857
    .end local v1           #iArg:I
    :catchall_0
    move-exception v3

    sget-boolean v4, Lkawa/repl;->shutdownRegistered:Z

    if-nez v4, :cond_5

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_5
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    throw v3

    .line 848
    .restart local v1       #iArg:I
    :cond_6
    :try_start_3
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    invoke-static {v3, v4}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    move-result v2

    .line 850
    .local v2, ok:Z
    if-nez v2, :cond_2

    .line 851
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "out"
    .parameter "option"
    .parameter "doc"

    .prologue
    .line 51
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 55
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x1e

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 56
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static printOptions(Ljava/io/PrintStream;)V
    .locals 9
    .parameter "out"

    .prologue
    .line 63
    const-string v7, "Usage: [java kawa.repl | kawa] [options ...]"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 65
    const-string v7, " Generic options:"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    const-string v7, "--help"

    const-string v8, "Show help about options"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v7, "--author"

    const-string v8, "Show author information"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v7, "--version"

    const-string v8, "Show version information"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 70
    const-string v7, " Options"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    const-string v7, "-e <expr>"

    const-string v8, "Evaluate expression <expr>"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v7, "-c <expr>"

    const-string v8, "Same as -e, but make sure ~/.kawarc.scm is run first"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v7, "-f <filename>"

    const-string v8, "File to interpret"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v7, "-s| --"

    const-string v8, "Start reading commands interactively from console"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v7, "-w"

    const-string v8, "Launch the interpreter in a GUI window"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v7, "--server <port>"

    const-string v8, "Start a server accepting telnet connections on <port>"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v7, "--debug-dump-zip"

    const-string v8, "Compiled interactive expressions to a zip archive"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v7, "--debug-print-expr"

    const-string v8, "Print generated internal expressions"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v7, "--debug-print-final-expr"

    const-string v8, "Print expression after any optimizations"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v7, "--debug-error-prints-stack-trace"

    const-string v8, "Print stack trace with errors"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v7, "--debug-warning-prints-stack-trace"

    const-string v8, "Print stack trace with warnings"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v7, "--[no-]full-tailcalls"

    const-string v8, "(Don\'t) use full tail-calls"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v7, "-C <filename> ..."

    const-string v8, "Compile named files to Java class files"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v7, "--output-format <format>"

    const-string v8, "Use <format> when printing top-level output"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v7, "--<language>"

    const-string v8, "Select source language, one of:"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lgnu/expr/Language;->getLanguages()[[Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, languages:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_2

    .line 89
    const-string v7, "   "

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 90
    aget-object v3, v4, v0

    .line 92
    .local v3, lang:[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x1

    sub-int v6, v7, v8

    .line 93
    .local v6, nwords:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    :cond_0
    if-nez v0, :cond_1

    .line 96
    const-string v7, "[default]"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v1           #j:I
    .end local v3           #lang:[Ljava/lang/String;
    .end local v6           #nwords:I
    :cond_2
    const-string v7, " Compilation options, must be specified before -C"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    const-string v7, "-d <dirname>"

    const-string v8, "Directory to place .class files in"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v7, "-P <prefix>"

    const-string v8, "Prefix to prepand to class names"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v7, "-T <topname>"

    const-string v8, "name to give to top-level class"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v7, "--main"

    const-string v8, "Generate an application, with a main method"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v7, "--applet"

    const-string v8, "Generate an applet"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v7, "--servlet"

    const-string v8, "Generate a servlet"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v7, "--module-static"

    const-string v8, "Top-level definitions are by default static"

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v7, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v7}, Lgnu/text/Options;->keys()Ljava/util/ArrayList;

    move-result-object v2

    .line 110
    .local v2, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 112
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 113
    .local v5, name:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v8, v5}, Lgnu/text/Options;->getDoc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    .end local v5           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 117
    const-string v7, "For more information go to:  http://www.gnu.org/software/kawa/"

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static processArgs([Ljava/lang/String;II)I
    .locals 16
    .parameter "args"
    .parameter "iArg"
    .parameter "maxArg"

    .prologue
    .line 181
    const/4 v3, 0x0

    .local v3, something_done:Z
    move v6, v3

    .line 182
    .end local v3           #something_done:Z
    .local v6, something_done:Z
    :goto_0
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_5f

    .line 184
    aget-object v9, p0, p1

    .line 185
    .local v9, arg:Ljava/lang/String;
    const-string v3, "-c"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "-e"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 188
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 189
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 190
    :cond_1
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 191
    add-int/lit8 v3, p1, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-static {v0, v1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 192
    const-string v3, "-c"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 194
    :cond_2
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    .line 195
    .local v3, language:Lgnu/expr/Language;
    new-instance v8, Lgnu/text/SourceMessages;

    invoke-direct {v8}, Lgnu/text/SourceMessages;-><init>()V

    .line 196
    .local v8, messages:Lgnu/text/SourceMessages;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    new-instance v5, Lgnu/mapping/CharArrayInPort;

    aget-object v6, p0, p1

    .end local v6           #something_done:Z
    invoke-direct {v5, v6}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v3

    .line 200
    .local v3, ex:Ljava/lang/Throwable;
    if-eqz v3, :cond_3

    .line 202
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v4

    invoke-static {v3, v8, v4}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 203
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 205
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_3
    const/4 v3, 0x1

    .local v3, something_done:Z
    move v4, v3

    .end local v3           #something_done:Z
    .local v4, something_done:Z
    move-object v3, v9

    .line 182
    .end local v8           #messages:Lgnu/text/SourceMessages;
    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    :goto_1
    add-int/lit8 p1, p1, 0x1

    move v6, v4

    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    goto :goto_0

    .line 207
    .end local v3           #arg:Ljava/lang/String;
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4
    const-string v3, "-f"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 209
    add-int/lit8 p1, p1, 0x1

    .line 210
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_5

    .line 211
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 212
    :cond_5
    aget-object v3, p0, p1

    .line 213
    .local v3, filename:Ljava/lang/String;
    invoke-static {v3}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 214
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 215
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 216
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v3

    .end local v3           #filename:Ljava/lang/String;
    if-nez v3, :cond_6

    .line 217
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 218
    :cond_6
    const/4 v3, 0x1

    .end local v6           #something_done:Z
    .local v3, something_done:Z
    move v4, v3

    .end local v3           #something_done:Z
    .restart local v4       #something_done:Z
    move-object v3, v9

    .line 219
    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    goto :goto_1

    .line 220
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_7
    const-string v3, "--script"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 222
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, count:Ljava/lang/String;
    add-int/lit8 p1, p1, 0x1

    .line 224
    const/4 v4, 0x0

    .line 225
    .local v4, skipLines:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_64

    .line 229
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 236
    .end local v4           #skipLines:I
    .local v3, skipLines:I
    :goto_2
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_8

    .line 237
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 238
    :cond_8
    aget-object p2, p0, p1

    .line 239
    .local p2, filename:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 240
    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 241
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 242
    const/16 p0, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p0

    move v2, v3

    invoke-static {v0, v1, v2}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    .end local p0
    move-result p0

    if-nez p0, :cond_9

    .line 243
    const/16 p0, -0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->exit(I)V

    .line 244
    :cond_9
    const/16 p0, -0x1

    .line 713
    .end local v3           #skipLines:I
    .end local v6           #something_done:Z
    .end local v9           #arg:Ljava/lang/String;
    .end local p2           #filename:Ljava/lang/String;
    :goto_3
    return p0

    .line 231
    .local v3, count:Ljava/lang/String;
    .restart local v4       #skipLines:I
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    .restart local p0
    .local p2, maxArg:I
    :catch_0
    move-exception p1

    .line 233
    .local p1, ex:Ljava/lang/Throwable;
    move/from16 p1, p2

    .local p1, iArg:I
    move v3, v4

    .end local v4           #skipLines:I
    .local v3, skipLines:I
    goto :goto_2

    .line 246
    .end local v3           #skipLines:I
    :cond_a
    const-string v3, "\\"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 249
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    .line 250
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 251
    :cond_b
    aget-object v3, p0, p1

    .line 253
    .local v3, filename:Ljava/lang/String;
    new-instance v8, Lgnu/text/SourceMessages;

    invoke-direct {v8}, Lgnu/text/SourceMessages;-><init>()V

    .line 256
    .restart local v8       #messages:Lgnu/text/SourceMessages;
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance p2, Ljava/io/FileInputStream;

    .end local p2           #maxArg:I
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 257
    .local v4, fstream:Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 258
    .local p2, ch:I
    const/16 v5, 0x23

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_12

    .line 260
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 261
    .end local v6           #something_done:Z
    .local v5, sbuf:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/util/Vector;

    const/16 v6, 0xa

    invoke-direct {v7, v6}, Ljava/util/Vector;-><init>(I)V

    .line 262
    .local v7, xargs:Ljava/util/Vector;
    const/4 v6, 0x0

    .line 263
    .end local v9           #arg:Ljava/lang/String;
    .local v6, state:I
    :goto_4
    const/16 v9, 0xa

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_c

    const/16 v9, 0xd

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_c

    if-ltz p2, :cond_c

    .line 264
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result p2

    goto :goto_4

    .line 267
    :cond_c
    :goto_5
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 268
    if-gez p2, :cond_d

    .line 270
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected end-of-file processing argument line for: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 273
    :cond_d
    if-nez v6, :cond_17

    .line 275
    const/16 v9, 0x5c

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_e

    const/16 v9, 0x27

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_e

    const/16 v9, 0x22

    move/from16 v0, p2

    move v1, v9

    if-ne v0, v1, :cond_f

    .line 277
    :cond_e
    move/from16 v6, p2

    .line 278
    goto :goto_5

    .line 280
    :cond_f
    const/16 v9, 0xa

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_10

    const/16 v9, 0xd

    move/from16 v0, p2

    move v1, v9

    if-ne v0, v1, :cond_15

    .line 301
    :cond_10
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .end local v6           #state:I
    if-lez v6, :cond_11

    .line 302
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 303
    :cond_11
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v6

    .line 304
    .local v6, nxargs:I
    if-lez v6, :cond_12

    .line 306
    new-array v5, v6, [Ljava/lang/String;

    .line 307
    .local v5, sargs:[Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 308
    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I

    .end local v7           #xargs:Ljava/util/Vector;
    move-result v5

    .line 309
    .local v5, ixarg:I
    if-ltz v5, :cond_12

    if-ge v5, v6, :cond_12

    .line 311
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-int v5, v6, v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v5           #ixarg:I
    move-result-object v5

    const-string v6, " unused meta args"

    .end local v6           #nxargs:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    :cond_12
    invoke-static {v3}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 316
    invoke-static {v4, v3}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v11

    .line 318
    .local v11, freader:Lgnu/mapping/InPort;
    add-int/lit8 p2, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 319
    .end local p2           #ch:I
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 320
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object p0

    .line 321
    .local p0, err:Lgnu/mapping/OutPort;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v9

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v10

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v12

    const/4 v13, 0x0

    move-object v14, v8

    invoke-static/range {v9 .. v14}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object p2

    .line 325
    .local p2, ex:Ljava/lang/Throwable;
    const/16 v3, 0x14

    move-object v0, v8

    move-object/from16 v1, p0

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 326
    .end local v3           #filename:Ljava/lang/String;
    if-eqz p2, :cond_14

    .line 328
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/text/SyntaxException;

    move/from16 p0, v0

    .end local p0           #err:Lgnu/mapping/OutPort;
    if-eqz p0, :cond_13

    .line 330
    move-object/from16 v0, p2

    check-cast v0, Lgnu/text/SyntaxException;

    move-object/from16 p0, v0

    .line 331
    .local p0, se:Lgnu/text/SyntaxException;
    invoke-virtual/range {p0 .. p0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p0

    .end local p0           #se:Lgnu/text/SyntaxException;
    move-object/from16 v0, p0

    move-object v1, v8

    if-ne v0, v1, :cond_13

    .line 332
    const/16 p0, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->exit(I)V

    .line 334
    :cond_13
    throw p2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    .end local v4           #fstream:Ljava/io/InputStream;
    .end local v11           #freader:Lgnu/mapping/InPort;
    .end local p2           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception p0

    .line 339
    .local p0, ex:Ljava/lang/Throwable;
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object p2

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 340
    const/16 p0, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->exit(I)V

    .line 342
    .end local p0           #ex:Ljava/lang/Throwable;
    :cond_14
    const/16 p0, -0x1

    goto/16 :goto_3

    .line 282
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v4       #fstream:Ljava/io/InputStream;
    .local v5, sbuf:Ljava/lang/StringBuffer;
    .local v6, state:I
    .restart local v7       #xargs:Ljava/util/Vector;
    .local p0, args:[Ljava/lang/String;
    .local p2, ch:I
    :cond_15
    const/16 v9, 0x20

    move/from16 v0, p2

    move v1, v9

    if-eq v0, v1, :cond_16

    const/16 v9, 0x9

    move/from16 v0, p2

    move v1, v9

    if-ne v0, v1, :cond_18

    .line 284
    :cond_16
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_c

    .line 286
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 287
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_5

    .line 292
    :cond_17
    const/16 v9, 0x5c

    if-ne v6, v9, :cond_19

    .line 293
    const/4 v6, 0x0

    .line 299
    :cond_18
    move/from16 v0, p2

    int-to-char v0, v0

    move v9, v0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 294
    :cond_19
    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_18

    .line 296
    const/4 v6, 0x0

    .line 297
    goto/16 :goto_5

    .line 344
    .end local v3           #filename:Ljava/lang/String;
    .end local v4           #fstream:Ljava/io/InputStream;
    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    .end local v7           #xargs:Ljava/util/Vector;
    .end local v8           #messages:Lgnu/text/SourceMessages;
    .local v6, something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    .local p2, maxArg:I
    :cond_1a
    const-string v3, "-s"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "--"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 346
    :cond_1b
    add-int/lit8 p1, p1, 0x1

    .line 347
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 348
    invoke-static/range {p0 .. p1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 349
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 350
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object p0

    .end local p0           #args:[Ljava/lang/String;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p2

    .end local p2           #maxArg:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 351
    const/16 p0, -0x1

    goto/16 :goto_3

    .line 353
    .restart local p0       #args:[Ljava/lang/String;
    .restart local p2       #maxArg:I
    :cond_1c
    const-string v3, "-w"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 355
    add-int/lit8 p1, p1, 0x1

    .line 356
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 357
    invoke-static/range {p0 .. p1}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 358
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 359
    invoke-static {}, Lkawa/repl;->startGuiConsole()V

    .line 360
    const/4 v3, 0x1

    .end local v6           #something_done:Z
    .local v3, something_done:Z
    move v4, v3

    .end local v3           #something_done:Z
    .local v4, something_done:Z
    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    goto/16 :goto_1

    .line 362
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_1d
    const-string v3, "-d"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 364
    add-int/lit8 p1, p1, 0x1

    .line 365
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1e

    .line 366
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 367
    :cond_1e
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v3

    .line 368
    .local v3, manager:Lgnu/expr/ModuleManager;
    aget-object v4, p0, p1

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleManager;->setCompilationDirectory(Ljava/lang/String;)V

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    move v4, v6

    .line 369
    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 370
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_1f
    const-string v3, "--target"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "target"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 372
    :cond_20
    add-int/lit8 p1, p1, 0x1

    .line 373
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_21

    .line 374
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 375
    :cond_21
    aget-object v3, p0, p1

    .line 376
    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    const-string v4, "7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 377
    const/high16 v4, 0x33

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    .line 378
    :cond_22
    const-string v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "1.6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 379
    :cond_23
    const/high16 v4, 0x32

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 380
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    :cond_24
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "1.5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 381
    :cond_25
    const/high16 v4, 0x31

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 382
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    :cond_26
    const-string v4, "1.4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 383
    const/high16 v4, 0x30

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 384
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    :cond_27
    const-string v4, "1.3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 385
    const/high16 v4, 0x2f

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 386
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    :cond_28
    const-string v4, "1.2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 387
    const/high16 v4, 0x2e

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 388
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    :cond_29
    const-string v4, "1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 389
    const v4, 0x2d0003

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 391
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    :cond_2a
    invoke-static {v3}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 393
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_2b
    const-string v3, "-P"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 395
    add-int/lit8 p1, p1, 0x1

    .line 396
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2c

    .line 397
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 398
    :cond_2c
    aget-object v3, p0, p1

    sput-object v3, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 400
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_2d
    const-string v3, "-T"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 402
    add-int/lit8 p1, p1, 0x1

    .line 403
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2e

    .line 404
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 405
    :cond_2e
    aget-object v3, p0, p1

    sput-object v3, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 407
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_2f
    const-string v3, "-C"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 409
    add-int/lit8 p1, p1, 0x1

    .line 410
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_30

    .line 411
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 412
    :cond_30
    invoke-static/range {p0 .. p2}, Lkawa/repl;->compileFiles([Ljava/lang/String;II)V

    .line 413
    const/16 p0, -0x1

    goto/16 :goto_3

    .line 415
    :cond_31
    const-string v3, "--output-format"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "--format"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 418
    :cond_32
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_33

    .line 419
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 420
    :cond_33
    aget-object v3, p0, p1

    invoke-static {v3}, Lkawa/Shell;->setDefaultFormat(Ljava/lang/String;)V

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 422
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_34
    const-string v3, "--connect"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 424
    add-int/lit8 p1, p1, 0x1

    .line 425
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_35

    .line 426
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 428
    :cond_35
    aget-object v3, p0, p1

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 429
    const/4 v3, 0x0

    .line 444
    .local v3, port:I
    :goto_6
    :try_start_3
    new-instance v4, Ljava/net/Socket;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 445
    .local v4, socket:Ljava/net/Socket;
    new-instance v3, Lkawa/Telnet;

    .end local v3           #port:I
    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 446
    .local v3, conn:Lkawa/Telnet;
    invoke-virtual {v3}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v4

    .line 447
    .local v4, sin:Ljava/io/InputStream;
    invoke-virtual {v3}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v5

    .line 448
    .local v5, sout:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/PrintStream;

    .end local v3           #conn:Lkawa/Telnet;
    const/4 v7, 0x1

    invoke-direct {v3, v5, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 449
    .local v3, pout:Ljava/io/PrintStream;
    invoke-static {v4}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 450
    invoke-static {v3}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 451
    invoke-static {v3}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    move v4, v6

    .line 458
    .end local v6           #something_done:Z
    .local v4, something_done:Z
    goto/16 :goto_1

    .line 434
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .end local v5           #sout:Ljava/io/OutputStream;
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_36
    :try_start_4
    aget-object v3, p0, p1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    .local v3, port:I
    goto :goto_6

    .line 436
    .end local v3           #port:I
    :catch_2
    move-exception v3

    .line 438
    .local v3, ex:Ljava/lang/NumberFormatException;
    const-string v3, "--connect port#"

    .end local v3           #ex:Ljava/lang/NumberFormatException;
    invoke-static {v3}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 439
    const/4 v3, -0x1

    .local v3, port:I
    goto :goto_6

    .line 453
    .end local v3           #port:I
    :catch_3
    move-exception p0

    .line 455
    .local p0, ex:Ljava/io/IOException;
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local p1           #iArg:I
    invoke-virtual/range {p0 .. p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 456
    new-instance p1, Ljava/lang/Error;

    invoke-virtual/range {p0 .. p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 459
    .local p0, args:[Ljava/lang/String;
    .restart local p1       #iArg:I
    :cond_37
    const-string v3, "--server"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 461
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 462
    add-int/lit8 p1, p1, 0x1

    .line 463
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_38

    .line 464
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 466
    :cond_38
    aget-object p2, p0, p1

    .end local p2           #maxArg:I
    const-string v3, "-"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 467
    const/16 p0, 0x0

    .line 482
    .local p0, port:I
    :goto_7
    :try_start_5
    new-instance p2, Ljava/net/ServerSocket;

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 484
    .local p2, ssocket:Ljava/net/ServerSocket;
    invoke-virtual/range {p2 .. p2}, Ljava/net/ServerSocket;->getLocalPort()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-result p1

    .line 485
    .end local p0           #port:I
    .local p1, port:I
    :try_start_6
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listening on port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    :goto_8
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "waiting ... "

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintStream;->flush()V

    .line 489
    invoke-virtual/range {p2 .. p2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p0

    .line 490
    .local p0, client:Ljava/net/Socket;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got connection from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/net/Socket;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lkawa/TelnetRepl;->serve(Lgnu/expr/Language;Ljava/net/Socket;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 496
    .end local p0           #client:Ljava/net/Socket;
    :catch_4
    move-exception p0

    .line 498
    .end local p2           #ssocket:Ljava/net/ServerSocket;
    .local p0, ex:Ljava/io/IOException;
    :goto_9
    new-instance p1, Ljava/lang/Error;

    .end local p1           #port:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 472
    .local p0, args:[Ljava/lang/String;
    .local p1, iArg:I
    :cond_39
    :try_start_7
    aget-object p0, p0, p1

    .end local p0           #args:[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    move-result p0

    .local p0, port:I
    goto/16 :goto_7

    .line 474
    .end local p0           #port:I
    :catch_5
    move-exception p0

    .line 476
    .local p0, ex:Ljava/lang/NumberFormatException;
    const-string p0, "--server port#"

    .end local p0           #ex:Ljava/lang/NumberFormatException;
    invoke-static/range {p0 .. p0}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 477
    const/16 p0, -0x1

    .local p0, port:I
    goto/16 :goto_7

    .line 501
    .local p0, args:[Ljava/lang/String;
    .local p2, maxArg:I
    :cond_3a
    const-string v3, "--http-auto-handler"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 503
    add-int/lit8 p1, p1, 0x2

    .line 504
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_3b

    .line 505
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 521
    :cond_3b
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "kawa: HttpServer classes not found"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 522
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 525
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_3c
    const-string v3, "--http-start"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 527
    add-int/lit8 p1, p1, 0x1

    .line 528
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_3d

    .line 529
    const-string v3, "missing httpd port argument"

    invoke-static {v3}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 556
    :cond_3d
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "kawa: HttpServer classes not found"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 560
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_3e
    const-string v3, "--main"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 562
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->generateMainDefault:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 564
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_3f
    const-string v3, "--applet"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 566
    sget v3, Lkawa/repl;->defaultParseOptions:I

    or-int/lit8 v3, v3, 0x10

    sput v3, Lkawa/repl;->defaultParseOptions:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 568
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_40
    const-string v3, "--servlet"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 570
    sget v3, Lkawa/repl;->defaultParseOptions:I

    or-int/lit8 v3, v3, 0x20

    sput v3, Lkawa/repl;->defaultParseOptions:I

    .line 571
    const/4 v3, 0x2

    sput v3, Lgnu/kawa/servlet/HttpRequestContext;->importServletDefinitions:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 573
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_41
    const-string v3, "--debug-dump-zip"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 575
    const-string v3, "kawa-zip-dump-"

    sput-object v3, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 577
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_42
    const-string v3, "--debug-print-expr"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 579
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->debugPrintExpr:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 581
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_43
    const-string v3, "--debug-print-final-expr"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 583
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 585
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_44
    const-string v3, "--debug-error-prints-stack-trace"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 587
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/text/SourceMessages;->debugStackTraceOnError:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 589
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_45
    const-string v3, "--debug-warning-prints-stack-trace"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 591
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/text/SourceMessages;->debugStackTraceOnWarning:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 593
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_46
    const-string v3, "--module-nonstatic"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "--no-module-static"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 596
    :cond_47
    const/4 v3, -0x1

    sput v3, Lgnu/expr/Compilation;->moduleStatic:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 598
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_48
    const-string v3, "--module-static"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 600
    const/4 v3, 0x1

    sput v3, Lgnu/expr/Compilation;->moduleStatic:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 602
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_49
    const-string v3, "--module-static-run"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 604
    const/4 v3, 0x2

    sput v3, Lgnu/expr/Compilation;->moduleStatic:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 606
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4a
    const-string v3, "--no-inline"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "--inline=none"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 609
    :cond_4b
    const/4 v3, 0x0

    sput-boolean v3, Lgnu/expr/Compilation;->inlineOk:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 611
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4c
    const-string v3, "--no-console"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 612
    const/4 v3, 0x1

    sput-boolean v3, Lkawa/repl;->noConsole:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 613
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4d
    const-string v3, "--inline"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 615
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Compilation;->inlineOk:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 617
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4e
    const-string v3, "--cps"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 619
    const/4 v3, 0x4

    sput v3, Lgnu/expr/Compilation;->defaultCallConvention:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 622
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_4f
    const-string v3, "--full-tailcalls"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 624
    const/4 v3, 0x3

    sput v3, Lgnu/expr/Compilation;->defaultCallConvention:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 627
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_50
    const-string v3, "--no-full-tailcalls"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 629
    const/4 v3, 0x1

    sput v3, Lgnu/expr/Compilation;->defaultCallConvention:I

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 632
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_51
    const-string v3, "--pedantic"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 634
    const/4 v3, 0x1

    sput-boolean v3, Lgnu/expr/Language;->requirePedantic:Z

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 636
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_52
    const-string v3, "--help"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 638
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lkawa/repl;->printOptions(Ljava/io/PrintStream;)V

    .line 639
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 641
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_53
    const-string v3, "--author"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 643
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Per Bothner <per@bothner.com>"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 644
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .restart local v3       #arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .restart local v4       #something_done:Z
    goto/16 :goto_1

    .line 646
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_54
    const-string v3, "--version"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 648
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Kawa "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 649
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lkawa/Version;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 650
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 651
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Copyright (C) 2009 Per Bothner"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 652
    const/4 v3, 0x1

    .end local v6           #something_done:Z
    .local v3, something_done:Z
    move v4, v3

    .end local v3           #something_done:Z
    .restart local v4       #something_done:Z
    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    goto/16 :goto_1

    .line 654
    .end local v3           #arg:Ljava/lang/String;
    .end local v4           #something_done:Z
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_55
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5e

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_5e

    .line 656
    move-object v3, v9

    .line 657
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_63

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_63

    .line 658
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_56

    const/4 v4, 0x2

    :goto_a
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 659
    .end local v3           #name:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    :goto_b
    invoke-static {v4}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v3

    .line 660
    .local v3, lang:Lgnu/expr/Language;
    if-eqz v3, :cond_58

    .line 662
    sget-object v5, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v5, :cond_57

    .line 663
    invoke-static {v3}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 666
    :goto_c
    sput-object v3, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    move-object v3, v4

    .end local v4           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    :goto_d
    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    move v4, v6

    .line 709
    .end local v6           #something_done:Z
    .local v4, something_done:Z
    goto/16 :goto_1

    .line 658
    .end local v4           #something_done:Z
    .local v3, name:Ljava/lang/String;
    .restart local v6       #something_done:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_56
    const/4 v4, 0x1

    goto :goto_a

    .line 665
    .local v3, lang:Lgnu/expr/Language;
    .local v4, name:Ljava/lang/String;
    :cond_57
    invoke-static {v3}, Lgnu/expr/Language;->setCurrentLanguage(Lgnu/expr/Language;)V

    goto :goto_c

    .line 671
    :cond_58
    const-string v3, "="

    .end local v3           #lang:Lgnu/expr/Language;
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 673
    .local v3, eq:I
    if-gez v3, :cond_5a

    .line 674
    const/4 v3, 0x0

    .local v3, opt_value:Ljava/lang/String;
    move-object v15, v3

    .end local v3           #opt_value:Ljava/lang/String;
    .local v15, opt_value:Ljava/lang/String;
    move-object v3, v4

    .end local v4           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    move-object v4, v15

    .line 682
    .end local v15           #opt_value:Ljava/lang/String;
    .local v4, opt_value:Ljava/lang/String;
    :goto_e
    const-string v5, "no-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-le v5, v7, :cond_5b

    const/4 v5, 0x1

    move v7, v5

    .line 684
    .local v7, startsWithNo:Z
    :goto_f
    if-nez v4, :cond_62

    if-eqz v7, :cond_62

    .line 686
    const-string v4, "no"

    .line 687
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .end local v4           #opt_value:Ljava/lang/String;
    .local v5, opt_value:Ljava/lang/String;
    move-object v4, v3

    .line 690
    .end local v3           #name:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    :goto_10
    sget-object v3, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v3, v4, v5}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, msg:Ljava/lang/String;
    if-eqz v3, :cond_5d

    .line 694
    if-eqz v7, :cond_59

    const-string v7, "unknown option name"

    .end local v7           #startsWithNo:Z
    if-ne v3, v7, :cond_59

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #msg:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "both \'--no-\' prefix and \'="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' specified"

    .end local v5           #opt_value:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 697
    .restart local v3       #msg:Ljava/lang/String;
    :cond_59
    const-string v5, "unknown option name"

    if-ne v3, v5, :cond_5c

    .line 699
    invoke-static {v9}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    move-object v3, v4

    .end local v4           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    goto :goto_d

    .line 677
    .local v3, eq:I
    .restart local v4       #name:Ljava/lang/String;
    :cond_5a
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 678
    .restart local v5       #opt_value:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v4           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    move-object v4, v5

    .end local v5           #opt_value:Ljava/lang/String;
    .local v4, opt_value:Ljava/lang/String;
    goto :goto_e

    .line 682
    :cond_5b
    const/4 v5, 0x0

    move v7, v5

    goto :goto_f

    .line 703
    .local v3, msg:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    :cond_5c
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kawa: bad option \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #msg:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 705
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_5d
    move-object v3, v4

    .end local v4           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    goto/16 :goto_d

    .line 710
    .end local v3           #name:Ljava/lang/String;
    :cond_5e
    invoke-static {v9}, Lgnu/expr/ApplicationMainSupport;->processSetProperty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 713
    .end local v9           #arg:Ljava/lang/String;
    :cond_5f
    if-eqz v6, :cond_60

    const/16 p0, -0x1

    goto/16 :goto_3

    :cond_60
    move/from16 p0, p1

    goto/16 :goto_3

    .line 496
    .end local p2           #maxArg:I
    .restart local v9       #arg:Ljava/lang/String;
    .local p0, port:I
    :catch_6
    move-exception p1

    move-object/from16 v15, p1

    move/from16 p1, p0

    .end local p0           #port:I
    .local p1, port:I
    move-object/from16 p0, v15

    goto/16 :goto_9

    .local p0, args:[Ljava/lang/String;
    .local p1, iArg:I
    .restart local p2       #maxArg:I
    :cond_61
    move-object v3, v9

    .end local v9           #arg:Ljava/lang/String;
    .local v3, arg:Ljava/lang/String;
    move v4, v6

    .end local v6           #something_done:Z
    .local v4, something_done:Z
    goto/16 :goto_1

    .local v3, name:Ljava/lang/String;
    .local v4, opt_value:Ljava/lang/String;
    .restart local v6       #something_done:Z
    .restart local v7       #startsWithNo:Z
    .restart local v9       #arg:Ljava/lang/String;
    :cond_62
    move-object v5, v4

    .end local v4           #opt_value:Ljava/lang/String;
    .restart local v5       #opt_value:Ljava/lang/String;
    move-object v4, v3

    .end local v3           #name:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    goto/16 :goto_10

    .end local v4           #name:Ljava/lang/String;
    .end local v5           #opt_value:Ljava/lang/String;
    .end local v7           #startsWithNo:Z
    .restart local v3       #name:Ljava/lang/String;
    :cond_63
    move-object v4, v3

    .end local v3           #name:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    goto/16 :goto_b

    .local v3, count:Ljava/lang/String;
    .local v4, skipLines:I
    :cond_64
    move v3, v4

    .end local v4           #skipLines:I
    .local v3, skipLines:I
    goto/16 :goto_2
.end method

.method public static setArgs([Ljava/lang/String;I)V
    .locals 0
    .parameter "args"
    .parameter "arg_start"

    .prologue
    .line 150
    invoke-static {p0, p1}, Lgnu/expr/ApplicationMainSupport;->setArgs([Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public static shouldUseGuiConsole()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 870
    sget-boolean v0, Lkawa/repl;->noConsole:Z

    if-eqz v0, :cond_0

    move v0, v4

    .line 882
    :goto_0
    return v0

    .line 874
    :cond_0
    :try_start_0
    const-string v0, "java.lang.System"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "console"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v4

    .line 877
    goto :goto_0

    .line 879
    :catch_0
    move-exception v0

    :cond_1
    move v0, v3

    .line 882
    goto :goto_0
.end method

.method private static startGuiConsole()V
    .locals 4

    .prologue
    .line 891
    :try_start_0
    const-string v1, "kawa.GuiConsole"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :goto_0
    return-void

    .line 893
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 895
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create Kawa window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 896
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 33
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "env"

    .prologue
    .line 38
    iget-object v0, p0, Lkawa/repl;->language:Lgnu/expr/Language;

    check-cast p1, Lgnu/mapping/Environment;

    .end local p1
    invoke-static {v0, p1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 39
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method
