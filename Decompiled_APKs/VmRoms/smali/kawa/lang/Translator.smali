.class public Lkawa/lang/Translator;
.super Lgnu/expr/Compilation;
.source "Translator.java"


# static fields
.field private static errorExp:Lgnu/expr/Expression;

.field public static final getNamedPartDecl:Lgnu/expr/Declaration;


# instance fields
.field public curMethodLambda:Lgnu/expr/LambdaExp;

.field public currentMacroDefinition:Lkawa/lang/Macro;

.field currentSyntax:Lkawa/lang/Syntax;

.field private env:Lgnu/mapping/Environment;

.field public firstForm:I

.field public formStack:Ljava/util/Stack;

.field macroContext:Lgnu/expr/Declaration;

.field public matchArray:Lgnu/expr/Declaration;

.field notedAccess:Ljava/util/Vector;

.field public patternScope:Lkawa/lang/PatternScope;

.field public pendingForm:Ljava/lang/Object;

.field positionPair:Lgnu/lists/PairWithPosition;

.field renamedAliasStack:Ljava/util/Stack;

.field public templateScopeDecl:Lgnu/expr/Declaration;

.field public xmlElementNamespaces:Lgnu/xml/NamespaceBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    const-string v0, "gnu.kawa.functions.GetNamedPart"

    .line 65
    .local v0, cname:Ljava/lang/String;
    const-string v1, "getNamedPart"

    .line 66
    .local v1, fname:Ljava/lang/String;
    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v2

    sput-object v2, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    .line 67
    sget-object v2, Lgnu/kawa/lispexpr/LispLanguage;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    sget-object v3, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 70
    new-instance v2, Lgnu/expr/ErrorExp;

    const-string v3, "unknown syntax error"

    invoke-direct {v2, v3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    sput-object v2, Lkawa/lang/Translator;->errorExp:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V
    .locals 1
    .parameter "language"
    .parameter "messages"
    .parameter "lexical"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    .line 50
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    .line 57
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    .line 75
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    .line 76
    return-void
.end method

.method static getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;
    .locals 2
    .parameter "decl"

    .prologue
    .line 147
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 150
    .local v0, value:Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/ReferenceExp;

    if-eqz v1, :cond_0

    .line 151
    check-cast v0, Lgnu/expr/ReferenceExp;

    .end local v0           #value:Lgnu/expr/Expression;
    move-object v1, v0

    .line 153
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static listLength(Ljava/lang/Object;)I
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v6, -0x1

    .line 500
    const/4 v2, 0x0

    .line 501
    .local v2, n:I
    move-object v4, p0

    .line 502
    .local v4, slow:Ljava/lang/Object;
    move-object v1, p0

    .line 506
    .local v1, fast:Ljava/lang/Object;
    :cond_0
    :goto_0
    instance-of v5, v1, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_1

    .line 507
    check-cast v1, Lkawa/lang/SyntaxForm;

    .end local v1           #fast:Ljava/lang/Object;
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #fast:Ljava/lang/Object;
    goto :goto_0

    .line 508
    :cond_1
    :goto_1
    instance-of v5, v4, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_2

    .line 509
    check-cast v4, Lkawa/lang/SyntaxForm;

    .end local v4           #slow:Ljava/lang/Object;
    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #slow:Ljava/lang/Object;
    goto :goto_1

    .line 510
    :cond_2
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v5, :cond_3

    move v5, v2

    .line 526
    :goto_2
    return v5

    .line 512
    :cond_3
    instance-of v5, v1, Lgnu/lists/Pair;

    if-nez v5, :cond_4

    .line 513
    sub-int v5, v6, v2

    goto :goto_2

    .line 514
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 515
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 516
    .local v3, next:Ljava/lang/Object;
    :goto_3
    instance-of v5, v3, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_5

    .line 517
    check-cast v3, Lkawa/lang/SyntaxForm;

    .end local v3           #next:Ljava/lang/Object;
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #next:Ljava/lang/Object;
    goto :goto_3

    .line 518
    :cond_5
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v5, :cond_6

    move v5, v2

    .line 519
    goto :goto_2

    .line 520
    :cond_6
    instance-of v5, v3, Lgnu/lists/Pair;

    if-nez v5, :cond_7

    .line 521
    sub-int v5, v6, v2

    goto :goto_2

    .line 522
    :cond_7
    check-cast v4, Lgnu/lists/Pair;

    .end local v4           #slow:Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 523
    .restart local v4       #slow:Ljava/lang/Object;
    check-cast v3, Lgnu/lists/Pair;

    .end local v3           #next:Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 524
    add-int/lit8 v2, v2, 0x1

    .line 525
    if-ne v1, v4, :cond_0

    .line 526
    const/high16 v5, -0x8000

    goto :goto_2
.end method

.method private makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 5
    .parameter "first"
    .parameter "scope"

    .prologue
    .line 1237
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    sub-int v2, v3, p1

    .line 1238
    .local v2, nforms:I
    if-nez v2, :cond_0

    .line 1239
    sget-object v3, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 1254
    .end local p0
    :goto_0
    return-object v3

    .line 1240
    .restart local p0
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1242
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Expression;

    move-object v3, p0

    goto :goto_0

    .line 1246
    .restart local p0
    :cond_1
    new-array v0, v2, [Lgnu/expr/Expression;

    .line 1247
    .local v0, exps:[Lgnu/expr/Expression;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1248
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    add-int v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    aput-object v3, v0, v1

    .line 1247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1249
    :cond_2
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->setSize(I)V

    .line 1250
    instance-of v3, p2, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_3

    .line 1251
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    invoke-direct {v3, v4, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_0

    .line 1254
    :cond_3
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispLanguage;->makeBody([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_0
.end method

.method public static makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 1
    .parameter "pair"
    .parameter "car"
    .parameter "cdr"

    .prologue
    .line 1169
    instance-of v0, p0, Lgnu/lists/PairWithPosition;

    if-eqz v0, :cond_0

    .line 1170
    new-instance v0, Lgnu/lists/PairWithPosition;

    check-cast p0, Lgnu/lists/PairWithPosition;

    .end local p0
    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1171
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-instance v0, Lgnu/lists/Pair;

    invoke-direct {v0, p1, p2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private rewriteBody(Lgnu/lists/LList;)V
    .locals 4
    .parameter "forms"

    .prologue
    .line 1218
    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v3, :cond_0

    .line 1220
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .line 1221
    .local v1, pair:Lgnu/lists/Pair;
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1224
    .local v2, saved:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 1230
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lgnu/lists/LList;

    .line 1231
    .restart local p1
    goto :goto_0

    .line 1228
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v3

    .line 1232
    .end local v1           #pair:Lgnu/lists/Pair;
    .end local v2           #saved:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static safeCar(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 475
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 476
    check-cast p0, Lkawa/lang/SyntaxForm;

    .end local p0
    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    .restart local p0
    goto :goto_0

    .line 477
    :cond_0
    instance-of v0, p0, Lgnu/lists/Pair;

    if-nez v0, :cond_1

    .line 478
    const/4 v0, 0x0

    .line 479
    .end local p0
    :goto_1
    return-object v0

    .restart local p0
    :cond_1
    check-cast p0, Lgnu/lists/Pair;

    .end local p0
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public static safeCdr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 484
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 485
    check-cast p0, Lkawa/lang/SyntaxForm;

    .end local p0
    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    .restart local p0
    goto :goto_0

    .line 486
    :cond_0
    instance-of v0, p0, Lgnu/lists/Pair;

    if-nez v0, :cond_1

    .line 487
    const/4 v0, 0x0

    .line 488
    .end local p0
    :goto_1
    return-object v0

    .restart local p0
    :cond_1
    check-cast p0, Lgnu/lists/Pair;

    .end local p0
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public static setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V
    .locals 1
    .parameter "decl"
    .parameter "location"

    .prologue
    .line 816
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 817
    check-cast p1, Lgnu/text/SourceLocator;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 818
    :cond_0
    return-void
.end method

.method public static setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V
    .locals 1
    .parameter "exp"
    .parameter "location"

    .prologue
    .line 810
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 811
    check-cast p1, Lgnu/text/SourceLocator;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    .line 812
    :cond_0
    return-void
.end method

.method public static stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 468
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 469
    check-cast p0, Lkawa/lang/SyntaxForm;

    .end local p0
    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    .restart local p0
    goto :goto_0

    .line 470
    :cond_0
    return-object p0
.end method

.method static vectorReverse(Ljava/util/Vector;II)V
    .locals 6
    .parameter "vec"
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1347
    div-int/lit8 v1, p2, 0x2

    .line 1348
    .local v1, j:I
    add-int v4, p1, p2

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .line 1349
    .local v2, last:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1351
    add-int v4, p1, v0

    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 1352
    .local v3, tmp:Ljava/lang/Object;
    sub-int v4, v2, v0

    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    add-int v5, p1, v0

    invoke-virtual {p0, v4, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1353
    sub-int v4, v2, v0

    invoke-virtual {p0, v3, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1355
    .end local v3           #tmp:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;
    .locals 1
    .parameter "form"
    .parameter "syntax"

    .prologue
    .line 936
    if-eqz p1, :cond_0

    instance-of v0, p0, Lgnu/expr/Expression;

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 939
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;
    .locals 3
    .parameter "syntax"
    .parameter "form"

    .prologue
    .line 128
    sget-object v0, Lkawa/lang/Translator;->errorExp:Lgnu/expr/Expression;

    .line 129
    .local v0, exp:Lgnu/expr/Expression;
    iget-object v1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 130
    .local v1, saveSyntax:Lkawa/lang/Syntax;
    iput-object p1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 133
    :try_start_0
    invoke-virtual {p1, p2, p0}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 137
    iput-object v1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 139
    return-object v0

    .line 137
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    throw v2
.end method

.method check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;
    .locals 10
    .parameter "decl"

    .prologue
    const-wide/32 v7, 0x8000

    const/4 v9, 0x0

    .line 251
    invoke-static {p1}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 252
    .local v1, d:Lgnu/expr/Declaration;
    const/4 v5, 0x0

    .line 253
    .local v5, obj:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    .line 254
    .local v2, dval:Lgnu/expr/Expression;
    if-eqz v2, :cond_4

    invoke-virtual {v1, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 258
    :try_start_0
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    instance-of v6, v6, Lgnu/expr/ReferenceExp;

    if-eqz v6, :cond_3

    .line 260
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    check-cast v6, Lgnu/expr/ReferenceExp;

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 262
    .local v0, context:Lgnu/expr/Declaration;
    if-eqz v0, :cond_2

    .line 263
    iput-object v0, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 269
    .end local v0           #context:Lgnu/expr/Declaration;
    :cond_0
    :goto_0
    iget-object v6, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v2, v6}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 282
    .end local v5           #obj:Ljava/lang/Object;
    :cond_1
    :goto_1
    instance-of v6, v5, Lkawa/lang/Syntax;

    if-eqz v6, :cond_5

    check-cast v5, Lkawa/lang/Syntax;

    move-object v6, v5

    :goto_2
    return-object v6

    .line 264
    .restart local v0       #context:Lgnu/expr/Declaration;
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lkawa/lang/TemplateScope;

    if-eqz v6, :cond_0

    .line 265
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v6, Lkawa/lang/TemplateScope;

    iget-object v6, v6, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    iput-object v6, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 271
    .end local v0           #context:Lgnu/expr/Declaration;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 273
    .local v3, ex:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    const/16 v6, 0x65

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to evaluate macro for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1

    .line 267
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lkawa/lang/TemplateScope;

    if-eqz v6, :cond_0

    .line 268
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v6, Lkawa/lang/TemplateScope;

    iget-object v6, v6, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    iput-object v6, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 277
    :cond_4
    invoke-virtual {p1, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 279
    invoke-static {p1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Lgnu/expr/Declaration;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v4

    .line 280
    .local v4, loc:Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v4, v9}, Lgnu/kawa/reflect/StaticFieldLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .end local v4           #loc:Lgnu/kawa/reflect/StaticFieldLocation;
    .end local v5           #obj:Ljava/lang/Object;
    :cond_5
    move-object v6, v9

    .line 282
    goto :goto_2
.end method

.method public define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 6
    .parameter "name"
    .parameter "nameSyntax"
    .parameter "defs"

    .prologue
    .line 1487
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    invoke-virtual {p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v5

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 1488
    .local v1, aliasNeeded:Z
    :goto_0
    if-eqz v1, :cond_2

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 1489
    .local v3, declName:Ljava/lang/Object;
    :goto_1
    const/16 v4, 0x77

    invoke-virtual {p3, v3, v4, p0}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 1490
    .local v2, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_0

    .line 1492
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v4}, Lkawa/lang/Translator;->makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 1493
    .local v0, alias:Lgnu/expr/Declaration;
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    invoke-virtual {v4, v0}, Lkawa/lang/TemplateScope;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1495
    .end local v0           #alias:Lgnu/expr/Declaration;
    :cond_0
    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 1496
    return-object v2

    .line 1487
    .end local v1           #aliasNeeded:Z
    .end local v2           #decl:Lgnu/expr/Declaration;
    .end local v3           #declName:Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .restart local v1       #aliasNeeded:Z
    :cond_2
    move-object v3, p1

    .line 1488
    goto :goto_1
.end method

.method public exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;
    .locals 8
    .parameter "typeSpecPair"

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 877
    .local v1, saved:Ljava/lang/Object;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v3

    .line 878
    .local v3, texp:Lgnu/expr/Expression;
    invoke-static {v3, p0}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v3

    .line 879
    instance-of v5, v3, Lgnu/expr/ErrorExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 880
    const/4 v5, 0x0

    .line 910
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .end local v3           #texp:Lgnu/expr/Expression;
    :goto_0
    return-object v5

    .line 881
    .restart local v3       #texp:Lgnu/expr/Expression;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v5

    invoke-virtual {v5, v3}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 882
    .local v4, type:Lgnu/bytecode/Type;
    if-nez v4, :cond_1

    .line 886
    :try_start_2
    iget-object v5, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v3, v5}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v2

    .line 887
    .local v2, t:Ljava/lang/Object;
    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 888
    check-cast v2, Ljava/lang/Class;

    .end local v2           #t:Ljava/lang/Object;
    invoke-static {v2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 896
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    .line 898
    :try_start_3
    instance-of v5, v3, Lgnu/expr/ReferenceExp;

    if-eqz v5, :cond_3

    .line 899
    const/16 v5, 0x65

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown type name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v3, Lgnu/expr/ReferenceExp;

    .end local v3           #texp:Lgnu/expr/Expression;
    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 904
    :goto_2
    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 910
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_0

    .line 889
    .restart local v2       #t:Ljava/lang/Object;
    .restart local v3       #texp:Lgnu/expr/Expression;
    :cond_2
    :try_start_4
    instance-of v5, v2, Lgnu/bytecode/Type;

    if-eqz v5, :cond_1

    .line 890
    move-object v0, v2

    check-cast v0, Lgnu/bytecode/Type;

    move-object v4, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 902
    .end local v2           #t:Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x65

    :try_start_5
    const-string v6, "invalid type spec (must be \"type\" or \'type or <type>)"

    invoke-virtual {p0, v5, v6}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 910
    .end local v3           #texp:Lgnu/expr/Expression;
    .end local v4           #type:Lgnu/bytecode/Type;
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v5

    .restart local v3       #texp:Lgnu/expr/Expression;
    .restart local v4       #type:Lgnu/bytecode/Type;
    :cond_4
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v5, v4

    goto :goto_0

    .line 892
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public finishModule(Lgnu/expr/ModuleExp;)V
    .locals 11
    .parameter "mexp"

    .prologue
    const-wide/16 v9, 0x400

    const/16 v8, 0x65

    const-wide/16 v6, 0x800

    .line 1303
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v1

    .line 1304
    .local v1, moduleStatic:Z
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1305
    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_b

    .line 1307
    const-wide/16 v4, 0x200

    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1309
    const-string v2, "\'"

    .line 1310
    .local v2, msg1:Ljava/lang/String;
    invoke-virtual {v0, v9, v10}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "\' exported but never defined"

    move-object v3, v4

    .line 1316
    .local v3, msg2:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v8, v0, v2, v3}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    .end local v2           #msg1:Ljava/lang/String;
    .end local v3           #msg2:Ljava/lang/String;
    :cond_0
    const/16 v4, 0x4000

    invoke-virtual {p1, v4}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lkawa/lang/Translator;->generateMain:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lkawa/lang/Translator;->immediate:Z

    if-nez v4, :cond_3

    .line 1321
    :cond_1
    invoke-virtual {v0, v9, v10}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1323
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1325
    const-wide/32 v4, 0x1000000

    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1326
    const-string v4, "\'"

    const-string v5, "\' is declared both private and exported"

    invoke-virtual {p0, v8, v0, v4, v5}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 1334
    :cond_3
    :goto_2
    if-eqz v1, :cond_8

    .line 1335
    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1305
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 1310
    .restart local v2       #msg1:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "\' declared static but never defined"

    move-object v3, v4

    goto :goto_1

    :cond_6
    const-string v4, "\' declared but never defined"

    move-object v3, v4

    goto :goto_1

    .line 1332
    .end local v2           #msg1:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setPrivate(Z)V

    goto :goto_2

    .line 1336
    :cond_8
    const/high16 v4, 0x1

    invoke-virtual {p1, v4}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    sget v4, Lgnu/expr/Compilation;->moduleStatic:I

    if-ltz v4, :cond_a

    const/high16 v4, 0x2

    invoke-virtual {p1, v4}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1340
    :cond_a
    const-wide/16 v4, 0x1000

    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_3

    .line 1342
    :cond_b
    return-void
.end method

.method public getCurrentSyntax()Lkawa/lang/Syntax;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    return-object v0
.end method

.method public final getGlobalEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 3
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 219
    iget-object v1, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v1, p1, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    .line 220
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 222
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_0
.end method

.method public lookupGlobal(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 1
    .parameter "name"

    .prologue
    .line 228
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->lookupGlobal(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method public lookupGlobal(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 3
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 234
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    .line 235
    .local v1, module:Lgnu/expr/ModuleExp;
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v0

    .line 236
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_0

    .line 238
    invoke-virtual {v1, p1}, Lgnu/expr/ModuleExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 241
    :cond_0
    return-object v0
.end method

.method public makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 1
    .parameter "decl"
    .parameter "templateScope"

    .prologue
    .line 1421
    if-nez p2, :cond_0

    move-object v0, p1

    .line 1423
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lkawa/lang/Translator;->makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0
.end method

.method public makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 3
    .parameter "name"
    .parameter "decl"
    .parameter "templateScope"

    .prologue
    const/4 v2, 0x1

    .line 1430
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 1431
    .local v0, alias:Lgnu/expr/Declaration;
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 1432
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 1433
    iput-object p3, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 1434
    new-instance v1, Lgnu/expr/ReferenceExp;

    invoke-direct {v1, p2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 1435
    .local v1, ref:Lgnu/expr/ReferenceExp;
    invoke-virtual {v1, v2}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 1436
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1437
    return-object v0
.end method

.method public matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;
    .locals 2
    .parameter "pair"

    .prologue
    .line 210
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "quote"

    invoke-virtual {p0, v0, v1}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lgnu/lists/Pair;

    .restart local p1
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final matches(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .parameter "form"
    .parameter "literal"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/mapping/Symbol;)Z
    .locals 3
    .parameter "form"
    .parameter "syntax"
    .parameter "literal"

    .prologue
    .line 190
    if-eqz p2, :cond_0

    .line 194
    :cond_0
    instance-of v1, p1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_1

    .line 197
    check-cast p1, Lkawa/lang/SyntaxForm;

    .end local p1
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    .line 199
    .restart local p1
    :cond_1
    instance-of v1, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    iget-object v1, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v1

    invoke-static {v1}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v0

    .line 202
    .local v0, rexp:Lgnu/expr/ReferenceExp;
    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    .line 205
    .end local v0           #rexp:Lgnu/expr/ReferenceExp;
    :cond_2
    if-ne p1, p3, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z
    .locals 3
    .parameter "form"
    .parameter "syntax"
    .parameter "literal"

    .prologue
    .line 169
    if-eqz p2, :cond_0

    .line 173
    :cond_0
    instance-of v1, p1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_1

    .line 176
    check-cast p1, Lkawa/lang/SyntaxForm;

    .end local p1
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    .line 178
    .restart local p1
    :cond_1
    instance-of v1, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 180
    iget-object v1, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v1

    invoke-static {v1}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v0

    .line 181
    .local v0, rexp:Lgnu/expr/ReferenceExp;
    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    .line 184
    .end local v0           #rexp:Lgnu/expr/ReferenceExp;
    :cond_2
    instance-of v1, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz v1, :cond_3

    check-cast p1, Lgnu/mapping/Symbol;

    .end local p1
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p3, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;
    .locals 1
    .parameter "context"
    .parameter "member"

    .prologue
    .line 463
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "ns"
    .parameter "member"

    .prologue
    .line 453
    if-eqz p1, :cond_0

    instance-of v1, p2, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    .line 455
    check-cast p2, Lgnu/expr/QuoteExp;

    .end local p2
    invoke-virtual {p2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, mem:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 458
    .end local v0           #mem:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "name"

    .prologue
    .line 566
    instance-of v6, p1, Lgnu/mapping/SimpleSymbol;

    if-nez v6, :cond_1

    .line 569
    instance-of v6, p1, Lgnu/lists/Pair;

    if-eqz v6, :cond_1

    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .local v2, p:Lgnu/lists/Pair;
    invoke-static {v2}, Lkawa/lang/Translator;->safeCar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    if-ne v6, v7, :cond_1

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #p:Lgnu/lists/Pair;
    check-cast v2, Lgnu/lists/Pair;

    .restart local v2       #p:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_1

    .line 574
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    .line 575
    .local v3, part1:Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    .line 576
    .local v4, part2:Lgnu/expr/Expression;
    invoke-virtual {p0, v3, v4}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v5

    .line 577
    .local v5, sym:Lgnu/mapping/Symbol;
    if-eqz v5, :cond_0

    move-object v6, v5

    .line 584
    .end local v2           #p:Lgnu/lists/Pair;
    .end local v3           #part1:Lgnu/expr/Expression;
    .end local v4           #part2:Lgnu/expr/Expression;
    .end local v5           #sym:Lgnu/mapping/Symbol;
    :goto_0
    return-object v6

    .line 579
    .restart local v2       #p:Lgnu/lists/Pair;
    .restart local v3       #part1:Lgnu/expr/Expression;
    .restart local v4       #part2:Lgnu/expr/Expression;
    .restart local v5       #sym:Lgnu/mapping/Symbol;
    :cond_0
    invoke-static {v3, v4}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, combinedName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 581
    sget-object v6, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v6, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    goto :goto_0

    .end local v1           #combinedName:Ljava/lang/String;
    .end local v2           #p:Lgnu/lists/Pair;
    .end local v3           #part1:Lgnu/expr/Expression;
    .end local v4           #part2:Lgnu/expr/Expression;
    .end local v5           #sym:Lgnu/mapping/Symbol;
    :cond_1
    move-object v6, p1

    .line 584
    goto :goto_0
.end method

.method public namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 421
    instance-of v8, p1, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_5

    .line 423
    move-object v0, p1

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v3, v0

    .line 424
    .local v3, rexp:Lgnu/expr/ReferenceExp;
    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    .line 426
    .local v1, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_0

    const-wide/32 v8, 0x10000

    invoke-virtual {v1, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 428
    :cond_0
    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    .line 429
    .local v4, rsym:Ljava/lang/Object;
    instance-of v8, v4, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_1

    check-cast v4, Lgnu/mapping/Symbol;

    .end local v4           #rsym:Ljava/lang/Object;
    move-object v5, v4

    .line 431
    .local v5, sym:Lgnu/mapping/Symbol;
    :goto_0
    iget-object v8, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v8, v5, v10}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 439
    .end local v5           #sym:Lgnu/mapping/Symbol;
    :goto_1
    instance-of v8, v7, Lgnu/mapping/Namespace;

    if-eqz v8, :cond_5

    .line 441
    move-object v0, v7

    check-cast v0, Lgnu/mapping/Namespace;

    move-object v2, v0

    .line 442
    .local v2, ns:Lgnu/mapping/Namespace;
    invoke-virtual {v2}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, uri:Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string v8, "class:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v10

    .line 448
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v2           #ns:Lgnu/mapping/Namespace;
    .end local v3           #rexp:Lgnu/expr/ReferenceExp;
    .end local v6           #uri:Ljava/lang/String;
    :goto_2
    return-object v8

    .line 429
    .restart local v1       #decl:Lgnu/expr/Declaration;
    .restart local v3       #rexp:Lgnu/expr/ReferenceExp;
    .restart local v4       #rsym:Ljava/lang/Object;
    :cond_1
    iget-object v8, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    move-object v5, v8

    goto :goto_0

    .line 433
    .end local v4           #rsym:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isNamespaceDecl()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 435
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, val:Ljava/lang/Object;
    goto :goto_1

    .line 438
    .end local v7           #val:Ljava/lang/Object;
    :cond_3
    const/4 v7, 0x0

    .restart local v7       #val:Ljava/lang/Object;
    goto :goto_1

    .end local v7           #val:Ljava/lang/Object;
    .restart local v2       #ns:Lgnu/mapping/Namespace;
    .restart local v6       #uri:Ljava/lang/String;
    :cond_4
    move-object v8, v2

    .line 445
    goto :goto_2

    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v2           #ns:Lgnu/mapping/Namespace;
    .end local v3           #rexp:Lgnu/expr/ReferenceExp;
    .end local v6           #uri:Ljava/lang/String;
    :cond_5
    move-object v8, v10

    .line 448
    goto :goto_2
.end method

.method public noteAccess(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "name"
    .parameter "scope"

    .prologue
    .line 1266
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1267
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    .line 1268
    :cond_0
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1269
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1270
    return-void
.end method

.method public parse(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1
    .parameter "input"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public popForms(I)Ljava/lang/Object;
    .locals 5
    .parameter "first"

    .prologue
    .line 944
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v1

    .line 945
    .local v1, last:I
    if-ne v1, p1, :cond_0

    .line 946
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 958
    :goto_0
    return-object v4

    .line 948
    :cond_0
    add-int/lit8 v4, p1, 0x1

    if-ne v1, v4, :cond_1

    .line 949
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 957
    :goto_1
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4, p1}, Ljava/util/Stack;->setSize(I)V

    move-object v4, v2

    .line 958
    goto :goto_0

    .line 952
    :cond_1
    new-instance v3, Lgnu/mapping/Values;

    invoke-direct {v3}, Lgnu/mapping/Values;-><init>()V

    .line 953
    .local v3, vals:Lgnu/mapping/Values;
    move v0, p1

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 954
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 955
    :cond_2
    move-object v2, v3

    .local v2, r:Lgnu/mapping/Values;
    goto :goto_1
.end method

.method public popPositionOf(Ljava/lang/Object;)V
    .locals 2
    .parameter "saved"

    .prologue
    .line 852
    if-nez p1, :cond_1

    .line 858
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 854
    .restart local p1
    :cond_1
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 855
    check-cast p1, Lgnu/lists/PairWithPosition;

    .end local p1
    iput-object p1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .line 856
    iget-object v0, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v0}, Lgnu/lists/PairWithPosition;->getCar()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 857
    iget-object v0, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v0}, Lgnu/lists/PairWithPosition;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/PairWithPosition;

    iput-object v0, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    goto :goto_0
.end method

.method public popRenamedAlias(I)V
    .locals 5
    .parameter "count"

    .prologue
    .line 1472
    :cond_0
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1474
    iget-object v4, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/ScopeExp;

    .line 1475
    .local v3, templateScope:Lgnu/expr/ScopeExp;
    iget-object v4, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Declaration;

    .line 1476
    .local v0, alias:Lgnu/expr/Declaration;
    invoke-static {v0}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    .line 1477
    .local v1, decl:Lgnu/expr/Declaration;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 1478
    invoke-virtual {v3, v0}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;)V

    .line 1479
    iget-object v4, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 1480
    .local v2, old:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1481
    check-cast v2, Lgnu/expr/Declaration;

    .end local v2           #old:Ljava/lang/Object;
    invoke-virtual {v3, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    goto :goto_0

    .line 1483
    .end local v0           #alias:Lgnu/expr/Declaration;
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v3           #templateScope:Lgnu/expr/ScopeExp;
    :cond_1
    return-void
.end method

.method public processAccesses()V
    .locals 8

    .prologue
    .line 1278
    iget-object v6, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    if-nez v6, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    iget-object v6, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1281
    .local v5, sz:I
    iget-object v3, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 1282
    .local v3, saveScope:Lgnu/expr/ScopeExp;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 1284
    iget-object v6, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 1285
    .local v2, name:Ljava/lang/Object;
    iget-object v6, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/ScopeExp;

    .line 1286
    .local v4, scope:Lgnu/expr/ScopeExp;
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v6, v4, :cond_2

    .line 1287
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1288
    :cond_2
    iget-object v6, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v7, -0x1

    invoke-virtual {v6, v2, v7}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    .line 1289
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_3

    const-wide/32 v6, 0x10000

    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1291
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v6

    invoke-virtual {v6, v0}, Lgnu/expr/LambdaExp;->capture(Lgnu/expr/Declaration;)V

    .line 1292
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 1293
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 1294
    const-wide/32 v6, 0x80000

    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1282
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1297
    .end local v0           #decl:Lgnu/expr/Declaration;
    .end local v2           #name:Ljava/lang/Object;
    .end local v4           #scope:Lgnu/expr/ScopeExp;
    :cond_4
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v6, v3, :cond_0

    .line 1298
    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    goto :goto_0
.end method

.method public pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "pair"

    .prologue
    .line 827
    instance-of v3, p1, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_0

    .line 828
    check-cast p1, Lkawa/lang/SyntaxForm;

    .end local p1
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    .line 829
    .restart local p1
    :cond_0
    instance-of v3, p1, Lgnu/lists/PairWithPosition;

    if-nez v3, :cond_1

    .line 830
    const/4 v3, 0x0

    .line 844
    :goto_0
    return-object v3

    .line 831
    :cond_1
    move-object v0, p1

    check-cast v0, Lgnu/lists/PairWithPosition;

    move-object v1, v0

    .line 833
    .local v1, ppair:Lgnu/lists/PairWithPosition;
    iget-object v3, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v3}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v3}, Lgnu/lists/PairWithPosition;->getLineNumber()I

    move-result v3

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v3}, Lgnu/lists/PairWithPosition;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 838
    :cond_2
    new-instance v2, Lgnu/lists/PairWithPosition;

    sget-object v3, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    iget-object v4, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-direct {v2, p0, v3, v4}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 842
    .local v2, saved:Lgnu/lists/PairWithPosition;
    :goto_1
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 843
    iput-object v1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    move-object v3, v2

    .line 844
    goto :goto_0

    .line 841
    .end local v2           #saved:Lgnu/lists/PairWithPosition;
    :cond_3
    iget-object v2, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .restart local v2       #saved:Lgnu/lists/PairWithPosition;
    goto :goto_1
.end method

.method public pushRenamedAlias(Lgnu/expr/Declaration;)V
    .locals 4
    .parameter "alias"

    .prologue
    .line 1455
    invoke-static {p1}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1456
    .local v0, decl:Lgnu/expr/Declaration;
    iget-object v2, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 1457
    .local v2, templateScope:Lgnu/expr/ScopeExp;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 1458
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 1459
    .local v1, old:Lgnu/expr/Declaration;
    if-eqz v1, :cond_0

    .line 1460
    invoke-virtual {v2, v1}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;)V

    .line 1461
    :cond_0
    invoke-virtual {v2, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1462
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    if-nez v3, :cond_1

    .line 1463
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    .line 1464
    :cond_1
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .locals 20
    .parameter "mexp"

    .prologue
    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    move-object v3, v0

    if-nez v3, :cond_2

    const/4 v3, 0x0

    move v15, v3

    .line 1360
    .local v15, numPending:I
    :goto_0
    const/4 v13, 0x0

    .local v13, i:I
    move v14, v13

    .end local v13           #i:I
    .local v14, i:I
    :cond_0
    :goto_1
    if-ge v14, v15, :cond_3

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    move-object v3, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14           #i:I
    .restart local v13       #i:I
    invoke-virtual {v3, v14}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/ModuleInfo;

    .line 1363
    .local v4, info:Lgnu/expr/ModuleInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    move-object v3, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .restart local v14       #i:I
    invoke-virtual {v3, v13}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/ScopeExp;

    .line 1364
    .local v7, defs:Lgnu/expr/ScopeExp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    move-object v3, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14           #i:I
    .restart local v13       #i:I
    invoke-virtual {v3, v14}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/expr/Expression;

    .line 1365
    .local v16, posExp:Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    move-object v3, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .restart local v14       #i:I
    invoke-virtual {v3, v13}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 1366
    .local v19, savedSize:Ljava/lang/Integer;
    move-object/from16 v0, p1

    move-object v1, v7

    if-ne v0, v1, :cond_0

    .line 1369
    new-instance v17, Lgnu/expr/ReferenceExp;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 1370
    .local v17, savePos:Lgnu/expr/Expression;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 1371
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v9

    .line 1373
    .local v9, beforeSize:I
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v6, v0

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v8}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 1375
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1376
    .local v12, desiredPosition:I
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v9, :cond_1

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v11

    .line 1380
    .local v11, curSize:I
    sub-int v10, v11, v12

    .line 1382
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v3, v0

    sub-int v4, v9, v12

    invoke-static {v3, v12, v4}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1383
    .end local v4           #info:Lgnu/expr/ModuleInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v3, v0

    sub-int v4, v11, v9

    invoke-static {v3, v9, v4}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v3, v0

    invoke-static {v3, v12, v10}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1386
    .end local v10           #count:I
    .end local v11           #curSize:I
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;)V

    goto/16 :goto_1

    .line 1359
    .end local v7           #defs:Lgnu/expr/ScopeExp;
    .end local v9           #beforeSize:I
    .end local v12           #desiredPosition:I
    .end local v14           #i:I
    .end local v15           #numPending:I
    .end local v16           #posExp:Lgnu/expr/Expression;
    .end local v17           #savePos:Lgnu/expr/Expression;
    .end local v19           #savedSize:Ljava/lang/Integer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    move v15, v3

    goto/16 :goto_0

    .line 1389
    .restart local v14       #i:I
    .restart local v15       #numPending:I
    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    .line 1391
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->processAccesses()V

    .line 1393
    invoke-virtual/range {p0 .. p1}, Lkawa/lang/Translator;->setModule(Lgnu/expr/ModuleExp;)V

    .line 1394
    invoke-static/range {p0 .. p0}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v18

    .line 1397
    .local v18, save_comp:Lgnu/expr/Compilation;
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lkawa/lang/Translator;->firstForm:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V

    .line 1398
    move-object/from16 v0, p0

    iget v0, v0, Lkawa/lang/Translator;->firstForm:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lkawa/lang/Translator;->makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1400
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/lang/Translator;->immediate:Z

    move v3, v0

    if-nez v3, :cond_4

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    :cond_4
    invoke-static/range {v18 .. v18}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 1416
    return-void

    .line 1405
    :catchall_0
    move-exception v3

    invoke-static/range {v18 .. v18}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    throw v3
.end method

.method public rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 561
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;
    .locals 36
    .parameter "exp"
    .parameter "function"

    .prologue
    .line 592
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v32, v0

    if-eqz v32, :cond_0

    .line 594
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v30, v0

    .line 595
    .local v30, sf:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v27, v0

    .line 598
    .local v27, save_scope:Lgnu/expr/ScopeExp;
    :try_start_0
    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 599
    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v26

    .line 604
    .local v26, s:Lgnu/expr/Expression;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object/from16 v32, v26

    .line 805
    .end local v26           #s:Lgnu/expr/Expression;
    .end local v27           #save_scope:Lgnu/expr/ScopeExp;
    .end local v30           #sf:Lkawa/lang/SyntaxForm;
    .end local p0
    .end local p1
    :goto_0
    return-object v32

    .line 604
    .restart local v27       #save_scope:Lgnu/expr/ScopeExp;
    .restart local v30       #sf:Lkawa/lang/SyntaxForm;
    .restart local p0
    .restart local p1
    :catchall_0
    move-exception v32

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v32

    .line 607
    .end local v27           #save_scope:Lgnu/expr/ScopeExp;
    .end local v30           #sf:Lkawa/lang/SyntaxForm;
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/PairWithPosition;

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 608
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/PairWithPosition;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;

    move-result-object v32

    goto :goto_0

    .line 609
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v32, v0

    if-eqz v32, :cond_2

    .line 610
    check-cast p1, Lgnu/lists/Pair;

    .end local p1
    invoke-virtual/range {p0 .. p2}, Lkawa/lang/Translator;->rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v32

    goto :goto_0

    .line 611
    .restart local p1
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v32, v0

    if-eqz v32, :cond_20

    invoke-virtual/range {p0 .. p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_20

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v11

    .line 614
    .local v11, decl:Lgnu/expr/Declaration;
    const/4 v6, 0x0

    .line 619
    .local v6, cdecl:Lgnu/expr/Declaration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v28, v0

    .line 620
    .local v28, scope:Lgnu/expr/ScopeExp;
    if-nez v11, :cond_6

    const/16 v32, -0x1

    move/from16 v12, v32

    .line 622
    .local v12, decl_nesting:I
    :goto_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v32, v0

    if-eqz v32, :cond_7

    move-object/from16 v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result v32

    if-eqz v32, :cond_7

    .line 623
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 629
    .local v13, dname:Ljava/lang/String;
    :goto_2
    if-eqz v28, :cond_3

    .line 631
    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v32, v0

    if-eqz v32, :cond_a

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v32, v0

    if-eqz v32, :cond_a

    move-object/from16 v0, v28

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v32

    if-eqz v32, :cond_a

    .line 635
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v32

    move v0, v12

    move/from16 v1, v32

    if-lt v0, v1, :cond_8

    .line 666
    :cond_3
    if-eqz v11, :cond_f

    .line 668
    invoke-virtual {v11}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v22

    .line 669
    .local v22, nameToLookup:Ljava/lang/Object;
    const/16 p1, 0x0

    .line 670
    invoke-static {v11}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v25

    .line 671
    .local v25, rexp:Lgnu/expr/ReferenceExp;
    if-eqz v25, :cond_4

    .line 673
    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v11

    .line 674
    if-nez v11, :cond_4

    .line 676
    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    .line 677
    move-object/from16 v22, p1

    .end local p1
    :cond_4
    move-object/from16 v32, p1

    .line 685
    .end local v25           #rexp:Lgnu/expr/ReferenceExp;
    :goto_3
    move-object/from16 v0, v32

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    .line 686
    .local v31, symbol:Lgnu/mapping/Symbol;
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v29

    .line 687
    .local v29, separate:Z
    if-eqz v11, :cond_13

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lkawa/lang/TemplateScope;

    move/from16 v32, v0

    if-eqz v32, :cond_10

    invoke-virtual {v11}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v32

    if-eqz v32, :cond_10

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 p1, v0

    check-cast p1, Lkawa/lang/TemplateScope;

    move-object/from16 v0, p1

    iget-object v0, v0, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    move-object v6, v0

    .line 778
    :cond_5
    :goto_4
    if-eqz v11, :cond_1e

    .line 783
    if-nez p2, :cond_1d

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lkawa/standard/object;

    move/from16 v32, v0

    if-eqz v32, :cond_1d

    .line 785
    const-class v32, Ljava/lang/Object;

    invoke-static/range {v32 .. v32}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v32

    goto/16 :goto_0

    .line 620
    .end local v12           #decl_nesting:I
    .end local v13           #dname:Ljava/lang/String;
    .end local v22           #nameToLookup:Ljava/lang/Object;
    .end local v29           #separate:Z
    .end local v31           #symbol:Lgnu/mapping/Symbol;
    .restart local p1
    :cond_6
    move-object v0, v11

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v32

    move/from16 v12, v32

    goto/16 :goto_1

    .line 626
    .restart local v12       #decl_nesting:I
    :cond_7
    const/4 v13, 0x0

    .line 627
    .restart local v13       #dname:Ljava/lang/String;
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 637
    :cond_8
    move-object/from16 v0, v28

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v5, v0

    .line 638
    .local v5, caller:Lgnu/expr/LambdaExp;
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v8, v0

    check-cast v8, Lgnu/expr/ClassExp;

    .line 639
    .local v8, cexp:Lgnu/expr/ClassExp;
    invoke-virtual {v8}, Lgnu/expr/ClassExp;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v10

    .line 640
    .local v10, ctype:Lgnu/bytecode/ClassType;
    invoke-static {v10, v13, v10}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v23

    .line 641
    .local v23, part:Lgnu/bytecode/Member;
    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v32, v0

    move-object v0, v5

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_9

    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v32, v0

    move-object v0, v5

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_b

    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v32

    if-eqz v32, :cond_b

    :cond_9
    const/16 v32, 0x1

    move/from16 v9, v32

    .line 645
    .local v9, contextStatic:Z
    :goto_5
    if-nez v23, :cond_d

    .line 647
    if-eqz v9, :cond_c

    const/16 v32, 0x53

    move/from16 v21, v32

    .line 648
    .local v21, mode:C
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->language:Lgnu/expr/Language;

    move-object/from16 v32, v0

    move-object v0, v10

    move-object v1, v13

    move/from16 v2, v21

    move-object v3, v10

    move-object/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v20

    .line 651
    .local v20, methods:[Lgnu/expr/PrimProcedure;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_d

    .line 629
    .end local v5           #caller:Lgnu/expr/LambdaExp;
    .end local v8           #cexp:Lgnu/expr/ClassExp;
    .end local v9           #contextStatic:Z
    .end local v10           #ctype:Lgnu/bytecode/ClassType;
    .end local v20           #methods:[Lgnu/expr/PrimProcedure;
    .end local v21           #mode:C
    .end local v23           #part:Lgnu/bytecode/Member;
    :cond_a
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v28, v0

    goto/16 :goto_2

    .line 641
    .restart local v5       #caller:Lgnu/expr/LambdaExp;
    .restart local v8       #cexp:Lgnu/expr/ClassExp;
    .restart local v10       #ctype:Lgnu/bytecode/ClassType;
    .restart local v23       #part:Lgnu/bytecode/Member;
    :cond_b
    const/16 v32, 0x0

    move/from16 v9, v32

    goto :goto_5

    .line 647
    .restart local v9       #contextStatic:Z
    :cond_c
    const/16 v32, 0x56

    move/from16 v21, v32

    goto :goto_6

    .line 656
    :cond_d
    if-eqz v9, :cond_e

    .line 657
    new-instance v24, Lgnu/expr/ReferenceExp;

    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lgnu/expr/ClassExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 660
    .local v24, part1:Lgnu/expr/Expression;
    :goto_7
    invoke-static {v13}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v32

    goto/16 :goto_0

    .line 659
    .end local v24           #part1:Lgnu/expr/Expression;
    .restart local p0
    :cond_e
    new-instance v24, Lgnu/expr/ThisExp;

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    .restart local v24       #part1:Lgnu/expr/Expression;
    goto :goto_7

    .line 683
    .end local v5           #caller:Lgnu/expr/LambdaExp;
    .end local v8           #cexp:Lgnu/expr/ClassExp;
    .end local v9           #contextStatic:Z
    .end local v10           #ctype:Lgnu/bytecode/ClassType;
    .end local v23           #part:Lgnu/bytecode/Member;
    .end local v24           #part1:Lgnu/expr/Expression;
    :cond_f
    move-object/from16 v22, p1

    .restart local v22       #nameToLookup:Ljava/lang/Object;
    move-object/from16 v32, p1

    goto/16 :goto_3

    .line 691
    .end local p1
    .restart local v29       #separate:Z
    .restart local v31       #symbol:Lgnu/mapping/Symbol;
    :cond_10
    const-wide/32 v32, 0x100000

    move-object v0, v11

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v32

    if-eqz v32, :cond_5

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v32

    if-nez v32, :cond_5

    .line 694
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v28

    .line 697
    :goto_8
    if-nez v28, :cond_11

    .line 698
    new-instance v32, Ljava/lang/Error;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "internal error: missing "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v32

    .line 699
    :cond_11
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    move-object v0, v11

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_12

    .line 703
    invoke-virtual/range {v28 .. v28}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    goto/16 :goto_4

    .line 701
    :cond_12
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v28, v0

    goto :goto_8

    .line 708
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object/from16 v33, v0

    if-eqz p2, :cond_16

    if-eqz v29, :cond_16

    sget-object v34, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_9
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v19

    .line 712
    .local v19, loc:Lgnu/mapping/Location;
    if-eqz v19, :cond_14

    .line 713
    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v19

    .line 714
    :cond_14
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/kawa/reflect/FieldLocation;

    move/from16 v33, v0

    if-eqz v33, :cond_1b

    .line 716
    move-object/from16 v0, v19

    check-cast v0, Lgnu/kawa/reflect/FieldLocation;

    move-object/from16 v18, v0

    .line 719
    .local v18, floc:Lgnu/kawa/reflect/FieldLocation;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/reflect/FieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v11

    .line 720
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v33

    if-nez v33, :cond_17

    sget-object v33, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    move-object v0, v11

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_17

    const-string v33, "objectSyntax"

    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/reflect/FieldLocation;->getMemberName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_15

    const-string v33, "kawa.standard.object"

    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_17

    .line 728
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 708
    .end local v18           #floc:Lgnu/kawa/reflect/FieldLocation;
    .end local v19           #loc:Lgnu/mapping/Location;
    :cond_16
    const/16 v34, 0x0

    goto :goto_9

    .line 729
    .restart local v18       #floc:Lgnu/kawa/reflect/FieldLocation;
    .restart local v19       #loc:Lgnu/mapping/Location;
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/lang/Translator;->immediate:Z

    move/from16 v33, v0

    if-eqz v33, :cond_18

    .line 731
    invoke-virtual {v11}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v33

    if-nez v33, :cond_5

    .line 733
    new-instance v7, Lgnu/expr/Declaration;

    const-string v33, "(module-instance)"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 734
    .end local v6           #cdecl:Lgnu/expr/Declaration;
    .local v7, cdecl:Lgnu/expr/Declaration;
    :try_start_2
    new-instance v33, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/reflect/FieldLocation;->getInstance()Ljava/lang/Object;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v7

    .end local v7           #cdecl:Lgnu/expr/Declaration;
    .restart local v6       #cdecl:Lgnu/expr/Declaration;
    goto/16 :goto_4

    .line 737
    :cond_18
    :try_start_3
    invoke-virtual {v11}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v33

    if-eqz v33, :cond_1a

    .line 742
    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/reflect/FieldLocation;->getRClass()Ljava/lang/Class;

    move-result-object v16

    .line 744
    .local v16, fclass:Ljava/lang/Class;
    if-eqz v16, :cond_19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    .local v17, floader:Ljava/lang/ClassLoader;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/ZipLoader;

    move/from16 v33, v0

    if-nez v33, :cond_19

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/ArrayClassLoader;

    move/from16 v32, v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v32, :cond_5

    .line 748
    .end local v17           #floader:Ljava/lang/ClassLoader;
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 751
    .end local v16           #fclass:Ljava/lang/Class;
    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 753
    :catch_0
    move-exception v33

    move-object/from16 v15, v33

    .line 755
    .local v15, ex:Ljava/lang/Throwable;
    :goto_a
    const/16 v33, 0x65

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "exception loading \'"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, "\' - "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 758
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 761
    .end local v15           #ex:Ljava/lang/Throwable;
    .end local v18           #floc:Lgnu/kawa/reflect/FieldLocation;
    :cond_1b
    if-eqz v19, :cond_1c

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Location;->isBound()Z

    move-result v32

    if-nez v32, :cond_5

    .line 763
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p1

    check-cast p1, Lgnu/kawa/lispexpr/LispLanguage;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v14

    .line 765
    .local v14, e:Lgnu/expr/Expression;
    if-eqz v14, :cond_5

    move-object/from16 v32, v14

    .line 766
    goto/16 :goto_0

    .line 787
    .end local v14           #e:Lgnu/expr/Expression;
    .end local v19           #loc:Lgnu/mapping/Location;
    :cond_1d
    invoke-virtual {v11}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lkawa/lang/PatternScope;

    move/from16 v32, v0

    if-eqz v32, :cond_1e

    .line 788
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "reference to pattern variable "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " outside syntax template"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v32

    goto/16 :goto_0

    .line 791
    :cond_1e
    new-instance v25, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 792
    .restart local v25       #rexp:Lgnu/expr/ReferenceExp;
    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 793
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setLine(Lgnu/expr/Compilation;)V

    .line 794
    if-eqz p2, :cond_1f

    if-eqz v29, :cond_1f

    .line 795
    const/16 v32, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    :cond_1f
    move-object/from16 v32, v25

    .line 796
    goto/16 :goto_0

    .line 798
    .end local v6           #cdecl:Lgnu/expr/Declaration;
    .end local v11           #decl:Lgnu/expr/Declaration;
    .end local v12           #decl_nesting:I
    .end local v13           #dname:Ljava/lang/String;
    .end local v22           #nameToLookup:Ljava/lang/Object;
    .end local v25           #rexp:Lgnu/expr/ReferenceExp;
    .end local v28           #scope:Lgnu/expr/ScopeExp;
    .end local v29           #separate:Z
    .end local v31           #symbol:Lgnu/mapping/Symbol;
    .restart local p1
    :cond_20
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/expr/LangExp;

    move/from16 v32, v0

    if-eqz v32, :cond_21

    .line 799
    check-cast p1, Lgnu/expr/LangExp;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v32

    goto/16 :goto_0

    .line 800
    .restart local p1
    :cond_21
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/expr/Expression;

    move/from16 v32, v0

    if-eqz v32, :cond_22

    .line 801
    check-cast p1, Lgnu/expr/Expression;

    .end local p1
    move-object/from16 v32, p1

    goto/16 :goto_0

    .line 802
    .restart local p1
    :cond_22
    sget-object v32, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_23

    .line 803
    sget-object v32, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_0

    .line 805
    :cond_23
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lkawa/lang/Quote;->quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;

    move-result-object v32

    goto/16 :goto_0

    .line 753
    .end local p1
    .restart local v7       #cdecl:Lgnu/expr/Declaration;
    .restart local v11       #decl:Lgnu/expr/Declaration;
    .restart local v12       #decl_nesting:I
    .restart local v13       #dname:Ljava/lang/String;
    .restart local v18       #floc:Lgnu/kawa/reflect/FieldLocation;
    .restart local v19       #loc:Lgnu/mapping/Location;
    .restart local v22       #nameToLookup:Ljava/lang/Object;
    .restart local v28       #scope:Lgnu/expr/ScopeExp;
    .restart local v29       #separate:Z
    .restart local v31       #symbol:Lgnu/mapping/Symbol;
    :catch_1
    move-exception v33

    move-object/from16 v15, v33

    move-object v6, v7

    .end local v7           #cdecl:Lgnu/expr/Declaration;
    .restart local v6       #cdecl:Lgnu/expr/Declaration;
    goto/16 :goto_a
.end method

.method public rewriteInBody(Ljava/lang/Object;)V
    .locals 7
    .parameter "exp"

    .prologue
    .line 532
    instance-of v5, p1, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_1

    .line 534
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v3, v0

    .line 535
    .local v3, sf:Lkawa/lang/SyntaxForm;
    iget-object v2, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 538
    .local v2, save_scope:Lgnu/expr/ScopeExp;
    :try_start_0
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v5

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 539
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 554
    .end local v2           #save_scope:Lgnu/expr/ScopeExp;
    .end local v3           #sf:Lkawa/lang/SyntaxForm;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 543
    .restart local v2       #save_scope:Lgnu/expr/ScopeExp;
    .restart local v3       #sf:Lkawa/lang/SyntaxForm;
    .restart local p1
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v5

    .line 546
    .end local v2           #save_scope:Lgnu/expr/ScopeExp;
    .end local v3           #sf:Lkawa/lang/SyntaxForm;
    :cond_1
    instance-of v5, p1, Lgnu/mapping/Values;

    if-eqz v5, :cond_2

    .line 548
    check-cast p1, Lgnu/mapping/Values;

    .end local p1
    invoke-virtual {p1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v4

    .line 549
    .local v4, vals:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 550
    aget-object v5, v4, v1

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 553
    .end local v1           #i:I
    .end local v4           #vals:[Ljava/lang/Object;
    .restart local p1
    :cond_2
    iget-object v5, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 10
    .parameter "exp"

    .prologue
    const/4 v8, 0x0

    .line 1182
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1183
    .local v7, saved:Ljava/lang/Object;
    new-instance v1, Lgnu/expr/LetExp;

    invoke-direct {v1, v8}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 1184
    .local v1, defs:Lgnu/expr/LetExp;
    iget-object v8, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v2

    .line 1185
    .local v2, first:I
    iget-object v8, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v8, v1, Lgnu/expr/LetExp;->outer:Lgnu/expr/ScopeExp;

    .line 1186
    iput-object v1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 1189
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1, v8}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v5

    .line 1190
    .local v5, list:Lgnu/lists/LList;
    invoke-virtual {v5}, Lgnu/lists/LList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1191
    iget-object v8, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    const-string v9, "body with no expressions"

    invoke-virtual {p0, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1192
    :cond_0
    invoke-virtual {v1}, Lgnu/expr/LetExp;->countNonDynamicDecls()I

    move-result v6

    .line 1193
    .local v6, ndecls:I
    if-eqz v6, :cond_2

    .line 1195
    new-array v4, v6, [Lgnu/expr/Expression;

    .line 1196
    .local v4, inits:[Lgnu/expr/Expression;
    move v3, v6

    .local v3, i:I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 1197
    sget-object v8, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    aput-object v8, v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1211
    .end local v3           #i:I
    .end local v4           #inits:[Lgnu/expr/Expression;
    .end local v5           #list:Lgnu/lists/LList;
    .end local v6           #ndecls:I
    :catchall_0
    move-exception v8

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    invoke-virtual {p0, v7}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v8

    .line 1198
    .restart local v3       #i:I
    .restart local v4       #inits:[Lgnu/expr/Expression;
    .restart local v5       #list:Lgnu/lists/LList;
    .restart local v6       #ndecls:I
    :cond_1
    :try_start_1
    iput-object v4, v1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 1200
    .end local v3           #i:I
    .end local v4           #inits:[Lgnu/expr/Expression;
    :cond_2
    invoke-direct {p0, v5}, Lkawa/lang/Translator;->rewriteBody(Lgnu/lists/LList;)V

    .line 1201
    const/4 v8, 0x0

    invoke-direct {p0, v2, v8}, Lkawa/lang/Translator;->makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1202
    .local v0, body:Lgnu/expr/Expression;
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
    if-nez v6, :cond_3

    .line 1211
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    invoke-virtual {p0, v7}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v8, v0

    :goto_1
    return-object v8

    .line 1205
    :cond_3
    :try_start_2
    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 1206
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1211
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    invoke-virtual {p0, v7}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v8, v1

    goto :goto_1
.end method

.method public final rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;
    .locals 4
    .parameter "pair"
    .parameter "syntax"

    .prologue
    const/4 v3, 0x0

    .line 87
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    iget-object v2, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    invoke-virtual {p0, p1, v3}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    .line 90
    :cond_1
    iget-object v0, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 93
    .local v0, save_scope:Lgnu/expr/ScopeExp;
    :try_start_0
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 98
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v1
.end method

.method public final rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    .locals 2
    .parameter "pair"
    .parameter "function"

    .prologue
    .line 104
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, car:Ljava/lang/Object;
    instance-of v1, p1, Lgnu/lists/PairWithPosition;

    if-eqz v1, :cond_0

    .line 106
    check-cast p1, Lgnu/lists/PairWithPosition;

    .end local p1
    invoke-virtual {p0, v0, p2, p1}, Lkawa/lang/Translator;->rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .restart local p1
    :cond_0
    invoke-virtual {p0, v0, p2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_0
.end method

.method public rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    .locals 32
    .parameter "p"
    .parameter "function"

    .prologue
    .line 287
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v13

    .line 288
    .local v13, func:Lgnu/expr/Expression;
    const/16 v19, 0x0

    .line 289
    .local v19, proc:Ljava/lang/Object;
    move-object v0, v13

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 291
    invoke-virtual {v13}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v19

    .line 292
    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 293
    check-cast v19, Lkawa/lang/Syntax;

    .end local v19           #proc:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v29

    .line 416
    .end local p0
    .end local p1
    :goto_0
    return-object v29

    .line 295
    .restart local p0
    .restart local p1
    :cond_0
    const/16 v20, 0x0

    .line 296
    .local v20, ref:Lgnu/expr/ReferenceExp;
    move-object v0, v13

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 298
    move-object v0, v13

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object/from16 v20, v0

    .line 299
    invoke-virtual/range {v20 .. v20}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v10

    .line 300
    .local v10, decl:Lgnu/expr/Declaration;
    if-nez v10, :cond_6

    .line 302
    invoke-virtual/range {v20 .. v20}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v24

    .line 305
    .local v24, sym:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v29, v0

    if-eqz v29, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 307
    move-object/from16 v0, v24

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v25, v0

    .line 308
    .local v25, symbol:Lgnu/mapping/Symbol;
    invoke-virtual/range {v25 .. v25}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v16

    .line 315
    .local v16, name:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v30

    if-eqz v30, :cond_2

    sget-object v30, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_2
    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 320
    .restart local v19       #proc:Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v29, v0

    if-eqz v29, :cond_3

    .line 321
    check-cast v19, Lkawa/lang/Syntax;

    .end local v19           #proc:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v29

    goto :goto_0

    .line 312
    .end local v16           #name:Ljava/lang/String;
    .end local v25           #symbol:Lgnu/mapping/Symbol;
    :cond_1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 313
    .restart local v16       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v25

    .restart local v25       #symbol:Lgnu/mapping/Symbol;
    goto :goto_1

    .line 315
    :cond_2
    const/16 v30, 0x0

    goto :goto_2

    .line 322
    .restart local v19       #proc:Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/AutoloadProcedure;

    move/from16 v29, v0

    if-eqz v29, :cond_4

    .line 326
    :try_start_0
    check-cast v19, Lkawa/lang/AutoloadProcedure;

    .end local v19           #proc:Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 346
    .end local v16           #name:Ljava/lang/String;
    .end local v24           #sym:Ljava/lang/Object;
    .end local v25           #symbol:Lgnu/mapping/Symbol;
    :cond_4
    :goto_3
    const/16 v29, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v29

    if-eqz v29, :cond_5

    .line 348
    const/16 v29, 0x8

    move-object v0, v13

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/expr/Expression;->setFlag(I)V

    .line 351
    .end local v10           #decl:Lgnu/expr/Declaration;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 352
    .local v7, cdr:Ljava/lang/Object;
    invoke-static {v7}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v8

    .line 354
    .local v8, cdr_length:I
    const/16 v29, -0x1

    move v0, v8

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 355
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "circular list is not allowed after "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v29

    goto/16 :goto_0

    .line 328
    .end local v7           #cdr:Ljava/lang/Object;
    .end local v8           #cdr_length:I
    .restart local v10       #decl:Lgnu/expr/Declaration;
    .restart local v16       #name:Ljava/lang/String;
    .restart local v24       #sym:Ljava/lang/Object;
    .restart local v25       #symbol:Lgnu/mapping/Symbol;
    :catch_0
    move-exception v29

    move-object/from16 v12, v29

    .line 330
    .local v12, ex:Ljava/lang/RuntimeException;
    const/16 v19, 0x0

    .restart local v19       #proc:Ljava/lang/Object;
    goto :goto_3

    .line 336
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .end local v16           #name:Ljava/lang/String;
    .end local v19           #proc:Ljava/lang/Object;
    .end local v24           #sym:Ljava/lang/Object;
    .end local v25           #symbol:Lgnu/mapping/Symbol;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    .line 337
    .local v21, saveContext:Lgnu/expr/Declaration;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;

    move-result-object v26

    .line 338
    .local v26, syntax:Lkawa/lang/Syntax;
    if-eqz v26, :cond_4

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v11

    .line 341
    .local v11, e:Lgnu/expr/Expression;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    move-object/from16 v29, v11

    .line 342
    goto/16 :goto_0

    .line 356
    .end local v10           #decl:Lgnu/expr/Declaration;
    .end local v11           #e:Lgnu/expr/Expression;
    .end local v21           #saveContext:Lgnu/expr/Declaration;
    .end local v26           #syntax:Lkawa/lang/Syntax;
    .restart local v7       #cdr:Ljava/lang/Object;
    .restart local v8       #cdr_length:I
    :cond_7
    if-gez v8, :cond_8

    .line 357
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dotted list ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] is not allowed after "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v29

    goto/16 :goto_0

    .line 359
    :cond_8
    const/4 v15, 0x0

    .line 360
    .local v15, mapKeywordsToAttributes:Z
    new-instance v28, Ljava/util/Stack;

    invoke-direct/range {v28 .. v28}, Ljava/util/Stack;-><init>()V

    .line 362
    .local v28, vec:Ljava/util/Stack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v22, v0

    .line 363
    .local v22, save_scope:Lgnu/expr/ScopeExp;
    const/4 v14, 0x0

    .end local p1
    .local v14, i:I
    :goto_4
    if-ge v14, v8, :cond_d

    .line 365
    move-object v0, v7

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v29, v0

    if-eqz v29, :cond_9

    .line 367
    move-object v0, v7

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v23, v0

    .line 368
    .local v23, sf:Lkawa/lang/SyntaxForm;
    invoke-interface/range {v23 .. v23}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v7

    .line 369
    invoke-interface/range {v23 .. v23}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 371
    .end local v23           #sf:Lkawa/lang/SyntaxForm;
    :cond_9
    move-object v0, v7

    check-cast v0, Lgnu/lists/Pair;

    move-object v9, v0

    .line 372
    .local v9, cdr_pair:Lgnu/lists/Pair;
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v5

    .line 373
    .local v5, arg:Lgnu/expr/Expression;
    add-int/lit8 v14, v14, 0x1

    .line 375
    if-eqz v15, :cond_a

    .line 377
    and-int/lit8 v29, v14, 0x1

    if-nez v29, :cond_b

    .line 379
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v4, v0

    .line 380
    .local v4, aargs:[Lgnu/expr/Expression;
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    aput-object p1, v4, v29

    .line 381
    const/16 v29, 0x1

    aput-object v5, v4, v29

    .line 382
    new-instance v5, Lgnu/expr/ApplyExp;

    .end local v5           #arg:Lgnu/expr/Expression;
    sget-object v29, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    move-object v0, v5

    move-object/from16 v1, v29

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 396
    .end local v4           #aargs:[Lgnu/expr/Expression;
    .restart local v5       #arg:Lgnu/expr/Expression;
    :cond_a
    :goto_5
    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 397
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 398
    goto :goto_4

    .line 387
    :cond_b
    move-object v0, v5

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v29, v0

    if-eqz v29, :cond_c

    move-object v0, v5

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v27

    .local v27, value:Ljava/lang/Object;
    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v29, v0

    if-eqz v29, :cond_c

    if-ge v14, v8, :cond_c

    .line 390
    new-instance v5, Lgnu/expr/QuoteExp;

    .end local v5           #arg:Lgnu/expr/Expression;
    check-cast v27, Lgnu/expr/Keyword;

    .end local v27           #value:Ljava/lang/Object;
    invoke-virtual/range {v27 .. v27}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v29

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .restart local v5       #arg:Lgnu/expr/Expression;
    goto :goto_5

    .line 392
    :cond_c
    const/4 v15, 0x0

    goto :goto_5

    .line 399
    .end local v5           #arg:Lgnu/expr/Expression;
    .end local v9           #cdr_pair:Lgnu/lists/Pair;
    :cond_d
    invoke-virtual/range {v28 .. v28}, Ljava/util/Stack;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v6, v0

    .line 400
    .local v6, args:[Lgnu/expr/Expression;
    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_e

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 405
    :cond_e
    move-object v0, v13

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v29, v0

    if-eqz v29, :cond_10

    move-object v0, v13

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v14, v0

    .end local v14           #i:I
    invoke-virtual {v14}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v29

    sget-object v30, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 408
    const/16 v29, 0x0

    aget-object v17, v6, v29

    .line 409
    .local v17, part1:Lgnu/expr/Expression;
    const/16 v29, 0x1

    aget-object v18, v6, v29

    .line 410
    .local v18, part2:Lgnu/expr/Expression;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v24

    .line 411
    .local v24, sym:Lgnu/mapping/Symbol;
    if-eqz v24, :cond_f

    .line 412
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v29

    goto/16 :goto_0

    .line 414
    :cond_f
    invoke-static/range {v17 .. v18}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v29

    goto/16 :goto_0

    .line 416
    .end local v17           #part1:Lgnu/expr/Expression;
    .end local v18           #part2:Lgnu/expr/Expression;
    .end local v24           #sym:Lgnu/mapping/Symbol;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/kawa/lispexpr/LispLanguage;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v29

    goto/16 :goto_0
.end method

.method public rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "function"
    .parameter "pair"

    .prologue
    .line 917
    invoke-virtual {p0, p3}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 921
    .local v1, saved:Ljava/lang/Object;
    if-ne p1, p3, :cond_0

    .line 922
    :try_start_0
    invoke-virtual {p0, p3, p2}, Lkawa/lang/Translator;->rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v0

    .line 925
    .local v0, result:Lgnu/expr/Expression;
    :goto_0
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 931
    return-object v0

    .line 924
    .end local v0           #result:Lgnu/expr/Expression;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0       #result:Lgnu/expr/Expression;
    goto :goto_0

    .line 929
    .end local v0           #result:Lgnu/expr/Expression;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v2
.end method

.method public scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;
    .locals 16
    .parameter "body"
    .parameter "defs"
    .parameter "makeList"

    .prologue
    .line 1097
    if-eqz p3, :cond_0

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v9, v14

    .line 1098
    .local v9, list:Lgnu/lists/LList;
    :goto_0
    const/4 v8, 0x0

    .line 1099
    .local v8, lastPair:Lgnu/lists/Pair;
    :goto_1
    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, p1

    move-object v1, v14

    if-eq v0, v1, :cond_a

    .line 1101
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v14, v0

    if-eqz v14, :cond_3

    .line 1103
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v13, v0

    .line 1104
    .local v13, sf:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object v12, v0

    .line 1107
    .local v12, save_scope:Lgnu/expr/ScopeExp;
    :try_start_0
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/Stack;->size()I

    move-result v5

    .line 1109
    .local v5, first:I
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v4

    .line 1110
    .local v4, f:Lgnu/lists/LList;
    if-eqz p3, :cond_2

    .line 1112
    invoke-static {v4, v13}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #f:Lgnu/lists/LList;
    check-cast v4, Lgnu/lists/LList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    .restart local v4       #f:Lgnu/lists/LList;
    if-nez v8, :cond_1

    .line 1123
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v14, v4

    .line 1164
    .end local v4           #f:Lgnu/lists/LList;
    .end local v5           #first:I
    .end local v12           #save_scope:Lgnu/expr/ScopeExp;
    .end local v13           #sf:Lkawa/lang/SyntaxForm;
    :goto_2
    return-object v14

    .line 1097
    .end local v8           #lastPair:Lgnu/lists/Pair;
    .end local v9           #list:Lgnu/lists/LList;
    :cond_0
    const/4 v14, 0x0

    move-object v9, v14

    goto :goto_0

    .line 1115
    .restart local v4       #f:Lgnu/lists/LList;
    .restart local v5       #first:I
    .restart local v8       #lastPair:Lgnu/lists/Pair;
    .restart local v9       #list:Lgnu/lists/LList;
    .restart local v12       #save_scope:Lgnu/expr/ScopeExp;
    .restart local v13       #sf:Lkawa/lang/SyntaxForm;
    :cond_1
    :try_start_1
    invoke-virtual {v8, v4}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1123
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v14, v9

    goto :goto_2

    .line 1118
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v14, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v13}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1119
    const/4 v14, 0x0

    .line 1123
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    goto :goto_2

    .end local v4           #f:Lgnu/lists/LList;
    .end local v5           #first:I
    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v14

    .line 1126
    .end local v12           #save_scope:Lgnu/expr/ScopeExp;
    .end local v13           #sf:Lkawa/lang/SyntaxForm;
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move v14, v0

    if-eqz v14, :cond_9

    .line 1128
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v11, v0

    .line 1129
    .local v11, pair:Lgnu/lists/Pair;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/Stack;->size()I

    move-result v5

    .line 1130
    .restart local v5       #first:I
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getState()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 1136
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    move-object v15, v0

    if-eq v14, v15, :cond_4

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    move-object v14, v0

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    .line 1138
    :cond_4
    new-instance v14, Lgnu/lists/Pair;

    sget-object v15, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    invoke-direct {v14, v15, v11}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 1139
    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_2

    .line 1141
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/Stack;->size()I

    move-result v6

    .line 1142
    .local v6, fsize:I
    if-eqz p3, :cond_8

    .line 1144
    move v7, v5

    .local v7, i:I
    :goto_3
    if-ge v7, v6, :cond_7

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v14, v0

    invoke-virtual {v14, v7}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v11, v14, v15}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    .line 1148
    .local v10, npair:Lgnu/lists/Pair;
    if-nez v8, :cond_6

    .line 1149
    move-object v9, v10

    .line 1152
    :goto_4
    move-object v8, v10

    .line 1144
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1151
    :cond_6
    invoke-virtual {v8, v10}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    goto :goto_4

    .line 1154
    .end local v10           #npair:Lgnu/lists/Pair;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/Stack;->setSize(I)V

    .line 1156
    .end local v7           #i:I
    :cond_8
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 1157
    goto/16 :goto_1

    .line 1160
    .end local v5           #first:I
    .end local v6           #fsize:I
    .end local v11           #pair:Lgnu/lists/Pair;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v14, v0

    const-string v15, "body is not a proper list"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object v14, v9

    .line 1164
    goto/16 :goto_2
.end method

.method public scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    .locals 28
    .parameter "st"
    .parameter "defs"

    .prologue
    .line 963
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 965
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v0

    .line 966
    .local v20, sf:Lkawa/lang/SyntaxForm;
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v17

    .line 969
    .local v17, save_scope:Lgnu/expr/ScopeExp;
    :try_start_0
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Stack;->size()I

    move-result v6

    .line 971
    .local v6, first:I
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1084
    .end local v6           #first:I
    .end local v17           #save_scope:Lgnu/expr/ScopeExp;
    .end local v20           #sf:Lkawa/lang/SyntaxForm;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 977
    .restart local v17       #save_scope:Lgnu/expr/ScopeExp;
    .restart local v20       #sf:Lkawa/lang/SyntaxForm;
    .restart local p1
    :catchall_0
    move-exception v26

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v26

    .line 980
    .end local v17           #save_scope:Lgnu/expr/ScopeExp;
    .end local v20           #sf:Lkawa/lang/SyntaxForm;
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Values;

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 982
    sget-object v26, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 983
    sget-object p1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 992
    .end local p1
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 994
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v21, v0

    .line 995
    .local v21, st_pair:Lgnu/lists/Pair;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    move-object v13, v0

    .line 996
    .local v13, saveContext:Lgnu/expr/Declaration;
    const/16 v22, 0x0

    .line 997
    .local v22, syntax:Lkawa/lang/Syntax;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v19, v0

    .line 998
    .local v19, savedScope:Lgnu/expr/ScopeExp;
    invoke-virtual/range {p0 .. p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 999
    .local v18, savedPosition:Ljava/lang/Object;
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/text/SourceLocator;

    move/from16 v26, v0

    if-eqz v26, :cond_3

    invoke-virtual/range {p2 .. p2}, Lgnu/expr/ScopeExp;->getLineNumber()I

    move-result v26

    if-gez v26, :cond_3

    .line 1000
    move-object/from16 v0, p1

    check-cast v0, Lgnu/text/SourceLocator;

    move-object v4, v0

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 1003
    :cond_3
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 1004
    .local v9, obj:Ljava/lang/Object;
    move-object v0, v9

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 1006
    invoke-virtual/range {v21 .. v21}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lkawa/lang/SyntaxForm;

    .line 1007
    .restart local v20       #sf:Lkawa/lang/SyntaxForm;
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1008
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v9

    .line 1011
    .end local v20           #sf:Lkawa/lang/SyntaxForm;
    :cond_4
    move-object v0, v9

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    move-object v0, v9

    check-cast v0, Lgnu/lists/Pair;

    move-object v10, v0

    .local v10, p:Lgnu/lists/Pair;
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #p:Lgnu/lists/Pair;
    check-cast v10, Lgnu/lists/Pair;

    .restart local v10       #p:Lgnu/lists/Pair;
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1016
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v11

    .line 1017
    .local v11, part1:Lgnu/expr/Expression;
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v12

    .line 1018
    .local v12, part2:Lgnu/expr/Expression;
    invoke-virtual {v11}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v24

    .line 1019
    .local v24, value1:Ljava/lang/Object;
    invoke-virtual {v12}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v25

    .line 1020
    .local v25, value2:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v26, v0

    if-eqz v26, :cond_9

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v26, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v26, :cond_9

    .line 1024
    :try_start_2
    check-cast v25, Lgnu/mapping/Symbol;

    .end local v25           #value2:Ljava/lang/Object;
    invoke-static/range {v24 .. v25}, Lgnu/kawa/functions/GetNamedPart;->getNamedPart(Ljava/lang/Object;Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v9

    .line 1025
    move-object v0, v9

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1026
    move-object v0, v9

    check-cast v0, Lkawa/lang/Syntax;

    move-object/from16 v22, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1037
    .end local v9           #obj:Ljava/lang/Object;
    .end local v10           #p:Lgnu/lists/Pair;
    .end local v11           #part1:Lgnu/expr/Expression;
    .end local v12           #part2:Lgnu/expr/Expression;
    .end local v24           #value1:Ljava/lang/Object;
    :cond_5
    :goto_1
    :try_start_3
    move-object v0, v9

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v26, v0

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 1039
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v7

    .line 1040
    .local v7, func:Lgnu/expr/Expression;
    move-object v0, v7

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 1042
    check-cast v7, Lgnu/expr/ReferenceExp;

    .end local v7           #func:Lgnu/expr/Expression;
    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v4

    .line 1043
    .local v4, decl:Lgnu/expr/Declaration;
    if-eqz v4, :cond_a

    .line 1044
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v22

    .line 1061
    .end local v4           #decl:Lgnu/expr/Declaration;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 1062
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1063
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 1065
    if-eqz v22, :cond_d

    .line 1067
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v15

    .line 1068
    .local v15, save_filename:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v16

    .line 1069
    .local v16, save_line:I
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v14

    .line 1072
    .local v14, save_column:I
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 1073
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Syntax;->scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1078
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 1079
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 986
    .end local v13           #saveContext:Lgnu/expr/Declaration;
    .end local v14           #save_column:I
    .end local v15           #save_filename:Ljava/lang/String;
    .end local v16           #save_line:I
    .end local v18           #savedPosition:Ljava/lang/Object;
    .end local v19           #savedScope:Lgnu/expr/ScopeExp;
    .end local v21           #st_pair:Lgnu/lists/Pair;
    .end local v22           #syntax:Lkawa/lang/Syntax;
    .restart local p1
    :cond_8
    check-cast p1, Lgnu/mapping/Values;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v23

    .line 987
    .local v23, vals:[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    move v0, v8

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 988
    aget-object v26, v23, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 987
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1028
    .end local v8           #i:I
    .end local v23           #vals:[Ljava/lang/Object;
    .restart local v9       #obj:Ljava/lang/Object;
    .restart local v10       #p:Lgnu/lists/Pair;
    .restart local v11       #part1:Lgnu/expr/Expression;
    .restart local v12       #part2:Lgnu/expr/Expression;
    .restart local v13       #saveContext:Lgnu/expr/Declaration;
    .restart local v18       #savedPosition:Ljava/lang/Object;
    .restart local v19       #savedScope:Lgnu/expr/ScopeExp;
    .restart local v21       #st_pair:Lgnu/lists/Pair;
    .restart local v22       #syntax:Lkawa/lang/Syntax;
    .restart local v24       #value1:Ljava/lang/Object;
    :catch_0
    move-exception v26

    move-object/from16 v5, v26

    .line 1030
    .local v5, ex:Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 1031
    goto/16 :goto_1

    .line 1034
    .end local v5           #ex:Ljava/lang/Throwable;
    .restart local v25       #value2:Ljava/lang/Object;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v9

    .local v9, obj:Lgnu/mapping/Symbol;
    goto/16 :goto_1

    .line 1047
    .end local v9           #obj:Lgnu/mapping/Symbol;
    .end local v10           #p:Lgnu/lists/Pair;
    .end local v11           #part1:Lgnu/expr/Expression;
    .end local v12           #part2:Lgnu/expr/Expression;
    .end local v24           #value1:Ljava/lang/Object;
    .end local v25           #value2:Ljava/lang/Object;
    .restart local v4       #decl:Lgnu/expr/Declaration;
    :cond_a
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->resolve(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v9

    .line 1048
    .local v9, obj:Ljava/lang/Object;
    move-object v0, v9

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 1049
    move-object v0, v9

    check-cast v0, Lkawa/lang/Syntax;

    move-object/from16 v22, v0

    goto/16 :goto_2

    .line 1056
    .end local v4           #decl:Lgnu/expr/Declaration;
    .end local v9           #obj:Ljava/lang/Object;
    :cond_b
    sget-object v26, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    move-object v0, v9

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 1057
    move-object v0, v9

    check-cast v0, Lkawa/lang/Syntax;

    move-object/from16 v22, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 1061
    :catchall_1
    move-exception v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_c

    .line 1062
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1063
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v26

    .line 1078
    .restart local v14       #save_column:I
    .restart local v15       #save_filename:Ljava/lang/String;
    .restart local v16       #save_line:I
    :catchall_2
    move-exception v26

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 1079
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    throw v26

    .line 1083
    .end local v13           #saveContext:Lgnu/expr/Declaration;
    .end local v14           #save_column:I
    .end local v15           #save_filename:Ljava/lang/String;
    .end local v16           #save_line:I
    .end local v18           #savedPosition:Ljava/lang/Object;
    .end local v19           #savedScope:Lgnu/expr/ScopeExp;
    .end local v21           #st_pair:Lgnu/lists/Pair;
    .end local v22           #syntax:Lkawa/lang/Syntax;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public final selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 158
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispLanguage;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setLineOf(Lgnu/expr/Expression;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 866
    instance-of v0, p1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    .line 869
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    goto :goto_0
.end method
