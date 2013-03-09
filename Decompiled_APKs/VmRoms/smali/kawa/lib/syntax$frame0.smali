.class public Lkawa/lib/syntax$frame0;
.super Lgnu/expr/ModuleBody;
.source "syntax.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/syntax;->lambda5(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field $unnamed$0:Lkawa/lang/TemplateScope;

.field $unnamed$1:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda6loop(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "clauses"

    .prologue
    const/4 v3, 0x0

    .line 161
    const/4 v0, 0x5

    iget-object v1, p0, Lkawa/lib/syntax$frame0;->$unnamed$1:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/syntax;->Lit85:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lkawa/lib/syntax;->Lit86:Lkawa/lang/SyntaxTemplate;

    iget-object v2, p0, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {v1, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/lib/syntax;->Lit87:Lkawa/lang/SyntaxTemplate;

    iget-object v3, p0, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {v2, v0, v3}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkawa/lib/syntax$frame0;->lambda6loop(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    sget-object v1, Lkawa/lib/syntax;->Lit88:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    :cond_1
    sget-object v1, Lkawa/lib/syntax;->Lit89:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lkawa/lib/syntax;->Lit90:Lkawa/lang/SyntaxTemplate;

    iget-object v2, p0, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {v1, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    const-string p0, "invalid case-lambda clause"

    .end local p0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast p0, [Ljava/lang/Object;

    move-object v1, p0

    :goto_1
    invoke-static {v0, v1}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    goto :goto_1

    .restart local p0
    :cond_3
    const-string v0, "syntax-case"

    invoke-static {v0, p1}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
