.class public Lgnu/kawa/slib/cut;
.super Lgnu/expr/ModuleBody;
.source "cut.scm"


# static fields
.field public static final $Prvt$srfi$Mn26$Mninternal$Mncut:Lkawa/lang/Macro;

.field public static final $Prvt$srfi$Mn26$Mninternal$Mncute:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/cut;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final cut:Lkawa/lang/Macro;

.field public static final cute:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .prologue
    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "rest-slot"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "apply"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "<>"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lambda"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "let"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "<...>"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "cute"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u0003"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0000"

    const-string v3, "\u0011\u0018\u0004\t\u0010\t\u0010\t\u0010\u0002"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "srfi-26-internal-cute"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/cut;->Lit7:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "cut"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u0003"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0000"

    const-string v3, "\u0011\u0018\u0004\t\u0010\t\u0010\u0002"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "srfi-26-internal-cut"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/cut;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v1, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    sget-object v1, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x2

    sget-object v1, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x4

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f<\u000c\u0017\r\u001f\u0018\u0008\u0008\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0003\u0001\u0001\u0003"

    const-string v3, "\u0011\u0018\u0004\t\u000b\u0008\u0011\u0018\u000c\u0019\u0008\u0005\u0003\u0008\t\u0013\u0008\u001d\u001b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/cut;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f<\u000c\u0017\r\u001f\u0018\u0008\u0008\u000c\u0002\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0003\u0001\u0001\u0003"

    const-string v3, "\u0011\u0018\u0004\t\u000b\u0008\u0011\u0018\u000c)\u0011\u0005\u0003\u0018\u0014\u0008\u0011\u0018\u001c\t\u0013\u0011\u001d\u001b\u0018$"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/cut;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x3

    sget-object v10, Lgnu/kawa/slib/cut;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x4

    sget-object v10, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "cut.scm"

    const v13, 0x57048

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u0002\u001b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0003\u0001\u0003\u0000"

    const-string v3, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c\t\u000b)\u0011\u0015\u0013\u0018\u0014\u001a"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "cut.scm"

    const v13, 0x5d016

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "cut.scm"

    const v13, 0x5d03b

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u001f#"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0003\u0001\u0000"

    const-string v3, "\u0011\u0018\u0004\t\u00039)\u0011\u0018\u000c\u0008\u001b\u000b)\u0011\u0015\u0013\u0018\u0014\""

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "cut.scm"

    const v13, 0x62039

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x5

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/cut;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v1, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    sget-object v1, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x2

    sget-object v1, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x4

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018,\r\u0007\u0000\u0008\u0008<\u000c\u000f\r\u0017\u0010\u0008\u0008\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0003\u0001\u0003"

    const-string v3, "\u0011\u0018\u0004\u0019\u0008\u0005\u0003\u0008)\u0011\u0018\u000c\u0008\u000b\u0008\u0015\u0013"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v10, 0x1

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v11, "begin"

    invoke-direct {v5, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    aput-object v5, v4, v10

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018,\r\u0007\u0000\u0008\u0008<\u000c\u000f\r\u0017\u0010\u0008\u0008\u000c\u0002\u0008"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0003\u0001\u0003"

    const-string v3, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c\u0008\u0011\u0018\u0014\t\u000b\u0011\u0015\u0013\u0018\u001c"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lgnu/kawa/slib/cut;->Lit14:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/cut;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x3

    sget-object v10, Lgnu/kawa/slib/cut;->Lit14:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "cut.scm"

    const v13, 0x3d03e

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018,\r\u0007\u0000\u0008\u0008,\r\u000f\u0008\u0008\u0008\u000c\u0002\u0013"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0003\u0003\u0000"

    const-string v3, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c)\u0011\r\u000b\u0018\u0014\u0012"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "cut.scm"

    const v13, 0x4102b

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "cut.scm"

    const v13, 0x4103c

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018,\r\u0007\u0000\u0008\u0008,\r\u000f\u0008\u0008\u0008\u000c\u0017\u001b"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0003\u0003\u0001\u0000"

    const-string v3, "\u0011\u0018\u0004\u0019\u0008\u0005\u0003)\u0011\r\u000b\u0008\u0013\u001a"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x4

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/cut;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/kawa/slib/cut;

    invoke-direct {v0}, Lgnu/kawa/slib/cut;-><init>()V

    sput-object v0, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    sget-object v0, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit1:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->$Prvt$srfi$Mn26$Mninternal$Mncut:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->$Prvt$srfi$Mn26$Mninternal$Mncute:Lkawa/lang/Macro;

    .line 51
    sget-object v0, Lgnu/kawa/slib/cut;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->cut:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/cut;->Lit6:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit7:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->cute:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 51
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
