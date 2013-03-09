.class public Lgnu/kawa/lispexpr/DefineNamespace;
.super Lkawa/lang/Syntax;
.source "DefineNamespace.java"


# static fields
.field public static final XML_NAMESPACE_MAGIC:Ljava/lang/String; = "&xml&"

.field public static final define_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

.field public static final define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

.field public static final define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;


# instance fields
.field private makePrivate:Z

.field private makeXML:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 14
    new-instance v0, Lgnu/kawa/lispexpr/DefineNamespace;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    .line 16
    new-instance v0, Lgnu/kawa/lispexpr/DefineNamespace;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    .line 18
    new-instance v0, Lgnu/kawa/lispexpr/DefineNamespace;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    .line 21
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const-string v1, "define-namespace"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const-string v1, "define-private-namespace"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    iput-boolean v2, v0, Lgnu/kawa/lispexpr/DefineNamespace;->makePrivate:Z

    .line 24
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const-string v1, "define-xml-namespace"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    iput-boolean v2, v0, Lgnu/kawa/lispexpr/DefineNamespace;->makeXML:Z

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 93
    const-string v0, "define-namespace is only allowed in a <body>"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 10
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 32
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    .local v5, p1:Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    .local v6, p2:Lgnu/lists/Pair;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v8, v9, :cond_1

    .line 37
    .end local v5           #p1:Lgnu/lists/Pair;
    .end local v6           #p2:Lgnu/lists/Pair;
    :cond_0
    const/16 v8, 0x65

    const-string v9, "invalid syntax for define-namespace"

    invoke-virtual {p4, v8, v9}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 38
    const/4 v8, 0x0

    .line 88
    :goto_0
    return v8

    .line 40
    .restart local v5       #p1:Lgnu/lists/Pair;
    .restart local v6       #p2:Lgnu/lists/Pair;
    :cond_1
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Symbol;

    .line 41
    .local v3, name:Lgnu/mapping/Symbol;
    const/16 v8, 0x77

    invoke-virtual {p3, v3, v8, p4}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 42
    .local v1, decl:Lgnu/expr/Declaration;
    invoke-virtual {p4, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 43
    const-wide/32 v8, 0x244000

    invoke-virtual {v1, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 45
    iget-boolean v8, p0, Lgnu/kawa/lispexpr/DefineNamespace;->makePrivate:Z

    if-eqz v8, :cond_3

    .line 47
    const-wide/32 v8, 0x1000000

    invoke-virtual {v1, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 48
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 52
    :cond_2
    :goto_1
    invoke-static {v1, v5}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, literal:Ljava/lang/String;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_6

    .line 62
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string v8, "class:"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 66
    const/4 v8, 0x6

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, cname:Ljava/lang/String;
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-static {v2, v8}, Lgnu/kawa/lispexpr/ClassNamespace;->getInstance(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/kawa/lispexpr/ClassNamespace;

    move-result-object v4

    .line 69
    .local v4, namespace:Lgnu/mapping/Namespace;
    const-string v8, "gnu.kawa.lispexpr.ClassNamespace"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 81
    .end local v0           #cname:Ljava/lang/String;
    :goto_2
    new-instance v7, Lgnu/expr/QuoteExp;

    invoke-direct {v7, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 82
    .local v7, value:Lgnu/expr/Expression;
    const-wide/16 v8, 0x2000

    invoke-virtual {v1, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 86
    .end local v4           #namespace:Lgnu/mapping/Namespace;
    :goto_3
    invoke-virtual {v1, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 87
    invoke-static {v1, v7}, Lgnu/expr/SetExp;->makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    const/4 v8, 0x1

    goto :goto_0

    .line 50
    .end local v2           #literal:Ljava/lang/String;
    .end local v7           #value:Lgnu/expr/Expression;
    :cond_3
    instance-of v8, p3, Lgnu/expr/ModuleExp;

    if-eqz v8, :cond_2

    .line 51
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->setCanRead(Z)V

    goto :goto_1

    .line 71
    .restart local v2       #literal:Ljava/lang/String;
    :cond_4
    iget-boolean v8, p0, Lgnu/kawa/lispexpr/DefineNamespace;->makeXML:Z

    if-eqz v8, :cond_5

    .line 73
    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lgnu/kawa/xml/XmlNamespace;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object v4

    .line 74
    .restart local v4       #namespace:Lgnu/mapping/Namespace;
    const-string v8, "gnu.kawa.xml.XmlNamespace"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_2

    .line 78
    .end local v4           #namespace:Lgnu/mapping/Namespace;
    :cond_5
    invoke-static {v2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v4

    .line 79
    .restart local v4       #namespace:Lgnu/mapping/Namespace;
    const-string v8, "gnu.mapping.Namespace"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_2

    .line 85
    .end local v4           #namespace:Lgnu/mapping/Namespace;
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {p4, v6, v8}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v7

    .restart local v7       #value:Lgnu/expr/Expression;
    goto :goto_3
.end method
