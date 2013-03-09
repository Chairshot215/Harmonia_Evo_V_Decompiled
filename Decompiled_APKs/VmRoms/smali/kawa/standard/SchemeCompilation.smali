.class public Lkawa/standard/SchemeCompilation;
.super Ljava/lang/Object;
.source "SchemeCompilation.java"


# static fields
.field public static final lambda:Lkawa/lang/Lambda;

.field public static final repl:Lkawa/repl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    new-instance v0, Lkawa/lang/Lambda;

    invoke-direct {v0}, Lkawa/lang/Lambda;-><init>()V

    sput-object v0, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    .line 14
    new-instance v0, Lkawa/repl;

    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    invoke-direct {v0, v1}, Lkawa/repl;-><init>(Lgnu/expr/Language;)V

    sput-object v0, Lkawa/standard/SchemeCompilation;->repl:Lkawa/repl;

    .line 15
    sget-object v0, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    sget-object v1, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    sget-object v2, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    sget-object v3, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Lambda;->setKeywords(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
