.class public Lgnu/kawa/slib/syntaxutils;
.super Lgnu/expr/ModuleBody;
.source "syntaxutils.scm"


# static fields
.field public static final $Prvt$$Ex:Lkawa/lang/Macro;

.field public static final $Prvt$typecase$Pc:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/syntaxutils;

.field static final Lit0:Lgnu/expr/Keyword;

.field static final Lit1:Lgnu/lists/PairWithPosition;

.field static final Lit10:Lgnu/lists/PairWithPosition;

.field static final Lit11:Lgnu/lists/PairWithPosition;

.field static final Lit12:Lgnu/lists/PairWithPosition;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lkawa/lang/SyntaxRules;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lkawa/lang/SyntaxRules;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/expr/Keyword;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/lists/PairWithPosition;

.field static final Lit4:Lgnu/lists/PairWithPosition;

.field static final Lit5:Lgnu/lists/PairWithPosition;

.field static final Lit6:Lgnu/lists/PairWithPosition;

.field static final Lit7:Lgnu/math/IntNum;

.field static final Lit8:Lgnu/math/IntNum;

.field static final Lit9:Lgnu/lists/PairWithPosition;

.field public static final expand:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lambda"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "as"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "else"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "let"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "cond"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "or"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "eql"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "expand"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "!"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit15:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u000f\r\u0017\u0010\u0008\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0003"

    const-string v3, "\u0011\u0018\u0004\t\u000b)\u0011\u0018\u000c\u0008\u0003\u0008\u0015\u0013"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "invoke"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x1

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x3

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/syntaxutils;->Lit16:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "typecase%"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit18:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x2

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x6

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007<\u000c\u0002\r\u000f\u0008\u0008\u0008\r\u0017\u0010\u0008\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0003\u0003"

    const-string v3, "\u0011\u0018\u0004\u0008\r\u000b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\\,\u000c\u0002\u000c\u000f\u0008\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit18:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0003\u0003"

    const-string v3, "\u0011\u0018\u0004yY\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014\u0008\u000b\u0008\u0015\u0013\u0008\u0011\u0018\u001c\u0008\u0011\u0018$\t\u0003\u0008\u001d\u001b"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x1

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "eqv?"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x3

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit24:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x4

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\\,\u000c\u0002\u000c\u000f\u0008\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0003\u0003"

    const-string v3, "\u0011\u0018\u0004\t\u0003)\t\u000b\u0008\u0015\u0013\u0008\u001d\u001b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007l<\u000c\u0002\r\u000f\u0008\u0008\u0008\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0003\u0003\u0003"

    const-string v3, "\u0011\u0018\u0004\u0091\u0008\u0011\u0018\u000c\u0008\u0011\u0018\u0014\u0011\u0008\u0003\u0008\u0011\u0018\u001c\u0008\u0015\u0013\u0008\u0011\u0018$\t\u0003I\r\t\u000b\u0008\u0011\u0018\u000c\u0008\u0003\u0008\u0011\u0018,\u0008\u0011\u0018$\t\u0003\u0008\u001d\u001b"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x1

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "f"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit26:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x3

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x4

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x5

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007<\u000c\u000f\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0003\u0003"

    const-string v3, "\u0011\u0018\u0004\u00f19\u0011\u0018\u000c\t\u0003\u0008\u000b\u0008\u0011\u0018\u0014Q\u0008\t\u0003\u0011\u0018\u001c\t\u000b\u0008\u0003\u0008\u0011\u0018$\u0008\u0015\u0013\u0008\u0011\u0018,\u0008\u0011\u00184\t\u0003\u0008\u001d\u001b"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x1

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "instance?"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x3

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "::"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x4

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x5

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit24:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x6

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001"

    const-string v3, "\u0011\u0018\u0004\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\u0011\u0018,\u0008\u0003"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "error"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x1

    const-string v10, "typecase% failed"

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit15:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x3

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "getClass"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x4

    sget-object v10, Lgnu/kawa/slib/syntaxutils;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x5

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "<object>"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x4

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/syntaxutils;->Lit14:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, ":"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "syntaxutils.scm"

    const v3, 0x9b010

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit12:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "syntaxutils.scm"

    const v3, 0x99010

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit11:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "syntaxutils.scm"

    const v3, 0x8700c

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit10:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "syntaxutils.scm"

    const v3, 0x75004

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit9:Lgnu/lists/PairWithPosition;

    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "if"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "syntaxutils.scm"

    const v3, 0x66007

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit6:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "syntaxutils.scm"

    const v3, 0x6401b

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit5:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "syntaxutils.scm"

    const v3, 0x5c007

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit4:Lgnu/lists/PairWithPosition;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "syntaxutils.scm"

    const v3, 0x5a007

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit3:Lgnu/lists/PairWithPosition;

    const-string v0, "lang"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit2:Lgnu/expr/Keyword;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "syntaxutils.scm"

    const v3, 0x4401d

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit1:Lgnu/lists/PairWithPosition;

    const-string v0, "env"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    new-instance v0, Lgnu/kawa/slib/syntaxutils;

    invoke-direct {v0}, Lgnu/kawa/slib/syntaxutils;-><init>()V

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit14:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->$Prvt$typecase$Pc:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit15:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit16:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->$Prvt$$Ex:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/slib/syntaxutils;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v4, -0xfff

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->expand:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static expand$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "sexp"
    .parameter "argsArray"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    invoke-static {p1, v4, v1}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    move-object v0, v1

    .line 68
    .local v0, env:Ljava/lang/Object;
    :goto_0
    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->Lit1:Lgnu/lists/PairWithPosition;

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v4

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v3, v2, v5

    invoke-static {v2}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lgnu/kawa/slib/syntaxutils;->rewriteForm$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .end local v0           #env:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static rewriteForm$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 11
    .parameter "exp"
    .parameter "argsArray"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 71
    sget-object v7, Lgnu/kawa/slib/syntaxutils;->Lit2:Lgnu/expr/Keyword;

    invoke-static {p1, v9, v7}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v7, v8, :cond_1

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v7

    move-object v2, v7

    .local v2, lang:Ljava/lang/Object;
    :goto_0
    sget-object v7, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    invoke-static {p1, v9, v7}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v7, v8, :cond_0

    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object v7

    move-object v1, v7

    .line 74
    .local v1, env:Ljava/lang/Object;
    :goto_1
    :try_start_0
    check-cast v1, Lgnu/mapping/Environment;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #env:Ljava/lang/Object;
    :try_start_1
    move-object v0, v2

    check-cast v0, Lgnu/expr/Language;

    move-object v7, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v1, v7}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object v4

    .line 76
    .local v4, namelookup:Lgnu/expr/NameLookup;
    new-instance v3, Lgnu/text/SourceMessages;

    invoke-direct {v3}, Lgnu/text/SourceMessages;-><init>()V

    .line 75
    .local v3, messages:Lgnu/text/SourceMessages;
    new-instance v6, Lkawa/lang/Translator;

    :try_start_2
    check-cast v2, Lgnu/expr/Language;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2           #lang:Ljava/lang/Object;
    invoke-direct {v6, v2, v3, v4}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    .local v6, translator:Lkawa/lang/Translator;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    invoke-static {v6}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v5

    .line 80
    .local v5, saved$Mncomp:Lgnu/expr/Compilation;
    :try_start_3
    invoke-virtual {v6, p0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 82
    invoke-static {v5}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return-object v7

    .line 80
    :catchall_0
    move-exception v7

    .line 82
    invoke-static {v5}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 80
    throw v7

    .line 75
    .end local v3           #messages:Lgnu/text/SourceMessages;
    .end local v4           #namelookup:Lgnu/expr/NameLookup;
    .end local v5           #saved$Mncomp:Lgnu/expr/Compilation;
    .end local v6           #translator:Lkawa/lang/Translator;
    .restart local v1       #env:Ljava/lang/Object;
    .restart local v2       #lang:Ljava/lang/Object;
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "gnu.expr.NameLookup.getInstance(gnu.mapping.Environment,gnu.expr.Language)"

    invoke-direct {v8, v7, v9, v10, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .end local v1           #env:Ljava/lang/Object;
    :catch_1
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "gnu.expr.NameLookup.getInstance(gnu.mapping.Environment,gnu.expr.Language)"

    const/4 v10, 0x2

    invoke-direct {v8, v7, v9, v10, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 77
    .restart local v3       #messages:Lgnu/text/SourceMessages;
    .restart local v4       #namelookup:Lgnu/expr/NameLookup;
    :catch_2
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "kawa.lang.Translator.<init>(gnu.expr.Language,gnu.text.SourceMessages,gnu.expr.NameLookup)"

    invoke-direct {v8, v7, v9, v10, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .end local v3           #messages:Lgnu/text/SourceMessages;
    .end local v4           #namelookup:Lgnu/expr/NameLookup;
    :cond_0
    move-object v1, v7

    goto :goto_1

    .end local v2           #lang:Ljava/lang/Object;
    :cond_1
    move-object v2, v7

    goto :goto_0
.end method

.method static unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;
    .locals 11
    .parameter "exp"

    .prologue
    const/4 v7, -0x2

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 85
    new-instance v0, Lgnu/kawa/slib/syntaxutils$frame;

    invoke-direct {v0}, Lgnu/kawa/slib/syntaxutils$frame;-><init>()V

    .line 86
    instance-of v4, p0, Lgnu/expr/LetExp;

    if-eqz v4, :cond_0

    :try_start_0
    check-cast p0, Lgnu/expr/LetExp;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local p0, exp:Lgnu/expr/LetExp;
    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewriteLet(Lgnu/expr/LetExp;)Ljava/lang/Object;

    move-result-object v4

    .end local p0           #exp:Lgnu/expr/LetExp;
    :goto_0
    return-object v4

    .local p0, exp:Lgnu/expr/Expression;
    :cond_0
    instance-of v4, p0, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_1

    :try_start_1
    check-cast p0, Lgnu/expr/QuoteExp;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .local p0, exp:Lgnu/expr/QuoteExp;
    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewriteQuote(Lgnu/expr/QuoteExp;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .local p0, exp:Lgnu/expr/Expression;
    :cond_1
    instance-of v4, p0, Lgnu/expr/SetExp;

    if-eqz v4, :cond_2

    :try_start_2
    check-cast p0, Lgnu/expr/SetExp;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .local p0, exp:Lgnu/expr/SetExp;
    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit3:Lgnu/lists/PairWithPosition;

    aput-object v5, v4, v9

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v9

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/SetExp;->getNewValue()Lgnu/expr/Expression;

    move-result-object v7

    invoke-static {v7}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v7, v6, v10

    invoke-static {v6}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .local p0, exp:Lgnu/expr/Expression;
    :cond_2
    instance-of v4, p0, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_4

    :try_start_3
    check-cast p0, Lgnu/expr/LambdaExp;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .local p0, exp:Lgnu/expr/LambdaExp;
    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit4:Lgnu/lists/PairWithPosition;

    aput-object v5, v4, v9

    new-array v5, v8, [Ljava/lang/Object;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v6, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    .line 92
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 93
    .local v0, closureEnv:Lgnu/kawa/slib/syntaxutils$frame;
    .local v1, decl:Lgnu/expr/Declaration;
    :goto_1
    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    .line 92
    .local v3, v:Ljava/lang/Object;
    iget-object v6, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    invoke-static {v3, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    iput-object v6, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    .line 94
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_1

    .end local v3           #v:Ljava/lang/Object;
    :cond_3
    iget-object v6, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    invoke-static {v6}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v6

    aput-object v6, v5, v9

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-static {v7}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v7, v6, v10

    invoke-static {v6}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 86
    .end local v0           #closureEnv:Lgnu/kawa/slib/syntaxutils$frame;
    .end local v1           #decl:Lgnu/expr/Declaration;
    .local p0, exp:Lgnu/expr/Expression;
    :cond_4
    instance-of v4, p0, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_5

    :try_start_4
    check-cast p0, Lgnu/expr/ReferenceExp;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    .local p0, exp:Lgnu/expr/ReferenceExp;
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .local p0, exp:Lgnu/expr/Expression;
    :cond_5
    instance-of v4, p0, Lgnu/expr/ApplyExp;

    if-eqz v4, :cond_6

    :try_start_5
    check-cast p0, Lgnu/expr/ApplyExp;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .local p0, exp:Lgnu/expr/ApplyExp;
    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewriteApply(Lgnu/expr/ApplyExp;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .local p0, exp:Lgnu/expr/Expression;
    :cond_6
    instance-of v4, p0, Lgnu/expr/BeginExp;

    if-eqz v4, :cond_7

    :try_start_6
    check-cast p0, Lgnu/expr/BeginExp;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    .local p0, exp:Lgnu/expr/BeginExp;
    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit5:Lgnu/lists/PairWithPosition;

    aput-object v5, v4, v9

    invoke-virtual {p0}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v5

    invoke-static {v5}, Lgnu/kawa/slib/syntaxutils;->unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .local p0, exp:Lgnu/expr/Expression;
    :cond_7
    instance-of v4, p0, Lgnu/expr/IfExp;

    if-eqz v4, :cond_9

    :try_start_7
    check-cast p0, Lgnu/expr/IfExp;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    .local p0, exp:Lgnu/expr/IfExp;
    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit6:Lgnu/lists/PairWithPosition;

    aput-object v5, v4, v9

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/IfExp;->getTest()Lgnu/expr/Expression;

    move-result-object v6

    invoke-static {v6}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v9

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/IfExp;->getThenClause()Lgnu/expr/Expression;

    move-result-object v7

    invoke-static {v7}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    new-array v7, v8, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lgnu/expr/IfExp;->getElseClause()Lgnu/expr/Expression;

    move-result-object v2

    .line 105
    .local v2, eclause:Lgnu/expr/Expression;
    if-nez v2, :cond_8

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_2
    aput-object v8, v7, v9

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v8, v7, v10

    invoke-static {v7}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    invoke-static {v2}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    goto :goto_2

    .end local v2           #eclause:Lgnu/expr/Expression;
    .local p0, exp:Lgnu/expr/Expression;
    :cond_9
    move-object v4, p0

    .line 86
    goto/16 :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_5
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_6
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_7
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "exp"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method static unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;
    .locals 8
    .parameter "exps"

    .prologue
    .line 109
    new-instance v1, Lgnu/kawa/slib/syntaxutils$frame0;

    invoke-direct {v1}, Lgnu/kawa/slib/syntaxutils$frame0;-><init>()V

    .line 110
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v5, v1, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    .line 111
    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    .local v3, len:Ljava/lang/Integer;
    move-object v6, v5

    .local v1, closureEnv:Lgnu/kawa/slib/syntaxutils$frame0;
    :goto_0
    sget-object v5, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 113
    invoke-virtual {v5, v6, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v7, :cond_0

    .line 114
    move-object v0, v6

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aget-object v5, p0, v5

    invoke-static {v5}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v4

    .line 110
    .local v4, v:Ljava/lang/Object;
    iget-object v5, v1, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    invoke-static {v4, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    iput-object v5, v1, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    .line 112
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, i:Ljava/lang/Object;
    move-object v6, v2

    goto :goto_0

    .end local v2           #i:Ljava/lang/Object;
    .end local v4           #v:Ljava/lang/Object;
    :cond_0
    iget-object v5, v1, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    invoke-static {v5}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v5

    return-object v5
.end method

.method static unrewriteApply(Lgnu/expr/ApplyExp;)Ljava/lang/Object;
    .locals 16
    .parameter "exp"

    .prologue
    const/4 v15, 0x2

    const/4 v14, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v10

    .line 139
    .local v10, fun:Lgnu/expr/Expression;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/slib/syntaxutils;->unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v9

    .line 138
    .local v9, args:Ljava/lang/Object;
    instance-of v3, v10, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_1

    :try_start_0
    move-object v0, v10

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v11, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v11, fun:Lgnu/expr/ReferenceExp;
    invoke-virtual {v11}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    .end local v10           #fun:Lgnu/expr/Expression;
    move-result-object v3

    move-object v2, v3

    .end local v11           #fun:Lgnu/expr/ReferenceExp;
    .local v2, fbinding:Lgnu/expr/Declaration;
    :goto_0
    const-string v3, "kawa.standard.Scheme"

    const-string v4, "applyToArgs"

    invoke-static {v3, v4}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v8

    .local v8, apply$Mnto$Mnargs:Lgnu/expr/Declaration;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object v12

    .line 146
    .local v12, fval:Ljava/lang/Object;
    if-nez v2, :cond_2

    move v3, v14

    :goto_1
    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v13, v3, 0x1

    .local v13, x:Z
    if-eqz v13, :cond_6

    .line 147
    if-nez v8, :cond_3

    move v3, v14

    :goto_2
    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v13, v3, 0x1

    .line 146
    if-eqz v13, :cond_4

    const-string v3, "field"

    const-string v4, "field"

    const-string v5, "getField"

    const-string v6, "isField"

    sget-object v7, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    invoke-static/range {v1 .. v7}, Lgnu/kawa/reflect/SlotGet;->getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v8, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-ne v3, v4, :cond_5

    :cond_0
    :goto_3
    move-object v1, v9

    .line 158
    .end local v13           #x:Z
    :goto_4
    return-object v1

    .line 138
    .end local v2           #fbinding:Lgnu/expr/Declaration;
    .end local v8           #apply$Mnto$Mnargs:Lgnu/expr/Declaration;
    .end local v12           #fval:Ljava/lang/Object;
    .restart local v10       #fun:Lgnu/expr/Expression;
    :cond_1
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_0

    .end local v10           #fun:Lgnu/expr/Expression;
    .restart local v2       #fbinding:Lgnu/expr/Declaration;
    .restart local v8       #apply$Mnto$Mnargs:Lgnu/expr/Declaration;
    .restart local v12       #fval:Ljava/lang/Object;
    :cond_2
    move v3, v1

    .line 146
    goto :goto_1

    .restart local v13       #x:Z
    :cond_3
    move v3, v1

    .line 147
    goto :goto_2

    .line 146
    :cond_4
    if-nez v13, :cond_0

    .line 151
    :cond_5
    instance-of v3, v12, Lgnu/kawa/functions/Convert;

    if-eqz v3, :cond_7

    new-array v3, v15, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/syntaxutils;->Lit11:Lgnu/lists/PairWithPosition;

    aput-object v4, v3, v1

    aput-object v9, v3, v14

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    .line 146
    .local v13, x:Ljava/lang/Object;
    :goto_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v3, :cond_9

    move-object v1, v13

    goto :goto_4

    .local v13, x:Z
    :cond_6
    if-eqz v13, :cond_5

    goto :goto_3

    .line 151
    :cond_7
    instance-of v3, v12, Lgnu/kawa/functions/GetNamedPart;

    if-eqz v3, :cond_8

    new-array v3, v15, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/syntaxutils;->Lit12:Lgnu/lists/PairWithPosition;

    aput-object v4, v3, v1

    aput-object v9, v3, v14

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    goto :goto_5

    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v13, v3

    goto :goto_5

    .line 158
    .local v13, x:Ljava/lang/Object;
    :cond_9
    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v10}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object v9, v3, v14

    invoke-static {v3}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 140
    .end local v2           #fbinding:Lgnu/expr/Declaration;
    .end local v8           #apply$Mnto$Mnargs:Lgnu/expr/Declaration;
    .end local v12           #fval:Ljava/lang/Object;
    .end local v13           #x:Ljava/lang/Object;
    .restart local v10       #fun:Lgnu/expr/Expression;
    :catch_0
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "fun"

    const/4 v5, -0x2

    invoke-direct {v3, v1, v4, v5, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method static unrewriteLet(Lgnu/expr/LetExp;)Ljava/lang/Object;
    .locals 14
    .parameter "exp"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 116
    new-instance v1, Lgnu/kawa/slib/syntaxutils$frame1;

    invoke-direct {v1}, Lgnu/kawa/slib/syntaxutils$frame1;-><init>()V

    .line 117
    new-array v7, v13, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit9:Lgnu/lists/PairWithPosition;

    aput-object v5, v7, v11

    new-array v8, v13, [Ljava/lang/Object;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v5, v1, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    .line 118
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    .local v2, decl:Lgnu/expr/Declaration;
    move-object v6, v5

    .local v1, closureEnv:Lgnu/kawa/slib/syntaxutils$frame1;
    :goto_0
    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    iget-object v10, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move-object v0, v6

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aget-object v5, v10, v5

    invoke-static {v5}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v5}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    .line 117
    .local v4, v:Lgnu/lists/Pair;
    iget-object v5, v1, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    invoke-static {v4, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    iput-object v5, v1, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    .line 119
    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 120
    .end local v2           #decl:Lgnu/expr/Declaration;
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v2       #decl:Lgnu/expr/Declaration;
    .local v3, i:Ljava/lang/Object;
    move-object v6, v3

    goto :goto_0

    .end local v3           #i:Ljava/lang/Object;
    .end local v4           #v:Lgnu/lists/Pair;
    :cond_0
    iget-object v5, v1, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    invoke-static {v5}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v5

    aput-object v5, v8, v11

    new-array v5, v13, [Ljava/lang/Object;

    iget-object v6, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-static {v6}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v11

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v6, v5, v12

    invoke-static {v5}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v8, v12

    invoke-static {v8}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v7, v12

    invoke-static {v7}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method static unrewriteQuote(Lgnu/expr/QuoteExp;)Ljava/lang/Object;
    .locals 8
    .parameter "exp"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 126
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, val:Ljava/lang/Object;
    invoke-static {v1}, Lgnu/math/Numeric;->asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, val:Lgnu/math/Numeric;
    move-object v2, v1

    .end local v1           #val:Lgnu/math/Numeric;
    :goto_0
    return-object v2

    .local v1, val:Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    :try_start_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v1, v2, :cond_1

    move v1, v7

    .local v1, val:Z
    :goto_1
    if-eqz v1, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .local v1, val:Ljava/lang/Object;
    :cond_1
    move v1, v6

    goto :goto_1

    .local v1, val:Z
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .local v1, val:Ljava/lang/Object;
    :cond_3
    instance-of v2, v1, Lgnu/text/Char;

    if-eqz v2, :cond_4

    :try_start_2
    check-cast v1, Lgnu/text/Char;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .local v1, val:Lgnu/text/Char;
    move-object v2, v1

    goto :goto_0

    .local v1, val:Ljava/lang/Object;
    :cond_4
    instance-of v2, v1, Lgnu/expr/Keyword;

    if-eqz v2, :cond_5

    :try_start_3
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .local v1, val:Lgnu/expr/Keyword;
    move-object v2, v1

    goto :goto_0

    .local v1, val:Ljava/lang/Object;
    :cond_5
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    :try_start_4
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    .local v1, val:Ljava/lang/CharSequence;
    move-object v2, v1

    goto :goto_0

    .local v1, val:Ljava/lang/Object;
    :cond_6
    sget-object v2, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    if-ne v1, v2, :cond_7

    move-object v2, v1

    goto :goto_0

    :cond_7
    sget-object v2, Lgnu/lists/EofClass;->eofValue:Lgnu/lists/EofClass;

    if-ne v1, v2, :cond_8

    move-object v2, v1

    goto :goto_0

    :cond_8
    instance-of v2, v1, Lgnu/bytecode/Type;

    if-eqz v2, :cond_9

    :try_start_5
    check-cast v1, Lgnu/bytecode/Type;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .line 133
    .local v1, val:Lgnu/bytecode/Type;
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    move-object v2, v0

    .line 128
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #val:Lgnu/bytecode/Type;
    :goto_2
    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "<~a>"

    aput-object v4, v3, v6

    aput-object v2, v3, v7

    invoke-static {v6, v3}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v2

    goto :goto_0

    .line 129
    .local v1, val:Ljava/lang/Object;
    :cond_9
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_a

    :try_start_6
    check-cast v1, Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    .line 134
    .local v1, val:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 129
    .local v1, val:Ljava/lang/Object;
    :cond_a
    new-array v2, v4, [Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/syntaxutils;->Lit10:Lgnu/lists/PairWithPosition;

    aput-object v3, v2, v6

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v4, v3, v7

    invoke-static {v3}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_2
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_3
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_4
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_5
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_6
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "val"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v2, :cond_1

    .line 67
    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v1, p2

    sub-int/2addr v1, v2

    new-array v2, v1, [Ljava/lang/Object;

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    invoke-static {v0, v1}, Lgnu/kawa/slib/syntaxutils;->expand$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p2, v3

    aput-object v3, v1, v2

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x5

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 6
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 67
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
