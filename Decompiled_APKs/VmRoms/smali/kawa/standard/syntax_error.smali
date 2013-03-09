.class public Lkawa/standard/syntax_error;
.super Lkawa/lang/Syntax;
.source "syntax_error.java"


# static fields
.field public static final syntax_error:Lkawa/standard/syntax_error;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lkawa/standard/syntax_error;

    invoke-direct {v0}, Lkawa/standard/syntax_error;-><init>()V

    sput-object v0, Lkawa/standard/syntax_error;->syntax_error:Lkawa/standard/syntax_error;

    .line 14
    sget-object v0, Lkawa/standard/syntax_error;->syntax_error:Lkawa/standard/syntax_error;

    const-string v1, "%syntax-error"

    invoke-virtual {v0, v1}, Lkawa/standard/syntax_error;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 7
    .parameter "form"
    .parameter "message"

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v0, buffer:Ljava/lang/StringBuffer;
    array-length v2, p1

    .line 42
    .local v2, len:I
    if-eqz p1, :cond_0

    if-nez v2, :cond_2

    .line 43
    :cond_0
    const-string v5, "invalid syntax"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :cond_1
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v4

    check-cast v4, Lkawa/lang/Translator;

    .line 50
    .local v4, tr:Lkawa/lang/Translator;
    if-nez v4, :cond_3

    .line 51
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 46
    .end local v4           #tr:Lkawa/lang/Translator;
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 47
    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1           #i:I
    .restart local v4       #tr:Lkawa/lang/Translator;
    :cond_3
    invoke-virtual {v4, p0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    .local v3, savePos:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 59
    invoke-virtual {v4, v3}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v5

    :catchall_0
    move-exception v5

    invoke-virtual {v4, v3}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v5
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 6
    .parameter "obj"
    .parameter "tr"

    .prologue
    const/16 v5, 0x20

    .line 18
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 19
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 20
    .local v3, words:I
    :goto_0
    instance-of v4, p1, Lgnu/lists/Pair;

    if-eqz v4, :cond_1

    .line 22
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .line 23
    .local v2, pair:Lgnu/lists/Pair;
    if-lez v3, :cond_0

    .line 24
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 25
    :cond_0
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_0

    .line 29
    .end local v2           #pair:Lgnu/lists/Pair;
    :cond_1
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v4, :cond_3

    .line 31
    if-lez v3, :cond_2

    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 33
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 35
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4
.end method
