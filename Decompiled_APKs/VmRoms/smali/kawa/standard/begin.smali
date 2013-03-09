.class public Lkawa/standard/begin;
.super Lkawa/lang/Syntax;
.source "begin.java"


# static fields
.field public static final begin:Lkawa/standard/begin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lkawa/standard/begin;

    invoke-direct {v0}, Lkawa/standard/begin;-><init>()V

    sput-object v0, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    .line 15
    sget-object v0, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    const-string v1, "begin"

    invoke-virtual {v0, v1}, Lkawa/standard/begin;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 19
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 3
    .parameter "st"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 24
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p3, v1, p2, v2}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v0

    .line 25
    .local v0, body:Lgnu/lists/LList;
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_0

    .line 28
    iget-object v1, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    return-void
.end method
