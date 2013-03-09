.class public Lgnu/kawa/slib/gui;
.super Lgnu/expr/ModuleBody;
.source "gui.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/gui;

.field public static final Button:Lgnu/expr/ModuleMethod;

.field public static final Column:Lgnu/expr/ModuleMethod;

.field public static final Image:Lkawa/lang/Macro;

.field public static final Label:Lgnu/expr/ModuleMethod;

.field static final Lit0:Ljava/lang/Class;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lkawa/lang/SyntaxRules;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lkawa/lang/SyntaxRules;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit32:Lgnu/mapping/SimpleSymbol;

.field static final Lit33:Lgnu/mapping/SimpleSymbol;

.field static final Lit34:Lgnu/mapping/SimpleSymbol;

.field static final Lit35:Lgnu/mapping/SimpleSymbol;

.field static final Lit36:Lgnu/mapping/SimpleSymbol;

.field static final Lit37:Lgnu/mapping/SimpleSymbol;

.field static final Lit38:Lgnu/mapping/SimpleSymbol;

.field static final Lit39:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit40:Lgnu/mapping/SimpleSymbol;

.field static final Lit41:Lgnu/mapping/SimpleSymbol;

.field static final Lit42:Lgnu/math/IntNum;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lkawa/lang/SyntaxRules;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final Row:Lgnu/expr/ModuleMethod;

.field public static final Text:Lgnu/expr/ModuleMethod;

.field public static final Window:Lgnu/expr/ModuleMethod;

.field public static final as$Mncolor:Lgnu/expr/ModuleMethod;

.field public static final button:Lgnu/expr/ModuleMethod;

.field public static final image$Mnheight:Lgnu/expr/ModuleMethod;

.field public static final image$Mnread:Lgnu/expr/ModuleMethod;

.field public static final image$Mnwidth:Lgnu/expr/ModuleMethod;

.field static final loc$$St$DtgetHeight:Lgnu/mapping/Location;

.field static final loc$$St$DtgetWidth:Lgnu/mapping/Location;

.field public static final process$Mnkeywords:Lkawa/lang/Macro;

.field public static final run$Mnapplication:Lkawa/lang/Macro;

.field public static final set$Mncontent:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const/4 v4, 0x1

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/gui;->Lit42:Lgnu/math/IntNum;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "value"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "name"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "invoke"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "getName"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "quote"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "attr"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "<gnu.kawa.xml.KAttr>"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "instance?"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "+"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "loop"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "<object>"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "primitive-array-get"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "quasiquote"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "$lookup$"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "arg"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "num-args"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "i"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "<int>"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "::"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lkawa/lang/SyntaxRules;

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v6, "run-application"

    invoke-direct {v4, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v12, v5

    const/4 v4, 0x1

    new-array v13, v4, [Lkawa/lang/SyntaxRule;

    const/4 v14, 0x0

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v6, "\u0001"

    const-string v7, "\u0011\u0018\u0004\u0008\u0003"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "gnu.kawa.models.Window"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v18, "open"

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    const-string v10, "gui.scm"

    const v17, 0xb7007

    move-object/from16 v0, v16

    move-object v1, v9

    move-object v2, v10

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    aput-object v9, v8, v15

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v4, v13, v14

    const/4 v4, 0x1

    invoke-direct {v11, v12, v13, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v11, Lgnu/kawa/slib/gui;->Lit22:Lkawa/lang/SyntaxRules;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "Window"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "set-content"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "Column"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "Row"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "Text"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "Label"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "image-height"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "image-width"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "image-read"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lkawa/lang/SyntaxRules;

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v6, "text-field"

    invoke-direct {v4, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    aput-object v4, v11, v5

    const/4 v4, 0x1

    new-array v12, v4, [Lkawa/lang/SyntaxRule;

    const/4 v13, 0x0

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u0003"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v6, "\u0000"

    const-string v7, "\u0011\u0018\u0004\u0011\u0018\u000c\u0002"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v15, "make"

    invoke-direct {v9, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v14

    const/4 v14, 0x1

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v15, "<gnu.kawa.models.DrawImage>"

    invoke-direct {v9, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v14

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v4, v12, v13

    const/4 v4, 0x1

    invoke-direct {v10, v11, v12, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v10, Lgnu/kawa/slib/gui;->Lit11:Lkawa/lang/SyntaxRules;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "Image"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "Button"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "button"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "as-color"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lkawa/lang/SyntaxRules;

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v6, "process-keywords"

    invoke-direct {v4, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit5:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v11, v5

    const/4 v4, 0x1

    new-array v12, v4, [Lkawa/lang/SyntaxRule;

    const/4 v13, 0x0

    new-instance v4, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v6, "\u0001\u0001\u0001\u0001"

    const-string v7, "\u0011\u0018\u0004\u0091\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\t\u000b\u0018,\u0008\u0011\u0018\u0004\u0011\u00184\u0011\u0018<\u0008\u0011\u0018D\u0011\u0018L\u0008\u0011\u0018\u0004a\u0008\u0011\u0018T\u0008\u0011\u0018\\\t\u000b\u0018d\u0008\u0011\u0018l\u00a9\u0011\u0018ty\t\u0013\t\u0003\u0011\u0018|\u0008\u0011\u0018\u0084\t\u000b\u0018\u008c\u0018\u0094\u0099\u0011\u0018\u009ci\u0011\u0018\u00a4\u0011\u0018\u00ac\u0008\t\u0013\t\u0003\u0018\u00b4\u0018\u00bc\u0008\u0011\u0018\u00c41\t\u001b\t\u0003\u0018\u00cc\u0018\u00d4"

    const/16 v8, 0x1b

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v15, "let"

    invoke-direct {v9, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v14

    const/4 v9, 0x1

    sget-object v14, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x2

    sget-object v14, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x3

    sget-object v14, Lgnu/kawa/slib/gui;->Lit24:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v14, 0x4

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v15, "field"

    invoke-direct {v9, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v14

    const/4 v14, 0x5

    sget-object v15, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v16, "length"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "gui.scm"

    const/16 v18, 0x402a

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v16, "gui.scm"

    const/16 v17, 0x402a

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "gui.scm"

    const/16 v17, 0x4029

    move-object v0, v9

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    aput-object v9, v8, v14

    const/4 v9, 0x6

    sget-object v14, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/4 v9, 0x7

    sget-object v14, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit24:Lgnu/mapping/SimpleSymbol;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v17

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v19, "gui.scm"

    const/16 v20, 0x501d

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string v18, "gui.scm"

    const/16 v19, 0x5017

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "gui.scm"

    const/16 v18, 0x5014

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const/16 v17, 0x5011

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "gui.scm"

    const/16 v17, 0x5010

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/16 v14, 0x8

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v15, "if"

    invoke-direct {v9, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v14

    const/16 v14, 0x9

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v15, "<"

    invoke-direct {v9, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "gui.scm"

    const/16 v19, 0x6011

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "gui.scm"

    const/16 v18, 0x600f

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const/16 v17, 0x600c

    move-object v0, v9

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    aput-object v9, v8, v14

    const/16 v9, 0xa

    sget-object v14, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v8, v9

    const/16 v9, 0xb

    sget-object v14, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "gui.scm"

    const/16 v18, 0x7026

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const/16 v17, 0x7011

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/16 v9, 0xc

    sget-object v14, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "gui.scm"

    const/16 v17, 0x7035

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/16 v14, 0xd

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v15, "cond"

    invoke-direct {v9, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v14

    const/16 v14, 0xe

    sget-object v15, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v17, "<gnu.expr.Keyword>"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "gui.scm"

    const v19, 0x801d

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v17, "gui.scm"

    const v18, 0x8019

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v16, "gui.scm"

    const v17, 0x800e

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    aput-object v9, v8, v14

    const/16 v14, 0xf

    sget-object v15, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v16, "gnu.expr.Keyword"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v17 .. v18}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v16

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v16 .. v17}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    const-string v16, "gui.scm"

    const v17, 0xa00a

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    sget-object v15, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "gui.scm"

    const v18, 0xa023

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const v17, 0xa009

    move-object v0, v9

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    aput-object v9, v8, v14

    const/16 v9, 0x10

    sget-object v14, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "gui.scm"

    const v18, 0xb01f

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const v17, 0xb00a

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/16 v9, 0x11

    sget-object v14, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit42:Lgnu/math/IntNum;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "gui.scm"

    const v19, 0xb033

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "gui.scm"

    const v18, 0xb031

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const v17, 0xb02e

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "gui.scm"

    const v17, 0xb02e

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/16 v9, 0x12

    sget-object v14, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v17

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v19, "gui.scm"

    const v20, 0xc012

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string v18, "gui.scm"

    const v19, 0xc010

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "gui.scm"

    const v18, 0xc00d

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "gui.scm"

    const v18, 0xc00d

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const v17, 0xc007

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "gui.scm"

    const v17, 0xc007

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/16 v9, 0x13

    sget-object v14, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "gui.scm"

    const v19, 0xd016

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "gui.scm"

    const v18, 0xd012

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const v17, 0xd007

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/16 v14, 0x14

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v15, "let*"

    invoke-direct {v9, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v14

    const/16 v14, 0x15

    sget-object v9, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v19, "gui.scm"

    const v20, 0xe02c

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string v18, "gui.scm"

    const v19, 0xe017

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "gui.scm"

    const v18, 0xe014

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const v17, 0xe00e

    move-object v0, v9

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v18, "<java.lang.String>"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    sget-object v21, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v23, "gui.scm"

    const v24, 0xf031

    invoke-static/range {v21 .. v24}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v21

    const-string v22, "gui.scm"

    const v23, 0xf031

    invoke-static/range {v20 .. v23}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v20

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v22, "gui.scm"

    const v23, 0xf030

    invoke-static/range {v20 .. v23}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v20

    const-string v21, "gui.scm"

    const v22, 0xf02b

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    const-string v20, "gui.scm"

    const v21, 0xf023

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v20, "gui.scm"

    const v21, 0xf023

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string v19, "gui.scm"

    const v20, 0xf010

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v18, "gui.scm"

    const v19, 0xf00d

    move-object/from16 v0, v17

    move-object v1, v9

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v17, "gui.scm"

    const v18, 0xf007

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    sget-object v17, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v21, "getObjectValue"

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v22, "gui.scm"

    const v23, 0x1001c

    move-object v0, v9

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v21, "gui.scm"

    const v22, 0x1001c

    move-object/from16 v0, v20

    move-object v1, v9

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v21, "gui.scm"

    const v22, 0x1001b

    move-object v0, v9

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v20, "gui.scm"

    const v21, 0x10016

    move-object/from16 v0, v19

    move-object v1, v9

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v19, "gui.scm"

    const v20, 0x1000e

    move-object/from16 v0, v18

    move-object v1, v9

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v19, "gui.scm"

    const v20, 0x1000e

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v18, "gui.scm"

    const v19, 0x10007

    move-object/from16 v0, v17

    move-object v1, v9

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "gui.scm"

    const v19, 0x10007

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v17, "gui.scm"

    const v18, 0xf007

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v16, "gui.scm"

    const v17, 0xe00d

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    aput-object v9, v8, v14

    const/16 v9, 0x16

    sget-object v14, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "gui.scm"

    const v18, 0x11022

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const v17, 0x1101d

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/16 v9, 0x17

    sget-object v14, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit42:Lgnu/math/IntNum;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v19, "gui.scm"

    const v20, 0x12012

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string v18, "gui.scm"

    const v19, 0x12010

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "gui.scm"

    const v18, 0x1200d

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "gui.scm"

    const v18, 0x1200d

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const v17, 0x12007

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "gui.scm"

    const v17, 0x12007

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/16 v14, 0x18

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v15, "else"

    invoke-direct {v9, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    aput-object v9, v8, v14

    const/16 v9, 0x19

    sget-object v14, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "gui.scm"

    const v17, 0x1401f

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/16 v9, 0x1a

    sget-object v14, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit42:Lgnu/math/IntNum;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v19, "gui.scm"

    const v20, 0x15012

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string v18, "gui.scm"

    const v19, 0x15010

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "gui.scm"

    const v18, 0x1500d

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "gui.scm"

    const v18, 0x1500d

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "gui.scm"

    const v17, 0x15007

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "gui.scm"

    const v17, 0x15007

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v8, v9

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v4, v12, v13

    const/4 v4, 0x4

    invoke-direct {v10, v11, v12, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v10, Lgnu/kawa/slib/gui;->Lit6:Lkawa/lang/SyntaxRules;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "*.getHeight"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "*.getWidth"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "cell-spacing"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "text"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    const-class v4, Ljava/awt/Color;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit0:Ljava/lang/Class;

    new-instance v4, Lgnu/kawa/slib/gui;

    invoke-direct {v4}, Lgnu/kawa/slib/gui;-><init>()V

    sput-object v4, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    sget-object v4, Lgnu/kawa/slib/gui;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/gui;->loc$$St$DtgetWidth:Lgnu/mapping/Location;

    sget-object v4, Lgnu/kawa/slib/gui;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/gui;->loc$$St$DtgetHeight:Lgnu/mapping/Location;

    sget-object v4, Lgnu/kawa/slib/gui;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit6:Lkawa/lang/SyntaxRules;

    sget-object v6, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v4, v5, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/gui;->process$Mnkeywords:Lkawa/lang/Macro;

    new-instance v4, Lgnu/expr/ModuleMethod;

    sget-object v5, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    const/4 v6, 0x1

    sget-object v7, Lgnu/kawa/slib/gui;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v8, 0x1001

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->as$Mncolor:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x2

    sget-object v7, Lgnu/kawa/slib/gui;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v8, -0x1000

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->button:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x3

    sget-object v7, Lgnu/kawa/slib/gui;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/16 v8, -0x1000

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->Button:Lgnu/expr/ModuleMethod;

    sget-object v4, Lgnu/kawa/slib/gui;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/slib/gui;->Lit11:Lkawa/lang/SyntaxRules;

    sget-object v7, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v4, v6, v7}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/gui;->Image:Lkawa/lang/Macro;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x4

    sget-object v7, Lgnu/kawa/slib/gui;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/16 v8, 0x1001

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->image$Mnread:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x5

    sget-object v7, Lgnu/kawa/slib/gui;->Lit13:Lgnu/mapping/SimpleSymbol;

    const/16 v8, 0x1001

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->image$Mnwidth:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x6

    sget-object v7, Lgnu/kawa/slib/gui;->Lit14:Lgnu/mapping/SimpleSymbol;

    const/16 v8, 0x1001

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->image$Mnheight:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x7

    sget-object v7, Lgnu/kawa/slib/gui;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/16 v8, -0x1000

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->Label:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/16 v6, 0x8

    sget-object v7, Lgnu/kawa/slib/gui;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/16 v8, -0x1000

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->Text:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/16 v6, 0x9

    sget-object v7, Lgnu/kawa/slib/gui;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v8, -0x1000

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->Row:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/16 v6, 0xa

    sget-object v7, Lgnu/kawa/slib/gui;->Lit18:Lgnu/mapping/SimpleSymbol;

    const/16 v8, -0x1000

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->Column:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/16 v6, 0xb

    sget-object v7, Lgnu/kawa/slib/gui;->Lit19:Lgnu/mapping/SimpleSymbol;

    const/16 v8, 0x2002

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->set$Mncontent:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/16 v6, 0xc

    sget-object v7, Lgnu/kawa/slib/gui;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/16 v8, -0x1000

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/gui;->Window:Lgnu/expr/ModuleMethod;

    sget-object v4, Lgnu/kawa/slib/gui;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/gui;->Lit22:Lkawa/lang/SyntaxRules;

    sget-object v6, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v4, v5, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/gui;->run$Mnapplication:Lkawa/lang/Macro;

    sget-object v4, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-virtual {v4}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs Button([Ljava/lang/Object;)Lgnu/kawa/models/Button;
    .locals 12
    .parameter "args"

    .prologue
    .line 60
    new-instance v3, Lgnu/kawa/models/Button;

    invoke-direct {v3}, Lgnu/kawa/models/Button;-><init>()V

    .line 62
    .local v3, button:Lgnu/kawa/models/Button;
    array-length v6, p0

    .local v6, num$Mnargs:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, p0, v4

    .local v1, arg:Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    :try_start_0
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #arg:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    aget-object v9, p0, v9

    invoke-static {v3, v8, v9}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .restart local v1       #arg:Ljava/lang/Object;
    :cond_0
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 62
    :try_start_1
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .local v2, attr:Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, name:Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, value:Ljava/lang/Object;
    invoke-static {v3, v5, v7}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    .end local v2           #attr:Lgnu/kawa/xml/KAttr;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_1
    invoke-static {v3, v1}, Lgnu/kawa/slib/gui;->buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 21
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 63
    .end local v1           #arg:Ljava/lang/Object;
    :cond_2
    return-object v3
.end method

.method public static varargs Column([Ljava/lang/Object;)Lgnu/kawa/models/Column;
    .locals 12
    .parameter "args"

    .prologue
    .line 150
    new-instance v4, Lgnu/kawa/models/Column;

    invoke-direct {v4}, Lgnu/kawa/models/Column;-><init>()V

    .line 152
    .local v4, instance:Lgnu/kawa/models/Column;
    array-length v6, p0

    .local v6, num$Mnargs:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, p0, v3

    .local v1, arg:Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    :try_start_0
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #arg:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    aget-object v9, p0, v9

    invoke-static {v4, v8, v9}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .restart local v1       #arg:Ljava/lang/Object;
    :cond_0
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 152
    :try_start_1
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .local v2, attr:Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, name:Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, value:Ljava/lang/Object;
    invoke-static {v4, v5, v7}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    .end local v2           #attr:Lgnu/kawa/xml/KAttr;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_1
    invoke-static {v4, v1}, Lgnu/kawa/slib/gui;->boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 153
    .end local v1           #arg:Ljava/lang/Object;
    :cond_2
    return-object v4
.end method

.method public static varargs Label([Ljava/lang/Object;)Lgnu/kawa/models/Label;
    .locals 12
    .parameter "args"

    .prologue
    .line 100
    new-instance v4, Lgnu/kawa/models/Label;

    invoke-direct {v4}, Lgnu/kawa/models/Label;-><init>()V

    .line 102
    .local v4, instance:Lgnu/kawa/models/Label;
    array-length v6, p0

    .local v6, num$Mnargs:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, p0, v3

    .local v1, arg:Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    :try_start_0
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #arg:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    aget-object v9, p0, v9

    invoke-static {v4, v8, v9}, Lgnu/kawa/slib/gui;->labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .restart local v1       #arg:Ljava/lang/Object;
    :cond_0
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 102
    :try_start_1
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .local v2, attr:Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, name:Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, value:Ljava/lang/Object;
    invoke-static {v4, v5, v7}, Lgnu/kawa/slib/gui;->labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v2           #attr:Lgnu/kawa/xml/KAttr;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_1
    invoke-static {v4, v1}, Lgnu/kawa/slib/gui;->labelNonKeyword(Lgnu/kawa/models/Label;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 103
    .end local v1           #arg:Ljava/lang/Object;
    :cond_2
    return-object v4
.end method

.method public static varargs Row([Ljava/lang/Object;)Lgnu/kawa/models/Row;
    .locals 12
    .parameter "args"

    .prologue
    .line 145
    new-instance v4, Lgnu/kawa/models/Row;

    invoke-direct {v4}, Lgnu/kawa/models/Row;-><init>()V

    .line 147
    .local v4, instance:Lgnu/kawa/models/Row;
    array-length v6, p0

    .local v6, num$Mnargs:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, p0, v3

    .local v1, arg:Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    :try_start_0
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #arg:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    aget-object v9, p0, v9

    invoke-static {v4, v8, v9}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .restart local v1       #arg:Ljava/lang/Object;
    :cond_0
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 147
    :try_start_1
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .local v2, attr:Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, name:Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, value:Ljava/lang/Object;
    invoke-static {v4, v5, v7}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v2           #attr:Lgnu/kawa/xml/KAttr;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_1
    invoke-static {v4, v1}, Lgnu/kawa/slib/gui;->boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 148
    .end local v1           #arg:Ljava/lang/Object;
    :cond_2
    return-object v4
.end method

.method public static varargs Text([Ljava/lang/Object;)Lgnu/kawa/models/Text;
    .locals 12
    .parameter "args"

    .prologue
    .line 123
    new-instance v4, Lgnu/kawa/models/Text;

    invoke-direct {v4}, Lgnu/kawa/models/Text;-><init>()V

    .line 125
    .local v4, instance:Lgnu/kawa/models/Text;
    array-length v6, p0

    .local v6, num$Mnargs:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, p0, v3

    .local v1, arg:Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    :try_start_0
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #arg:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    aget-object v9, p0, v9

    invoke-static {v4, v8, v9}, Lgnu/kawa/slib/gui;->textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .restart local v1       #arg:Ljava/lang/Object;
    :cond_0
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 125
    :try_start_1
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .local v2, attr:Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, name:Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, value:Ljava/lang/Object;
    invoke-static {v4, v5, v7}, Lgnu/kawa/slib/gui;->textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v2           #attr:Lgnu/kawa/xml/KAttr;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_1
    invoke-static {v4, v1}, Lgnu/kawa/slib/gui;->textNonKeyword(Lgnu/kawa/models/Text;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 126
    .end local v1           #arg:Ljava/lang/Object;
    :cond_2
    return-object v4
.end method

.method public static varargs Window([Ljava/lang/Object;)Lgnu/kawa/models/Window;
    .locals 12
    .parameter "args"

    .prologue
    .line 174
    invoke-static {}, Lgnu/kawa/models/Display;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/kawa/models/Display;->makeWindow()Lgnu/kawa/models/Window;

    move-result-object v4

    .line 177
    .local v4, instance:Lgnu/kawa/models/Window;
    array-length v6, p0

    .local v6, num$Mnargs:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, p0, v3

    .local v1, arg:Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    :try_start_0
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #arg:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    aget-object v9, p0, v9

    invoke-static {v4, v8, v9}, Lgnu/kawa/slib/gui;->windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .restart local v1       #arg:Ljava/lang/Object;
    :cond_0
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 177
    :try_start_1
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .local v2, attr:Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, name:Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, value:Ljava/lang/Object;
    invoke-static {v4, v5, v7}, Lgnu/kawa/slib/gui;->windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    .end local v2           #attr:Lgnu/kawa/xml/KAttr;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_1
    invoke-static {v4, v1}, Lgnu/kawa/slib/gui;->windowNonKeyword(Lgnu/kawa/models/Window;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 178
    .end local v1           #arg:Ljava/lang/Object;
    :cond_2
    return-object v4
.end method

.method public static asColor(Ljava/lang/Object;)Ljava/awt/Color;
    .locals 4
    .parameter "value"

    .prologue
    .line 23
    instance-of v0, p0, Ljava/awt/Color;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Ljava/awt/Color;

    .end local p0
    move-object v0, p0

    .line 31
    :goto_0
    return-object v0

    .line 25
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Ljava/awt/Color;

    :try_start_0
    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/awt/Color;-><init>(I)V

    goto :goto_0

    .restart local p0
    :cond_1
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_2

    .line 29
    new-instance v0, Ljava/awt/Color;

    invoke-static {p0}, Lgnu/math/IntNum;->intValue(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/awt/Color;-><init>(I)V

    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit0:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/awt/Color;

    move-object v0, p0

    goto :goto_0

    .line 27
    .restart local p0
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "java.lang.Integer.intValue()"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method static asModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .locals 1
    .parameter "arg"

    .prologue
    .line 137
    invoke-static {}, Lgnu/kawa/models/Display;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/kawa/models/Display;->coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object v0

    return-object v0
.end method

.method static boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "instance"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 128
    sget-object v0, Lgnu/kawa/slib/gui;->Lit2:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lgnu/kawa/models/Box;->setCellSpacing(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown box attribute ~s"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
    .locals 1
    .parameter "box"
    .parameter "arg"

    .prologue
    .line 140
    invoke-static {p1}, Lgnu/kawa/slib/gui;->asModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Box;->add(Lgnu/kawa/models/Viewable;)V

    return-void
.end method

.method public static varargs button([Ljava/lang/Object;)Lgnu/kawa/models/Button;
    .locals 12
    .parameter "args"

    .prologue
    .line 55
    new-instance v3, Lgnu/kawa/models/Button;

    invoke-direct {v3}, Lgnu/kawa/models/Button;-><init>()V

    .line 57
    .local v3, button:Lgnu/kawa/models/Button;
    array-length v6, p0

    .local v6, num$Mnargs:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, p0, v4

    .local v1, arg:Ljava/lang/Object;
    instance-of v8, v1, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    :try_start_0
    check-cast v1, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #arg:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    aget-object v9, p0, v9

    invoke-static {v3, v8, v9}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .restart local v1       #arg:Ljava/lang/Object;
    :cond_0
    instance-of v8, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 57
    :try_start_1
    move-object v0, v1

    check-cast v0, Lgnu/kawa/xml/KAttr;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .local v2, attr:Lgnu/kawa/xml/KAttr;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, name:Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, value:Ljava/lang/Object;
    invoke-static {v3, v5, v7}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    .end local v2           #attr:Lgnu/kawa/xml/KAttr;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_1
    invoke-static {v3, v1}, Lgnu/kawa/slib/gui;->buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 21
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "gnu.expr.Keyword.getName()"

    const/4 v11, 0x1

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "attr"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 58
    .end local v1           #arg:Ljava/lang/Object;
    :cond_2
    return-object v3
.end method

.method static buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "button"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    const-string v0, "foreground"

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setForeground(Ljava/awt/Color;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 49
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v0, "background"

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setBackground(Ljava/awt/Color;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_1
    const-string v0, "action"

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lgnu/kawa/models/Button;->setAction(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_2
    const-string v0, "text"

    if-ne p1, v0, :cond_4

    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setText(Ljava/lang/String;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "disabled"

    if-ne p1, v0, :cond_6

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p2, v0, :cond_5

    move v0, v3

    :goto_2
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setDisabled(Z)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    .line 49
    :cond_6
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "unknown button attribute ~s"

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "gnu.kawa.models.Button.setDisabled(boolean)"

    invoke-direct {v1, v0, v2, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method static buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .parameter "button"
    .parameter "arg"

    .prologue
    .line 51
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static imageHeight(Ljava/awt/image/BufferedImage;)I
    .locals 4
    .parameter "image"

    .prologue
    .line 76
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$St$DtgetHeight:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .restart local p0
    :catch_0
    move-exception v0

    const-string v1, "gui.scm"

    const/16 v2, 0x4d

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method public static imageRead(Lgnu/text/Path;)Ljava/awt/image/BufferedImage;
    .locals 1
    .parameter "uri"

    .prologue
    .line 70
    invoke-virtual {p0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static imageWidth(Ljava/awt/image/BufferedImage;)I
    .locals 4
    .parameter "image"

    .prologue
    .line 73
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$St$DtgetWidth:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .restart local p0
    :catch_0
    move-exception v0

    const-string v1, "gui.scm"

    const/16 v2, 0x4a

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method static labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "instance"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 79
    sget-object v0, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 90
    :goto_1
    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown label attribute ~s"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method static labelNonKeyword(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
    .locals 1
    .parameter "instance"
    .parameter "arg"

    .prologue
    .line 92
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setContent(Lgnu/kawa/models/Window;Ljava/lang/Object;)V
    .locals 0
    .parameter "window"
    .parameter "pane"

    .prologue
    .line 155
    invoke-interface {p0, p1}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    return-void
.end method

.method static textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "instance"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 105
    sget-object v0, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 116
    :goto_1
    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown text attribute ~s"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method static textNonKeyword(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .locals 1
    .parameter "instance"
    .parameter "arg"

    .prologue
    .line 118
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "instance"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 158
    const-string v0, "title"

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lgnu/kawa/models/Window;->setTitle(Ljava/lang/String;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 167
    :goto_1
    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "content"

    if-ne p1, v0, :cond_2

    invoke-interface {p0, p2}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    :cond_2
    const-string v0, "menubar"

    if-ne p1, v0, :cond_3

    invoke-interface {p0, p2}, Lgnu/kawa/models/Window;->setMenuBar(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    .line 167
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown window attribute ~s"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method static windowNonKeyword(Lgnu/kawa/models/Window;Ljava/lang/Object;)V
    .locals 0
    .parameter "instance"
    .parameter "arg"

    .prologue
    .line 169
    invoke-interface {p0, p1}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 23
    :pswitch_1
    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_2
    :try_start_0
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/slib/gui;->imageRead(Lgnu/text/Path;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_3
    :try_start_1
    check-cast p2, Ljava/awt/image/BufferedImage;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lgnu/kawa/slib/gui;->imageWidth(Ljava/awt/image/BufferedImage;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_4
    :try_start_2
    check-cast p2, Ljava/awt/image/BufferedImage;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2}, Lgnu/kawa/slib/gui;->imageHeight(Ljava/awt/image/BufferedImage;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "image-read"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 73
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "image-width"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 76
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "image-height"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 155
    :try_start_0
    check-cast p2, Lgnu/kawa/models/Window;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3}, Lgnu/kawa/slib/gui;->setContent(Lgnu/kawa/models/Window;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "set-content"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 174
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 55
    :pswitch_1
    invoke-static {p2}, Lgnu/kawa/slib/gui;->button([Ljava/lang/Object;)Lgnu/kawa/models/Button;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Button([Ljava/lang/Object;)Lgnu/kawa/models/Button;

    move-result-object v0

    goto :goto_0

    .line 100
    :pswitch_3
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Label([Ljava/lang/Object;)Lgnu/kawa/models/Label;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_4
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Text([Ljava/lang/Object;)Lgnu/kawa/models/Text;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_5
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Row([Ljava/lang/Object;)Lgnu/kawa/models/Row;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_6
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Column([Ljava/lang/Object;)Lgnu/kawa/models/Column;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_7
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Window([Ljava/lang/Object;)Lgnu/kawa/models/Window;

    move-result-object v0

    goto :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, -0xbffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 23
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 76
    :goto_0
    return v0

    :pswitch_1
    instance-of v0, p2, Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 73
    :pswitch_2
    instance-of v0, p2, Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 70
    :pswitch_3
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 23
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 155
    instance-of v0, p2, Lgnu/kawa/models/Window;

    if-nez v0, :cond_0

    const v0, -0xbffff

    :goto_0
    return v0

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x2

    iput v0, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 55
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 174
    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 150
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 145
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 123
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 100
    :pswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 60
    :pswitch_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 55
    :pswitch_7
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 23
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
