.class public Lgnu/kawa/lispexpr/ResolveNamespace;
.super Lkawa/lang/Syntax;
.source "ResolveNamespace.java"


# static fields
.field public static final resolveNamespace:Lgnu/kawa/lispexpr/ResolveNamespace;

.field public static final resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;


# instance fields
.field resolvingQName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/lispexpr/ResolveNamespace;

    const-string v1, "$resolve-namespace$"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgnu/kawa/lispexpr/ResolveNamespace;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveNamespace:Lgnu/kawa/lispexpr/ResolveNamespace;

    .line 14
    new-instance v0, Lgnu/kawa/lispexpr/ResolveNamespace;

    const-string v1, "$resolve-qname"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/lispexpr/ResolveNamespace;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;

    .line 25
    sget-object v0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveNamespace:Lgnu/kawa/lispexpr/ResolveNamespace;

    const-string v1, "$resolve-namespace$"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ResolveNamespace;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "resolvingQName"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-boolean p2, p0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolvingQName:Z

    .line 23
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 9
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 29
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    .line 30
    .local v2, pair:Lgnu/lists/Pair;
    const/4 v6, 0x0

    invoke-virtual {p2, v2, v6}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v3

    .line 31
    .local v3, prefix:Lgnu/expr/Expression;
    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v1

    .line 32
    .local v1, namespace:Lgnu/mapping/Namespace;
    if-nez v1, :cond_0

    .line 34
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, pstr:Ljava/lang/String;
    const-string v6, "[default-element-namespace]"

    if-ne v4, v6, :cond_1

    .line 36
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    .line 45
    .end local v4           #pstr:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolvingQName:Z

    if-eqz v6, :cond_2

    .line 47
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #pair:Lgnu/lists/Pair;
    check-cast v2, Lgnu/lists/Pair;

    .line 48
    .restart local v2       #pair:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, local:Ljava/lang/String;
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-virtual {v1, v0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 52
    .end local v0           #local:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 39
    .restart local v4       #pstr:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 40
    .local v5, savePos:Ljava/lang/Object;
    const/16 v6, 0x65

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown namespace prefix "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 41
    invoke-virtual {p2, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 42
    invoke-static {v4, v4}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v1

    goto :goto_0

    .line 52
    .end local v4           #pstr:Ljava/lang/String;
    .end local v5           #savePos:Ljava/lang/Object;
    :cond_2
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_1
.end method
