.class public Lgnu/kawa/slib/srfi34;
.super Lgnu/expr/ModuleBody;
.source "srfi34.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/slib/raise$Mnobject$Mnexception;
    }
.end annotation


# static fields
.field public static final $Prvt$$Lsraise$Mnobject$Mnexception$Gr:Ljava/lang/Class;

.field public static final $Prvt$guard$Mnaux:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/srfi34;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final guard:Lkawa/lang/Macro;

.field public static final raise:Lgnu/expr/ModuleMethod;

.field public static final with$Mnexception$Mnhandler:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .prologue
    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "<raise-object-exception>"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "ex"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "begin"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "if"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "let"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "temp"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "=>"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "else"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lkawa/lang/SyntaxRules;

    const/4 v4, 0x3

    new-array v11, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v6, "guard-aux"

    invoke-direct {v4, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v11, v5

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/srfi34;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v11, v4

    const/4 v4, 0x2

    sget-object v5, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v11, v4

    const/4 v4, 0x7

    new-array v12, v4, [Lkawa/lang/SyntaxRule;

    const/4 v13, 0x0

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u000c\u0007L\u000c\u0002\u000c\u000f\r\u0017\u0010\u0008\u0008\u0008"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lgnu/kawa/slib/srfi34;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v6, "\u0001\u0001\u0003"

    const-string v7, "\u0011\u0018\u0004\t\u000b\u0008\u0015\u0013"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v4, v12, v13

    const/4 v13, 0x1

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u000c\u0007<\u000c\u000f\u000c\u0002\u000c\u0017\u0008\u0008"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v6, "\u0001\u0001\u0001"

    const-string v7, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c!\t\u0013\u0018\u001c\u0008\u0003"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x1

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x2

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x3

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "srfi34.scm"

    const v17, 0x43014

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v4, v12, v13

    const/4 v13, 0x2

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u000c\u0007<\u000c\u000f\u000c\u0002\u000c\u0017\u0008\u000c\u001f\r\' \u0008\u0008"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v6, "\u0001\u0001\u0001\u0001\u0003"

    const-string v7, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c!\t\u0013\u0018\u001c\u0008\u0011\u0018$\t\u0003\t\u001b\u0008%#"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x1

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x2

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x3

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "srfi34.scm"

    const v17, 0x48014

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/4 v9, 0x4

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v4, v12, v13

    const/4 v13, 0x3

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u000c\u0007\u001c\u000c\u000f\u0008\u0008"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v6, "\u0001\u0001"

    const-string v7, "\u000b"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v4, v12, v13

    const/4 v13, 0x4

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u000c\u0007\u001c\u000c\u000f\u0008\u000c\u0017\r\u001f\u0018\u0008\u0008"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v6, "\u0001\u0001\u0001\u0003"

    const-string v7, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c\u0011\u0018\u000c\u0008\u0011\u0018\u001c\t\u0003\t\u0013\u0008\u001d\u001b"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x1

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x2

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x3

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v4, v12, v13

    const/4 v13, 0x5

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u000c\u0007L\u000c\u000f\u000c\u0017\r\u001f\u0018\u0008\u0008\u0008"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v6, "\u0001\u0001\u0001\u0003"

    const-string v7, "\u0011\u0018\u0004\t\u000bA\u0011\u0018\u000c\t\u0013\u0008\u001d\u001b\u0008\u0003"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x1

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v4, v12, v13

    const/4 v13, 0x6

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u000c\u0007L\u000c\u000f\u000c\u0017\r\u001f\u0018\u0008\u0008\u000c\'\r/(\u0008\u0008"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v6, "\u0001\u0001\u0001\u0003\u0001\u0003"

    const-string v7, "\u0011\u0018\u0004\t\u000bA\u0011\u0018\u000c\t\u0013\u0008\u001d\u001b\u0008\u0011\u0018\u0014\t\u0003\t#\u0008-+"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x1

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x2

    sget-object v14, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v4, v12, v13

    const/4 v4, 0x6

    invoke-direct {v10, v11, v12, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v10, Lgnu/kawa/slib/srfi34;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v12, Lkawa/lang/SyntaxRules;

    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v6, "guard"

    invoke-direct {v4, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v13, v5

    const/4 v4, 0x1

    new-array v14, v4, [Lkawa/lang/SyntaxRule;

    const/4 v15, 0x0

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x3

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v6, "\u0001\u0000\u0000"

    const-string v7, "\u0011\u0018\u0004!\u0011\u0018\u000c\u0012\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$)\u0008\t\u0003\u0018,\u0008\u0011\u00184\u0011\u0018<\n"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v11, "try-catch"

    invoke-direct {v9, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v10

    const/4 v9, 0x1

    sget-object v10, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v8, v9

    const/4 v10, 0x3

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v11, "<java.lang.Throwable>"

    invoke-direct {v9, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v10

    const/4 v9, 0x4

    sget-object v10, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v8, v9

    const/16 v16, 0x5

    sget-object v17, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "instance?"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v19, "srfi34.scm"

    const v20, 0x1b016

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v18, "srfi34.scm"

    const v19, 0x1b013

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const-string v11, "srfi34.scm"

    const v18, 0x1b008

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "field"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "as"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v21, "srfi34.scm"

    const v22, 0x1c02c

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    const-string v20, "srfi34.scm"

    const v21, 0x1c013

    move-object v0, v11

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v19, "srfi34.scm"

    const v20, 0x1c00f

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "quote"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v20, "value"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v21, "srfi34.scm"

    const v22, 0x1c031

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v20, "srfi34.scm"

    const v21, 0x1c031

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v20, "srfi34.scm"

    const v21, 0x1c030

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const-string v11, "srfi34.scm"

    const v20, 0x1c00f

    move-object/from16 v0, v19

    move-object v1, v10

    move-object v2, v11

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const-string v11, "srfi34.scm"

    const v19, 0x1c008

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    sget-object v10, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v19, "srfi34.scm"

    const v20, 0x1d008

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const-string v11, "srfi34.scm"

    const v19, 0x1c008

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v10, "srfi34.scm"

    const v11, 0x1b008

    move-object/from16 v0, v18

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v10, "srfi34.scm"

    const v11, 0x1b004

    move-object/from16 v0, v17

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v11, "srfi34.scm"

    const v17, 0x1b004

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    aput-object v9, v8, v16

    const/4 v9, 0x6

    sget-object v10, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v8, v9

    const/4 v10, 0x7

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v11, "primitive-throw"

    invoke-direct {v9, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "srfi34.scm"

    const v18, 0x1e022

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v16, "srfi34.scm"

    const v17, 0x1e011

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v4, v14, v15

    const/4 v4, 0x3

    invoke-direct {v12, v13, v14, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v12, Lgnu/kawa/slib/srfi34;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "raise"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "with-exception-handler"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/kawa/slib/srfi34;

    invoke-direct {v4}, Lgnu/kawa/slib/srfi34;-><init>()V

    sput-object v4, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    const-class v4, Lgnu/kawa/slib/raise$Mnobject$Mnexception;

    sput-object v4, Lgnu/kawa/slib/srfi34;->$Prvt$$Lsraise$Mnobject$Mnexception$Gr:Ljava/lang/Class;

    new-instance v4, Lgnu/expr/ModuleMethod;

    sget-object v5, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    const/4 v6, 0x1

    sget-object v7, Lgnu/kawa/slib/srfi34;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/16 v8, 0x2002

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/srfi34;->with$Mnexception$Mnhandler:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x2

    sget-object v7, Lgnu/kawa/slib/srfi34;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v8, 0x1001

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/srfi34;->raise:Lgnu/expr/ModuleMethod;

    .line 3
    sget-object v4, Lgnu/kawa/slib/srfi34;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/srfi34;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v6, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    invoke-static {v4, v5, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/srfi34;->guard:Lkawa/lang/Macro;

    sget-object v4, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/srfi34;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v6, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    invoke-static {v4, v5, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/srfi34;->$Prvt$guard$Mnaux:Lkawa/lang/Macro;

    sget-object v4, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    invoke-virtual {v4}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static raise(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 17
    new-instance v1, Lgnu/kawa/slib/raise$Mnobject$Mnexception;

    invoke-direct {v1, p0}, Lgnu/kawa/slib/raise$Mnobject$Mnexception;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    move-object p0, v0

    .end local p0
    throw p0
.end method

.method public static withExceptionHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "handler"
    .parameter "thunk"

    .prologue
    .line 11
    :try_start_0
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/kawa/slib/raise$Mnobject$Mnexception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 15
    :goto_0
    return-object v1

    .line 11
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 14
    .local v0, ex:Lgnu/kawa/slib/raise$Mnobject$Mnexception;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, v0, Lgnu/kawa/slib/raise$Mnobject$Mnexception;->value:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .end local v0           #ex:Lgnu/kawa/slib/raise$Mnobject$Mnexception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 15
    .local v0, ex:Ljava/lang/Throwable;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p0, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 17
    invoke-static {p2}, Lgnu/kawa/slib/srfi34;->raise(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 11
    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi34;->withExceptionHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 17
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x1

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 11
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x2

    iput v0, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 4
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
