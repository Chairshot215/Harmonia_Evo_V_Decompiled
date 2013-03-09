.class public Lkawa/lang/PatternScope;
.super Lgnu/expr/LetExp;
.source "PatternScope.java"


# instance fields
.field public matchArray:Lgnu/expr/Declaration;

.field public patternNesting:Ljava/lang/StringBuffer;

.field public pattern_names:Ljava/util/Vector;

.field previousSyntax:Lkawa/lang/PatternScope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 30
    return-void
.end method

.method public static pop(Lkawa/lang/Translator;)V
    .locals 1
    .parameter "tr"

    .prologue
    .line 55
    iget-object v0, p0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v0, v0, Lkawa/lang/PatternScope;->previousSyntax:Lkawa/lang/PatternScope;

    iput-object v0, p0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    .line 56
    return-void
.end method

.method public static push(Lkawa/lang/Translator;)Lkawa/lang/PatternScope;
    .locals 4
    .parameter "tr"

    .prologue
    .line 34
    new-instance v0, Lkawa/lang/PatternScope;

    invoke-direct {v0}, Lkawa/lang/PatternScope;-><init>()V

    .line 35
    .local v0, newScope:Lkawa/lang/PatternScope;
    iget-object v1, p0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    .line 36
    .local v1, oldScope:Lkawa/lang/PatternScope;
    iput-object v1, v0, Lkawa/lang/PatternScope;->previousSyntax:Lkawa/lang/PatternScope;

    .line 37
    iput-object v0, p0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    .line 38
    if-nez v1, :cond_0

    .line 40
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    .line 41
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, v0, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    .line 49
    :goto_0
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    iput-object v2, v0, Lkawa/lang/PatternScope;->outer:Lgnu/expr/ScopeExp;

    .line 50
    return-object v0

    .line 45
    :cond_0
    iget-object v2, v1, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    iput-object v2, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    .line 46
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, v1, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    goto :goto_0
.end method
