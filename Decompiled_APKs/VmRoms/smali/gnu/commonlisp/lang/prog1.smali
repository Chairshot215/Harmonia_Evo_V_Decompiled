.class public Lgnu/commonlisp/lang/prog1;
.super Lkawa/lang/Syntax;
.source "prog1.java"


# static fields
.field public static final prog1:Lgnu/commonlisp/lang/prog1;

.field public static final prog2:Lgnu/commonlisp/lang/prog1;


# instance fields
.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lgnu/commonlisp/lang/prog1;

    const-string v1, "prog1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/commonlisp/lang/prog1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/commonlisp/lang/prog1;->prog1:Lgnu/commonlisp/lang/prog1;

    .line 12
    new-instance v0, Lgnu/commonlisp/lang/prog1;

    const-string v1, "prog2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lgnu/commonlisp/lang/prog1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/commonlisp/lang/prog1;->prog2:Lgnu/commonlisp/lang/prog1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "index"

    .prologue
    .line 15
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 16
    iput p2, p0, Lgnu/commonlisp/lang/prog1;->index:I

    .line 17
    invoke-virtual {p0, p1}, Lgnu/commonlisp/lang/prog1;->setName(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 12
    .parameter "obj"
    .parameter "tr"

    .prologue
    const/4 v10, 0x1

    .line 22
    invoke-static {p1}, Lgnu/lists/LList;->length(Ljava/lang/Object;)I

    move-result v6

    .line 23
    .local v6, nexps:I
    iget v8, p0, Lgnu/commonlisp/lang/prog1;->index:I

    if-ge v6, v8, :cond_0

    .line 24
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "too few expressions in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lgnu/commonlisp/lang/prog1;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    .line 49
    .end local p0
    :goto_0
    return-object v8

    .line 25
    .restart local p0
    :cond_0
    iget v8, p0, Lgnu/commonlisp/lang/prog1;->index:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 27
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v7, v0

    .line 28
    .local v7, pair:Lgnu/lists/Pair;
    new-instance v8, Lgnu/expr/BeginExp;

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v9}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v9

    sget-object v10, Lgnu/commonlisp/lang/prog1;->prog1:Lgnu/commonlisp/lang/prog1;

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lgnu/commonlisp/lang/prog1;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    goto :goto_0

    .line 33
    .end local v7           #pair:Lgnu/lists/Pair;
    :cond_1
    new-array v4, v10, [Lgnu/expr/Expression;

    .line 34
    .local v4, inits:[Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/LetExp;

    invoke-direct {v5, v4}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 35
    .local v5, let:Lgnu/expr/LetExp;
    new-array v1, v6, [Lgnu/expr/Expression;

    .line 36
    .local v1, body:[Lgnu/expr/Expression;
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v7, v0

    .line 37
    .restart local v7       #pair:Lgnu/lists/Pair;
    const/4 v8, 0x0

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v9}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v9

    aput-object v9, v4, v8

    .line 38
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 39
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sub-int v8, v6, v10

    if-ge v3, v8, :cond_2

    .line 41
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v7, v0

    .line 42
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v8

    aput-object v8, v1, v3

    .line 43
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 45
    :cond_2
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Object;

    .end local p0
    invoke-virtual {v5, p0}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 46
    .local v2, decl:Lgnu/expr/Declaration;
    sub-int v8, v6, v10

    new-instance v9, Lgnu/expr/ReferenceExp;

    invoke-direct {v9, v2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v9, v1, v8

    .line 47
    invoke-static {v1}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v8

    iput-object v8, v5, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 48
    invoke-virtual {p2}, Lkawa/lang/Translator;->mustCompileHere()V

    move-object v8, v5

    .line 49
    goto :goto_0
.end method
