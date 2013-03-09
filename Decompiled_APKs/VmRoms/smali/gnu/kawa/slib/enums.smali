.class public Lgnu/kawa/slib/enums;
.super Lgnu/expr/ModuleBody;
.source "enums.scm"


# static fields
.field public static final $Prvt$$Pcdefine$Mnenum:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/enums;

.field static final Lit0:Lgnu/lists/PairWithPosition;

.field static final Lit1:Lgnu/lists/PairWithPosition;

.field static final Lit10:Lgnu/lists/PairWithPosition;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lkawa/lang/SyntaxPattern;

.field static final Lit13:Lkawa/lang/SyntaxTemplate;

.field static final Lit14:Lkawa/lang/SyntaxTemplate;

.field static final Lit15:Lkawa/lang/SyntaxPattern;

.field static final Lit16:Lkawa/lang/SyntaxTemplate;

.field static final Lit17:Lkawa/lang/SyntaxPattern;

.field static final Lit18:Lkawa/lang/SyntaxPattern;

.field static final Lit19:Lkawa/lang/SyntaxPattern;

.field static final Lit2:Lgnu/lists/PairWithPosition;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lkawa/lang/SyntaxPattern;

.field static final Lit23:Lkawa/lang/SyntaxTemplate;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lkawa/lang/SyntaxTemplate;

.field static final Lit26:Lkawa/lang/SyntaxTemplate;

.field static final Lit27:Lkawa/lang/SyntaxTemplate;

.field static final Lit28:Lkawa/lang/SyntaxTemplate;

.field static final Lit29:Lkawa/lang/SyntaxTemplate;

.field static final Lit3:Lgnu/lists/PairWithPosition;

.field static final Lit30:Lkawa/lang/SyntaxTemplate;

.field static final Lit31:Lkawa/lang/SyntaxTemplate;

.field static final Lit32:Lkawa/lang/SyntaxTemplate;

.field static final Lit33:Lkawa/lang/SyntaxTemplate;

.field static final Lit34:Lkawa/lang/SyntaxTemplate;

.field static final Lit35:Lkawa/lang/SyntaxTemplate;

.field static final Lit36:Lkawa/lang/SyntaxTemplate;

.field static final Lit37:Lkawa/lang/SyntaxTemplate;

.field static final Lit38:Lkawa/lang/SyntaxTemplate;

.field static final Lit39:Lkawa/lang/SyntaxTemplate;

.field static final Lit4:Lgnu/lists/PairWithPosition;

.field static final Lit40:Lgnu/mapping/SimpleSymbol;

.field static final Lit41:Lgnu/mapping/SimpleSymbol;

.field static final Lit42:Lgnu/mapping/SimpleSymbol;

.field static final Lit43:Lgnu/mapping/SimpleSymbol;

.field static final Lit44:Lgnu/mapping/SimpleSymbol;

.field static final Lit45:Lgnu/mapping/SimpleSymbol;

.field static final Lit46:Lgnu/expr/Keyword;

.field static final Lit47:Lgnu/mapping/SimpleSymbol;

.field static final Lit48:Lgnu/expr/Keyword;

.field static final Lit49:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/lists/PairWithPosition;

.field static final Lit50:Lgnu/mapping/SimpleSymbol;

.field static final Lit51:Lgnu/mapping/SimpleSymbol;

.field static final Lit52:Lgnu/mapping/SimpleSymbol;

.field static final Lit53:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/lists/PairWithPosition;

.field static final Lit7:Lgnu/lists/PairWithPosition;

.field static final Lit8:Lgnu/lists/PairWithPosition;

.field static final Lit9:Lgnu/lists/PairWithPosition;

.field public static final define$Mnenum:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .prologue
    const v15, 0x41026

    const v14, 0x1102a

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "final"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit53:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "enum"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit52:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "num"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit51:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "str"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit50:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*init*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit49:Lgnu/mapping/SimpleSymbol;

    const-string v0, "access"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit48:Lgnu/expr/Keyword;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "String"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit47:Lgnu/mapping/SimpleSymbol;

    const-string v0, "allocation"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit46:Lgnu/expr/Keyword;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "static"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit45:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "java.lang.Enum"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit44:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "::"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "s"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit41:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "valueOf"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit40:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0010"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit39:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0010"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit38:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0018\u0004"

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v6, "enums.scm"

    const v7, 0x47042

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit37:Lkawa/lang/SyntaxTemplate;

    new-instance v2, Lkawa/lang/SyntaxTemplate;

    const-string v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string v4, "\u0018\u0004"

    new-array v5, v12, [Ljava/lang/Object;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "$lookup$"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/slib/enums;->Lit44:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v7, "quasiquote"

    invoke-direct {v1, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/enums;->Lit40:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v7, v8}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    invoke-static {v1, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v6, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    const-string v6, "enums.scm"

    const v7, 0x47007

    invoke-static {v0, v1, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    aput-object v0, v5, v11

    invoke-direct {v2, v3, v4, v5, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/enums;->Lit36:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0018\u0004"

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/enums;->Lit45:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v7, "enums.scm"

    const v8, 0x46013

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string v6, "enums.scm"

    const v7, 0x46013

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit35:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0018\u0004"

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit46:Lgnu/expr/Keyword;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v6, "enums.scm"

    const v7, 0x46006

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit34:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0018\u0004"

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v6, "enums.scm"

    const v7, 0x45019

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit33:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0018\u0004"

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit40:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/enums;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/enums;->Lit47:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v9, "enums.scm"

    const v10, 0x45012

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string v8, "enums.scm"

    const v9, 0x45010

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string v7, "enums.scm"

    const v8, 0x4500f

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string v6, "enums.scm"

    const v7, 0x45006

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit32:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0018\u0004"

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/enums;->Lit52:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/slib/enums;->Lit53:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v8, "enums.scm"

    const v9, 0x4102c

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string v7, "enums.scm"

    invoke-static {v5, v6, v7, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v7, "enums.scm"

    invoke-static {v5, v6, v7, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string v6, "enums.scm"

    invoke-static {v4, v5, v6, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit31:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0018\u0004"

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit48:Lgnu/expr/Keyword;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v6, "enums.scm"

    const v7, 0x4101d

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit30:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0018\u0004"

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit44:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v6, "enums.scm"

    const v7, 0x4100c

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit29:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    const-string v2, "\u0001\u0001\u0001\u0003\u0003"

    const-string v3, "\u0018\u0004"

    new-array v4, v12, [Ljava/lang/Object;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v5, "define-simple-class"

    invoke-direct {v0, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v6, "enums.scm"

    const v7, 0x4000a

    invoke-static {v0, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-direct {v1, v2, v3, v4, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit28:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0008%#"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit27:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0013"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit26:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u0008\u001d\u001b"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit25:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "[]"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0001\u0003\u0003"

    const-string v2, "\u000b"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit23:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u000f\u000c\u0017,\r\u001f\u0018\u0008\u0008\r\' \u0008\u0008"

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit22:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%define-enum"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    const-string v2, "\u0001\u0001\u0003"

    const-string v3, "\u0011\u0018\u0004\u0011\u0018\u000c\t\u000b\t\u0010\u0008\u0015\u0013"

    new-array v4, v13, [Ljava/lang/Object;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v5, "define-enum"

    invoke-direct {v0, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v4, v11

    const-string v0, "findkeywords"

    aput-object v0, v4, v12

    invoke-direct {v1, v2, v3, v4, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u000f\r\u0017\u0010\u0008\u0008"

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit19:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u000f\u0008"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit18:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u0008"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit17:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0003\u0003"

    const-string v2, "\u0011\u0018\u0004\t\u000b\u0019\u0008\u0015\u0013\u0008\u001d\u001b"

    new-array v3, v12, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v11

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit16:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u0002\u000c\u000f,\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "findkeywords"

    aput-object v3, v2, v11

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit15:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0003\u0001\u0001\u0003"

    const-string v2, "\u0011\u0018\u0004\u0011\u0018\u000c\t\u000b9\t\u001b\t#\u0008\u0015\u0013\u0008-+"

    new-array v3, v13, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v11

    const-string v4, "findkeywords"

    aput-object v4, v3, v12

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit14:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0003\u0001\u0001\u0003"

    const-string v2, "\u001b"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v11}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit13:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u0002\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u001f\u000c\'\r/(\u0008\u0008"

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "findkeywords"

    aput-object v3, v2, v11

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit12:Lkawa/lang/SyntaxPattern;

    sget-object v0, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit45:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v3, "enums.scm"

    const v4, 0x1f025

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const-string v2, "enums.scm"

    const v3, 0x1f025

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit10:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/enums;->Lit46:Lgnu/expr/Keyword;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "enums.scm"

    const v3, 0x1f018

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit9:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "enums.scm"

    const v3, 0x1f00e

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit8:Lgnu/lists/PairWithPosition;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "values"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "enums.scm"

    const v3, 0x1f005

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit7:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit49:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lgnu/kawa/slib/enums;->Lit50:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/kawa/slib/enums;->Lit47:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v5, "enums.scm"

    const v6, 0x16015

    invoke-static {v3, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const-string v4, "enums.scm"

    const v5, 0x16012

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string v3, "enums.scm"

    const v4, 0x1600d

    invoke-static {v0, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v3, Lgnu/kawa/slib/enums;->Lit51:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v5, "int"

    invoke-direct {v0, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v6, "enums.scm"

    const v7, 0x16025

    invoke-static {v0, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const-string v5, "enums.scm"

    const v6, 0x16022

    invoke-static {v4, v0, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const-string v4, "enums.scm"

    const v5, 0x1601d

    invoke-static {v3, v0, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v4, "enums.scm"

    const v5, 0x1601d

    invoke-static {v0, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const-string v3, "enums.scm"

    const v4, 0x1600d

    invoke-static {v2, v0, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const-string v2, "enums.scm"

    const v3, 0x16005

    invoke-static {v1, v0, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v3, Lgnu/kawa/slib/enums;->Lit48:Lgnu/expr/Keyword;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v4, "private"

    invoke-direct {v0, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v5, "enums.scm"

    const v6, 0x1700e

    invoke-static {v0, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const-string v4, "enums.scm"

    const v5, 0x1700e

    invoke-static {v1, v0, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "invoke-special"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/enums;->Lit44:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v6, "this"

    invoke-direct {v1, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v7, "enums.scm"

    const v8, 0x18024

    invoke-static {v1, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v6, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/slib/enums;->Lit49:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v9, "enums.scm"

    const v10, 0x1802c

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string v8, "enums.scm"

    const v9, 0x1802c

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    sget-object v7, Lgnu/kawa/slib/enums;->Lit50:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/kawa/slib/enums;->Lit51:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v10, "enums.scm"

    const v11, 0x18037

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v9, "enums.scm"

    const v10, 0x18033

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string v8, "enums.scm"

    const v9, 0x1802b

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string v7, "enums.scm"

    const v8, 0x18024

    invoke-static {v1, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const-string v6, "enums.scm"

    const v7, 0x18015

    invoke-static {v5, v1, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const-string v5, "enums.scm"

    const v6, 0x18005

    invoke-static {v0, v1, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v5, "enums.scm"

    const v6, 0x18005

    invoke-static {v0, v1, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const-string v1, "enums.scm"

    const v5, 0x1700d

    invoke-static {v4, v0, v1, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const-string v1, "enums.scm"

    const v4, 0x17005

    invoke-static {v3, v0, v1, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const-string v1, "enums.scm"

    const v3, 0x16004

    invoke-static {v2, v0, v1, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit6:Lgnu/lists/PairWithPosition;

    const-string v0, "init"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "enums.scm"

    const v3, 0x1200d

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit5:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit52:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/enums;->Lit53:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v4, "enums.scm"

    const v5, 0x11030

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string v3, "enums.scm"

    invoke-static {v1, v2, v3, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v3, "enums.scm"

    invoke-static {v1, v2, v3, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const-string v2, "enums.scm"

    invoke-static {v0, v1, v2, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit4:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/enums;->Lit48:Lgnu/expr/Keyword;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "enums.scm"

    const v3, 0x11021

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit3:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit45:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v3, "enums.scm"

    const v4, 0x1101a

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const-string v2, "enums.scm"

    const v3, 0x1101a

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit2:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/enums;->Lit46:Lgnu/expr/Keyword;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "enums.scm"

    const v3, 0x1100d

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit1:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "enums.scm"

    const v3, 0x1000d

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit0:Lgnu/lists/PairWithPosition;

    new-instance v0, Lgnu/kawa/slib/enums;

    invoke-direct {v0}, Lgnu/kawa/slib/enums;-><init>()V

    sput-object v0, Lgnu/kawa/slib/enums;->$instance:Lgnu/kawa/slib/enums;

    .line 5
    sget-object v0, Lgnu/kawa/slib/enums;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/enums;->$instance:Lgnu/kawa/slib/enums;

    const/4 v3, 0x0

    const/16 v4, 0x1001

    invoke-direct {v1, v2, v12, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v3, Lgnu/kawa/slib/enums;->$instance:Lgnu/kawa/slib/enums;

    invoke-static {v0, v1, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->define$Mnenum:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/enums;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x0

    const/16 v4, 0x1001

    invoke-direct {v1, v2, v13, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v2, Lgnu/kawa/slib/enums;->$instance:Lgnu/kawa/slib/enums;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->$Prvt$$Pcdefine$Mnenum:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/enums;->$instance:Lgnu/kawa/slib/enums;

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
    .locals 5
    .parameter "form"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/kawa/slib/enums;->Lit12:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/enums;->Lit13:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/std_syntax;->isIdentifier(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/enums;->Lit14:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    sget-object v1, Lgnu/kawa/slib/enums;->Lit15:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/enums;->Lit16:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lgnu/kawa/slib/enums;->Lit17:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    const-string v0, "no enum type name given"

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v0, [Ljava/lang/Object;

    :goto_1
    invoke-static {p0, v0}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    move-object v0, v1

    goto :goto_1

    :cond_3
    sget-object v1, Lgnu/kawa/slib/enums;->Lit18:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    const-string v0, "no enum constants given"

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    check-cast v0, [Ljava/lang/Object;

    :goto_2
    invoke-static {p0, v0}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    move-object v0, v1

    goto :goto_2

    :cond_5
    sget-object v1, Lgnu/kawa/slib/enums;->Lit19:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/enums;->Lit20:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35
    .parameter "form"

    .prologue
    .line 53
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    sget-object v5, Lgnu/kawa/slib/enums;->Lit22:Lkawa/lang/SyntaxPattern;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/enums;->Lit23:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v6, v11, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v9

    :try_start_0
    check-cast v9, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .local v9, t$Mnname:Lgnu/mapping/Symbol;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lgnu/kawa/slib/enums;->Lit24:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v5, v6

    invoke-static {v5}, Lgnu/kawa/slib/enums;->symbolAppend$V([Ljava/lang/Object;)Lgnu/mapping/SimpleSymbol;

    move-result-object v8

    .line 55
    .local v8, t$Mnarr:Lgnu/mapping/Symbol;
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/enums;->Lit25:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v6, v11, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    :try_start_1
    check-cast v5, Lgnu/lists/LList;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .local v5, e$Mnnames:Lgnu/lists/LList;
    invoke-static {v5}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    const/4 v6, 0x0

    invoke-static {v9, v5, v6}, Lgnu/kawa/slib/enums;->mapNames(Lgnu/mapping/Symbol;Lgnu/lists/LList;I)Lgnu/lists/LList;

    move-result-object v6

    .local v6, field$Mndescs:Lgnu/lists/LList;
    invoke-static {}, Lgnu/kawa/slib/enums;->makeInit()Lgnu/lists/PairWithPosition;

    move-result-object v7

    .local v7, init:Lgnu/lists/LList;
    invoke-static {v8, v5}, Lgnu/kawa/slib/enums;->makeValues(Lgnu/mapping/Symbol;Lgnu/lists/LList;)Lgnu/lists/Pair;

    move-result-object v10

    .local v10, values$Mnmethod:Lgnu/lists/LList;
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v5

    .end local v5           #e$Mnnames:Lgnu/lists/LList;
    sget-object v8, Lgnu/kawa/slib/enums;->Lit26:Lkawa/lang/SyntaxTemplate;

    .end local v8           #t$Mnarr:Lgnu/mapping/Symbol;
    invoke-virtual {v8, v11, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    :try_start_2
    check-cast v5, Lgnu/lists/LList;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .local v5, opts:Lgnu/lists/LList;
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v8

    sget-object v12, Lgnu/kawa/slib/enums;->Lit27:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v12, v11, v8}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v8

    :try_start_3
    check-cast v8, Lgnu/lists/LList;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 64
    .local v8, other$Mndefs:Lgnu/lists/LList;
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/enums;->Lit28:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v15, v11, v12}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-static {v0, v1}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Lgnu/kawa/slib/enums;->Lit29:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v0, v17

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lgnu/kawa/slib/enums;->Lit30:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v0, v20

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Lgnu/kawa/slib/enums;->Lit31:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v0, v20

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #opts:Lgnu/lists/LList;
    aput-object v5, v21, v22

    const/4 v5, 0x1

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-static {v0, v1}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #init:Lgnu/lists/LList;
    aput-object v7, v22, v23

    const/4 v7, 0x1

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-static {v0, v1}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #values$Mnmethod:Lgnu/lists/LList;
    aput-object v10, v23, v24

    const/4 v10, 0x1

    sget-object v24, Lgnu/kawa/slib/enums;->Lit32:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v0, v24

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Lgnu/kawa/slib/enums;->Lit33:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v0, v27

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-static {v0, v1}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget-object v31, Lgnu/kawa/slib/enums;->Lit34:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v0, v31

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    sget-object v31, Lgnu/kawa/slib/enums;->Lit35:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v0, v31

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v31

    sget-object v32, Lgnu/kawa/slib/enums;->Lit36:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v0, v32

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v32

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-static {v0, v1}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #t$Mnname:Lgnu/mapping/Symbol;
    aput-object v9, v33, v34

    const/4 v9, 0x1

    sget-object v34, Lgnu/kawa/slib/enums;->Lit37:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v0, v34

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v34

    aput-object v34, v33, v9

    invoke-static/range {v33 .. v33}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, v32

    move-object v1, v9

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    sget-object v32, Lgnu/kawa/slib/enums;->Lit38:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v0, v32

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v32

    move-object v0, v9

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object/from16 v0, v31

    move-object v1, v9

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    aput-object v9, v29, v30

    invoke-static/range {v29 .. v29}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v27, v28

    invoke-static/range {v27 .. v27}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v25, v26

    invoke-static/range {v25 .. v25}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, v24

    move-object v1, v9

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-static {v0, v1}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #field$Mndescs:Lgnu/lists/LList;
    aput-object v6, v24, v25

    const/4 v6, 0x1

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-static {v0, v1}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    aput-object p0, v25, v26

    const/16 p0, 0x1

    sget-object v8, Lgnu/kawa/slib/enums;->Lit39:Lkawa/lang/SyntaxTemplate;

    .end local v8           #other$Mndefs:Lgnu/lists/LList;
    invoke-virtual {v8, v11, v12}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v25, p0

    invoke-static/range {v25 .. v25}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v24, v6

    invoke-static/range {v24 .. v24}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    aput-object p0, v23, v10

    invoke-static/range {v23 .. v23}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v22, v7

    invoke-static/range {v22 .. v22}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v21, v5

    invoke-static/range {v21 .. v21}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    aput-object p0, v18, v19

    invoke-static/range {v18 .. v18}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    aput-object p0, v15, v16

    invoke-static {v15}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v13, v14

    invoke-static {v13}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const-string v5, "syntax-case"

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .end local p0
    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "t-name"

    const/4 v7, -0x2

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 57
    .local v8, t$Mnarr:Lgnu/mapping/Symbol;
    .restart local v9       #t$Mnname:Lgnu/mapping/Symbol;
    .restart local p0
    :catch_1
    move-exception p0

    .end local p0
    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "e-names"

    const/4 v8, -0x2

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v8

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    .end local v8           #t$Mnarr:Lgnu/mapping/Symbol;
    throw v6

    .line 62
    .restart local v6       #field$Mndescs:Lgnu/lists/LList;
    .restart local v7       #init:Lgnu/lists/LList;
    .restart local v10       #values$Mnmethod:Lgnu/lists/LList;
    .restart local p0
    :catch_2
    move-exception p0

    .end local p0
    new-instance v6, Lgnu/mapping/WrongType;

    .end local v6           #field$Mndescs:Lgnu/lists/LList;
    const-string v7, "opts"

    .end local v7           #init:Lgnu/lists/LList;
    const/4 v8, -0x2

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v8

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 63
    .restart local v5       #opts:Lgnu/lists/LList;
    .restart local v6       #field$Mndescs:Lgnu/lists/LList;
    .restart local v7       #init:Lgnu/lists/LList;
    .restart local p0
    :catch_3
    move-exception p0

    .end local p0
    new-instance v5, Lgnu/mapping/WrongType;

    .end local v5           #opts:Lgnu/lists/LList;
    const-string v6, "other-defs"

    .end local v6           #field$Mndescs:Lgnu/lists/LList;
    const/4 v7, -0x2

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    .end local v7           #init:Lgnu/lists/LList;
    throw v5
.end method

.method static makeFieldDesc(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;I)Ljava/lang/Object;
    .locals 20
    .parameter "t$Mnname"
    .parameter "e$Mnname"
    .parameter "e$Mnval"

    .prologue
    .line 11
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lgnu/kawa/slib/enums;->Lit0:Lgnu/lists/PairWithPosition;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lgnu/kawa/slib/enums;->Lit1:Lgnu/lists/PairWithPosition;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lgnu/kawa/slib/enums;->Lit2:Lgnu/lists/PairWithPosition;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lgnu/kawa/slib/enums;->Lit3:Lgnu/lists/PairWithPosition;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lgnu/kawa/slib/enums;->Lit4:Lgnu/lists/PairWithPosition;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lgnu/kawa/slib/enums;->Lit5:Lgnu/lists/PairWithPosition;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p0, v16, v17

    const/16 p0, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local p0
    const/16 v18, 0x0

    invoke-static/range {p1 .. p1}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    aput-object p1, v17, v18

    const/16 p1, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .end local p2
    aput-object p2, v18, v19

    const/16 p2, 0x1

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v19, v18, p2

    invoke-static/range {v18 .. v18}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, p1

    invoke-static/range {v17 .. v17}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v16, p0

    invoke-static/range {v16 .. v16}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {p0 .. p1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    aput-object p0, v14, v15

    invoke-static {v14}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    aput-object p0, v11, v12

    invoke-static {v11}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    aput-object p0, v8, v9

    invoke-static {v8}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v6, v7

    invoke-static {v6}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v2}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static makeInit()Lgnu/lists/PairWithPosition;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lgnu/kawa/slib/enums;->Lit6:Lgnu/lists/PairWithPosition;

    return-object v0
.end method

.method static makeValues(Lgnu/mapping/Symbol;Lgnu/lists/LList;)Lgnu/lists/Pair;
    .locals 9
    .parameter "t$Mnarr"
    .parameter "e$Mnnames"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 26
    sget-object v0, Lgnu/kawa/slib/enums;->Lit7:Lgnu/lists/PairWithPosition;

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/enums;->Lit8:Lgnu/lists/PairWithPosition;

    aput-object v2, v1, v7

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v7

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit9:Lgnu/lists/PairWithPosition;

    aput-object v4, v3, v7

    sget-object v4, Lgnu/kawa/slib/enums;->Lit10:Lgnu/lists/PairWithPosition;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v7, v6, v8

    invoke-static {v6}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v5, v6}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0
.end method

.method static mapNames(Lgnu/mapping/Symbol;Lgnu/lists/LList;I)Lgnu/lists/LList;
    .locals 5
    .parameter "t$Mnname"
    .parameter "e$Mnnames"
    .parameter "i"

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 50
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    check-cast v0, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, v0, p2}, Lgnu/kawa/slib/enums;->makeFieldDesc(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;I)Ljava/lang/Object;

    move-result-object v1

    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 50
    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_1
    check-cast v0, Lgnu/lists/LList;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, p2, 0x1

    invoke-static {p0, v0, v2}, Lgnu/kawa/slib/enums;->mapNames(Lgnu/mapping/Symbol;Lgnu/lists/LList;I)Lgnu/lists/LList;

    move-result-object v0

    invoke-static {v1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-field-desc"

    invoke-direct {v2, v1, v3, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 50
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "map-names"

    invoke-direct {v2, v1, v3, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method static symbolAppend$V([Ljava/lang/Object;)Lgnu/mapping/SimpleSymbol;
    .locals 9
    .parameter "argsArray"

    .prologue
    const/4 v8, 0x1

    .line 7
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v3

    .line 9
    .local v3, syms:Lgnu/lists/LList;
    sget-object v4, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v5, Lkawa/lib/strings;->string$Mnappend:Lgnu/expr/ModuleMethod;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v3

    .end local p0
    :goto_0
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v7, :cond_0

    invoke-static {v6}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {p0}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v4

    return-object v4

    :cond_0
    :try_start_1
    check-cast v0, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .local v0, arg0:Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p0

    :try_start_2
    check-cast p0, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {p0}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    .local v1, arg0:Ljava/lang/Object;
    .local v2, result:Lgnu/lists/Pair;
    move-object v6, v2

    move-object v0, v1

    .end local v1           #arg0:Ljava/lang/Object;
    .local v0, arg0:Ljava/lang/Object;
    goto :goto_0

    .end local v0           #arg0:Ljava/lang/Object;
    .end local v2           #result:Lgnu/lists/Pair;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "arg0"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .local v0, arg0:Lgnu/lists/Pair;
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "symbol->string"

    invoke-direct {v5, v4, v6, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .end local v0           #arg0:Lgnu/lists/Pair;
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string->symbol"

    invoke-direct {v5, v4, v6, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p2}, Lgnu/kawa/slib/enums;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Lgnu/kawa/slib/enums;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 4
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 7
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
