.class public Lgnu/kawa/slib/XML;
.super Lgnu/expr/ModuleBody;
.source "XML.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/XML;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static as$Mnxml:Lgnu/kawa/xml/OutputAsXML;

.field public static final attribute$Mnname:Lgnu/expr/ModuleMethod;

.field public static final comment:Ljava/lang/Class;

.field public static final element$Mnname:Lgnu/expr/ModuleMethod;

.field public static final parse$Mnxml$Mnfrom$Mnurl:Lgnu/expr/ModuleMethod;

.field public static final processing$Mninstruction:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x1001

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "attribute-name"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/XML;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "element-name"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/XML;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "parse-xml-from-url"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/XML;->Lit0:Lgnu/mapping/SimpleSymbol;

    const-class v0, Lgnu/kawa/xml/KProcessingInstruction;

    sput-object v0, Lgnu/kawa/slib/XML;->processing$Mninstruction:Ljava/lang/Class;

    const-class v0, Lgnu/kawa/xml/KComment;

    sput-object v0, Lgnu/kawa/slib/XML;->comment:Ljava/lang/Class;

    new-instance v0, Lgnu/kawa/slib/XML;

    invoke-direct {v0}, Lgnu/kawa/slib/XML;-><init>()V

    sput-object v0, Lgnu/kawa/slib/XML;->$instance:Lgnu/kawa/slib/XML;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/XML;->$instance:Lgnu/kawa/slib/XML;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/slib/XML;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/XML;->parse$Mnxml$Mnfrom$Mnurl:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lgnu/kawa/slib/XML;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/XML;->element$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lgnu/kawa/slib/XML;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/XML;->attribute$Mnname:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/XML;->$instance:Lgnu/kawa/slib/XML;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static attributeName(Lgnu/kawa/xml/KAttr;)Lgnu/mapping/Symbol;
    .locals 1
    .parameter "attr"

    .prologue
    .line 23
    invoke-virtual {p0}, Lgnu/kawa/xml/KAttr;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static elementName(Lgnu/kawa/xml/KElement;)Lgnu/mapping/Symbol;
    .locals 1
    .parameter "element"

    .prologue
    .line 20
    invoke-virtual {p0}, Lgnu/kawa/xml/KElement;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static parseXmlFromUrl(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 1
    .parameter "url"

    .prologue
    .line 17
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v0

    return-object v0
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

    .line 23
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 17
    :pswitch_0
    invoke-static {p2}, Lgnu/kawa/slib/XML;->parseXmlFromUrl(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_1
    :try_start_0
    check-cast p2, Lgnu/kawa/xml/KElement;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lgnu/kawa/slib/XML;->elementName(Lgnu/kawa/xml/KElement;)Lgnu/mapping/Symbol;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_2
    :try_start_1
    check-cast p2, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lgnu/kawa/slib/XML;->attributeName(Lgnu/kawa/xml/KAttr;)Lgnu/mapping/Symbol;

    move-result-object v0

    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "element-name"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 23
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "attribute-name"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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

    .line 17
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 23
    :goto_0
    return v0

    :pswitch_0
    instance-of v0, p2, Lgnu/kawa/xml/KAttr;

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 20
    :pswitch_1
    instance-of v0, p2, Lgnu/kawa/xml/KElement;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 17
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "$ctx"

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .local v0, $result:Lgnu/lists/Consumer;
    new-instance v1, Lgnu/kawa/xml/OutputAsXML;

    invoke-direct {v1}, Lgnu/kawa/xml/OutputAsXML;-><init>()V

    sput-object v1, Lgnu/kawa/slib/XML;->as$Mnxml:Lgnu/kawa/xml/OutputAsXML;

    .line 3
    return-void
.end method
