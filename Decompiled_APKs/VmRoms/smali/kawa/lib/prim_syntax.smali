.class public Lkawa/lib/prim_syntax;
.super Lgnu/expr/ModuleBody;
.source "prim_syntax.scm"


# static fields
.field public static final $instance:Lkawa/lib/prim_syntax;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lkawa/lang/SyntaxRules;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lkawa/lang/SyntaxRules;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lkawa/lang/SyntaxPattern;

.field static final Lit15:Lkawa/lang/SyntaxTemplate;

.field static final Lit16:Lkawa/lang/SyntaxTemplate;

.field static final Lit17:Lkawa/lang/SyntaxPattern;

.field static final Lit18:Lkawa/lang/SyntaxTemplate;

.field static final Lit19:Lkawa/lang/SyntaxTemplate;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lkawa/lang/SyntaxPattern;

.field static final Lit22:Lkawa/lang/SyntaxTemplate;

.field static final Lit23:Lkawa/lang/SyntaxPattern;

.field static final Lit24:Lkawa/lang/SyntaxTemplate;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lkawa/lang/SyntaxPattern;

.field static final Lit27:Lkawa/lang/SyntaxTemplate;

.field static final Lit28:Lkawa/lang/SyntaxTemplate;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit30:Lkawa/lang/SyntaxPattern;

.field static final Lit31:Lkawa/lang/SyntaxTemplate;

.field static final Lit32:Lkawa/lang/SyntaxTemplate;

.field static final Lit33:Lkawa/lang/SyntaxTemplate;

.field static final Lit34:Lkawa/lang/SyntaxPattern;

.field static final Lit35:Lkawa/lang/SyntaxPattern;

.field static final Lit36:Lkawa/lang/SyntaxTemplate;

.field static final Lit37:Lkawa/lang/SyntaxTemplate;

.field static final Lit38:Lkawa/lang/SyntaxTemplate;

.field static final Lit39:Lkawa/lang/SyntaxPattern;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit40:Lkawa/lang/SyntaxTemplate;

.field static final Lit41:Lkawa/lang/SyntaxTemplate;

.field static final Lit42:Lkawa/lang/SyntaxTemplate;

.field static final Lit43:Lkawa/lang/SyntaxPattern;

.field static final Lit44:Lkawa/lang/SyntaxPattern;

.field static final Lit45:Lgnu/mapping/SimpleSymbol;

.field static final Lit46:Lgnu/mapping/SimpleSymbol;

.field static final Lit47:Lgnu/mapping/SimpleSymbol;

.field static final Lit48:Lgnu/mapping/SimpleSymbol;

.field static final Lit49:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit50:Lgnu/mapping/SimpleSymbol;

.field static final Lit51:Lgnu/math/IntNum;

.field static final Lit52:Lgnu/math/IntNum;

.field static final Lit53:Lgnu/math/IntNum;

.field static final Lit54:Lgnu/math/IntNum;

.field static final Lit55:Lgnu/math/IntNum;

.field static final Lit56:Lgnu/math/IntNum;

.field static final Lit57:Lgnu/mapping/SimpleSymbol;

.field static final Lit58:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final define:Lkawa/lang/Macro;

.field public static final define$Mnconstant:Lkawa/lang/Macro;

.field public static final define$Mnprivate:Lkawa/lang/Macro;

.field public static final define$Mnsyntax:Lkawa/lang/Macro;

.field public static final if:Lkawa/lang/Macro;

.field public static final letrec:Lkawa/lang/Macro;

.field public static final syntax$Mn$Grexpression:Lkawa/lang/Macro;

.field public static final syntax$Mnbody$Mn$Grexpression:Lkawa/lang/Macro;

.field public static final syntax$Mnerror:Lgnu/expr/ModuleMethod;

.field public static final try$Mncatch:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lambda"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit58:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%define-syntax"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit57:Lgnu/mapping/SimpleSymbol;

    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->Lit56:Lgnu/math/IntNum;

    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->Lit55:Lgnu/math/IntNum;

    const/4 v0, 0x4

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->Lit54:Lgnu/math/IntNum;

    const/4 v0, 0x5

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->Lit53:Lgnu/math/IntNum;

    const/16 v0, 0x8

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->Lit52:Lgnu/math/IntNum;

    const/16 v0, 0x9

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->Lit51:Lgnu/math/IntNum;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%define"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "::"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quasiquote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit48:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "kawa.lang.SyntaxForms"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit47:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "$lookup$"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit45:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u001b"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit44:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u001c\u000c\u001f\u0008#"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit43:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000"

    const-string v2, ":"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit42:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000"

    const-string v2, "\u0011\u0018\u0004\t\u001b\u00083"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit45:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit41:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000"

    const-string v2, "\t\u001b\t#\t+\u0018\u0004"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v7, "prim_syntax.scm"

    const v8, 0x7303e

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit40:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "L\u000c\u001f\u000c\'\u000c/\u000c7\u0008;"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit39:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000\u0001\u0001\u0000"

    const-string v2, "*"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit38:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000\u0001\u0001\u0000"

    const-string v2, "\u0011\u0018\u0004\t\u001b\u0008#"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit45:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit37:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000\u0001\u0001\u0000"

    const-string v2, "\t\u001b\u0018\u0004"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v7, "prim_syntax.scm"

    const v8, 0x6e022

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit36:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, ",\u000c\u001f\u000c\'\u0008+"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit35:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u0008"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit34:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u0012"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit33:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    const-string v2, "\u0001\u0001\u0000"

    const-string v3, "\u0018\u0004"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v6, "%let"

    invoke-direct {v0, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v7, "prim_syntax.scm"

    const v8, 0x7d00b

    invoke-static {v0, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit32:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u000b"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit31:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u000f\u0013"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit30:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "letrec"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0003\u0003\u0002"

    const-string v2, "(\u0008\u0015A\u0008\t\u0013\u0011\u0018\u0004\u0008\u001b\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit28:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0003\u0003\u0002"

    const-string v2, "\u000b"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit27:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u000f-\u000c\u0017\u000c\u001f#\u0010\u0018\u0008"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit26:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "try-catch"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0000"

    const-string v2, "\n"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit24:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000b"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit23:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0001\u0001\u0000"

    const-string v2, "#"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u000c\'+"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit21:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0001"

    const-string v2, "\u001b"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0001"

    const-string v2, "\u0013"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit19:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0001"

    const-string v2, "\u000b"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit18:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit17:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001"

    const-string v2, "\u0013"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit16:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001"

    const-string v2, "\u000b"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit14:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "if"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "syntax-body->expression"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001"

    const-string v3, "\u0011\u0018\u0004\u0008\u0003"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lkawa/lib/prim_syntax;->Lit47:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lkawa/lib/prim_syntax;->Lit48:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v14, "rewriteBody"

    invoke-direct {v5, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v5, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v13, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v5, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v12, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    const-string v12, "prim_syntax.scm"

    const v13, 0x42007

    invoke-static {v11, v5, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/prim_syntax;->Lit12:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "syntax->expression"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001"

    const-string v3, "\u0011\u0018\u0004\u0008\u0003"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lkawa/lib/prim_syntax;->Lit47:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lkawa/lib/prim_syntax;->Lit48:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v14, "rewrite"

    invoke-direct {v5, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v5, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v13, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v5, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v12, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    const-string v12, "prim_syntax.scm"

    const v13, 0x3d007

    invoke-static {v11, v5, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/prim_syntax;->Lit10:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "syntax-error"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "define-constant"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    sget-object v1, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x2

    sget-object v1, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x5

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\n\u000c\u001f\u000c\'\u0008"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\t\u001b\u0008#"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lkawa/lib/prim_syntax;->Lit51:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\u001f\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u001b"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lkawa/lib/prim_syntax;->Lit52:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0000\u0000"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\t\n\u0012"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const/16 v10, 0xa

    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u0002\u000c\u000f\u000c\u0017\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\t\u000b\u0008\u0013"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit51:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u000b"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit52:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x5

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/prim_syntax;->Lit7:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "define-private"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    sget-object v1, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x2

    sget-object v1, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x5

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\n\u000c\u001f\u000c\'\u0008"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\t\u001b\u0008#"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lkawa/lib/prim_syntax;->Lit53:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\u001f\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u001b"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lkawa/lib/prim_syntax;->Lit54:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0000\u0000"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\t\n\u0012"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const/4 v10, 0x6

    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u0002\u000c\u000f\u000c\u0017\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\t\u000b\u0008\u0013"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit53:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u000b"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit54:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x5

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/prim_syntax;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "define"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    sget-object v1, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x2

    sget-object v1, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x5

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\n\u000c\u001f\u000c\'\u0008"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\t\u001b\u0008#"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lkawa/lib/prim_syntax;->Lit55:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\u001f\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u001b"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lkawa/lib/prim_syntax;->Lit56:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0000\u0000"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\t\n\u0012"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const/4 v10, 0x2

    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u0002\u000c\u000f\u000c\u0017\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\t\u000b\u0008\u0013"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit55:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u000b"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit56:Lgnu/math/IntNum;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x5

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/prim_syntax;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "define-syntax"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    sget-object v1, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x4

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018l\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u001b#"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001\u0000\u0000"

    const-string v3, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0008\u0011\u0018\u0014\t\u001a\""

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit57:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lkawa/lib/prim_syntax;->Lit58:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\u001f\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0008\u001b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit57:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0000\u0000"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0008\u0011\u0018\u000c\t\n\u0012"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit57:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/prim_syntax;->Lit58:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0008\u000b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lkawa/lib/prim_syntax;->Lit57:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x5

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/prim_syntax;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lib/prim_syntax;

    invoke-direct {v0}, Lkawa/lib/prim_syntax;-><init>()V

    sput-object v0, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    sget-object v0, Lkawa/lib/prim_syntax;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit1:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->define$Mnsyntax:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/prim_syntax;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->define:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/prim_syntax;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->define$Mnprivate:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/prim_syntax;->Lit6:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit7:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->define$Mnconstant:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    const/4 v2, 0x1

    sget-object v3, Lkawa/lib/prim_syntax;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v4, -0xfff

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->syntax$Mnerror:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/prim_syntax;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/prim_syntax;->Lit10:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v0, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->syntax$Mn$Grexpression:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/prim_syntax;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/prim_syntax;->Lit12:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v0, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->syntax$Mnbody$Mn$Grexpression:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/prim_syntax;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x1001

    invoke-direct {v2, v1, v3, v4, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v3, "source-location"

    const-string v4, "prim_syntax.scm:69"

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v0, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->if:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/prim_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x1001

    invoke-direct {v2, v1, v3, v4, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v3, "source-location"

    const-string v4, "prim_syntax.scm:89"

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v0, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->try$Mncatch:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/prim_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/16 v5, 0x1001

    invoke-direct {v2, v1, v3, v4, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v3, "prim_syntax.scm:98"

    invoke-virtual {v2, v1, v3}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v0, v2, v1}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->letrec:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "x"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const/4 v0, 0x6

    invoke-static {v0, v5}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/prim_syntax;->Lit14:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Lgnu/expr/IfExp;

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lkawa/lib/prim_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v3

    sget-object v4, Lkawa/lib/prim_syntax;->Lit16:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v4, v0, v3}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-direct {v1, v2, v0, v5}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v1

    .line 85
    .end local p0
    :goto_0
    return-object v0

    .line 72
    .restart local p0
    :cond_0
    sget-object v1, Lkawa/lib/prim_syntax;->Lit17:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    new-instance v1, Lgnu/expr/IfExp;

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lkawa/lib/prim_syntax;->Lit18:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v3

    sget-object v4, Lkawa/lib/prim_syntax;->Lit19:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v4, v0, v3}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    sget-object v5, Lkawa/lib/prim_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v0, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lkawa/lib/prim_syntax;->Lit21:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lkawa/lib/prim_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    const-string p0, "too many expressions for \'if\'"

    .end local p0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast p0, [Ljava/lang/Object;

    move-object v1, p0

    :goto_1
    invoke-static {v0, v1}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    goto :goto_1

    .restart local p0
    :cond_3
    sget-object v1, Lkawa/lib/prim_syntax;->Lit23:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 85
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lkawa/lib/prim_syntax;->Lit24:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    const-string p0, "too few expressions for \'if\'"

    .end local p0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    check-cast p0, [Ljava/lang/Object;

    move-object v1, p0

    :goto_2
    invoke-static {v0, v1}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    goto :goto_2

    .restart local p0
    :cond_5
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "x"

    .prologue
    .line 89
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/prim_syntax;->Lit26:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lkawa/lib/prim_syntax;->Lit27:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lkawa/lib/prim_syntax;->Lit28:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkawa/standard/try_catch;->rewrite(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static lambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "form"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    new-instance v0, Lkawa/lib/prim_syntax$frame;

    invoke-direct {v0}, Lkawa/lib/prim_syntax$frame;-><init>()V

    .line 99
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v2, v0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    iput-object v1, v0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    .line 100
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit30:Lkawa/lang/SyntaxPattern;

    iget-object v2, v0, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v6}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lkawa/lib/prim_syntax;->Lit31:Lkawa/lang/SyntaxTemplate;

    iget-object v3, v0, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkawa/lib/prim_syntax$frame;->lambda4processBinding(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, v0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    invoke-static {v1}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v1

    iput-object v1, v0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    .line 124
    iget-object v1, v0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    invoke-static {v1}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v1

    iput-object v1, v0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    .line 125
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lkawa/lib/prim_syntax;->Lit32:Lkawa/lang/SyntaxTemplate;

    iget-object v4, v0, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    aput-object v5, v4, v6

    sget-object v5, Lkawa/lib/prim_syntax;->Lit33:Lkawa/lang/SyntaxTemplate;

    iget-object v0, v0, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    invoke-virtual {v5, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v3}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v2}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1
    .parameter "id"
    .parameter "msg"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lkawa/standard/syntax_error;->error(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    invoke-static {p2}, Lkawa/lib/prim_syntax;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-static {p2}, Lkawa/lib/prim_syntax;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-static {p2}, Lkawa/lib/prim_syntax;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v2, :cond_1

    .line 55
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

    invoke-static {v0, v1}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

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

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 69
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 98
    :goto_0
    return v0

    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 89
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 69
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 55
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
    .line 3
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 55
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
