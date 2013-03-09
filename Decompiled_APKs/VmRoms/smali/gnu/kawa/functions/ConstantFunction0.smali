.class public Lgnu/kawa/functions/ConstantFunction0;
.super Lgnu/mapping/Procedure0;
.source "ConstantFunction0.java"


# instance fields
.field final constant:Lgnu/expr/QuoteExp;

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V
    .locals 2
    .parameter "name"
    .parameter "constant"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure0;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/functions/ConstantFunction0;->value:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lgnu/kawa/functions/ConstantFunction0;->constant:Lgnu/expr/QuoteExp;

    .line 26
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileMisc:validateApplyConstantFunction0"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/ConstantFunction0;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 18
    invoke-static {p2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    .line 19
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lgnu/kawa/functions/ConstantFunction0;->value:Ljava/lang/Object;

    return-object v0
.end method
