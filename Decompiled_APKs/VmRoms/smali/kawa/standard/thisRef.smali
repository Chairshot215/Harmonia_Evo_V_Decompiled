.class public Lkawa/standard/thisRef;
.super Lkawa/lang/Syntax;
.source "thisRef.java"


# static fields
.field public static final thisSyntax:Lkawa/standard/thisRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/thisRef;

    invoke-direct {v0}, Lkawa/standard/thisRef;-><init>()V

    sput-object v0, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    .line 10
    sget-object v0, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lkawa/standard/thisRef;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 6
    .parameter "form"
    .parameter "tr"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x65

    .line 14
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_6

    .line 16
    iget-object v1, p2, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 17
    .local v1, method:Lgnu/expr/LambdaExp;
    if-nez v1, :cond_3

    move-object v0, v5

    .line 18
    .local v0, firstParam:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v2

    if-nez v2, :cond_2

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    if-eqz v1, :cond_1

    iget-object v2, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v2, :cond_4

    .line 22
    :cond_1
    const-string v2, "use of \'this\' not in a named method"

    invoke-virtual {p2, v4, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 32
    :cond_2
    :goto_1
    new-instance v2, Lgnu/expr/ThisExp;

    invoke-direct {v2, v0}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    .line 35
    .end local v0           #firstParam:Lgnu/expr/Declaration;
    .end local v1           #method:Lgnu/expr/LambdaExp;
    :goto_2
    return-object v2

    .line 17
    .restart local v1       #method:Lgnu/expr/LambdaExp;
    :cond_3
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 23
    .restart local v0       #firstParam:Lgnu/expr/Declaration;
    :cond_4
    iget-object v2, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 24
    const-string v2, "use of \'this\' in a static method"

    invoke-virtual {p2, v4, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_5
    new-instance v0, Lgnu/expr/Declaration;

    .end local v0           #firstParam:Lgnu/expr/Declaration;
    sget-object v2, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v0, v2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 28
    .restart local v0       #firstParam:Lgnu/expr/Declaration;
    invoke-virtual {v1, v5, v0}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 29
    iget-object v2, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v3, 0x1000

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_1

    .line 35
    .end local v0           #firstParam:Lgnu/expr/Declaration;
    .end local v1           #method:Lgnu/expr/LambdaExp;
    :cond_6
    const-string v2, "this with parameter not implemented"

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_2
.end method
