.class public Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
.super Ljava/lang/Object;
.source "GenericSignatureParser.java"


# instance fields
.field buffer:[C

.field private eof:Z

.field public exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field public fieldType:Ljava/lang/reflect/Type;

.field public formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

.field genericDecl:Ljava/lang/reflect/GenericDeclaration;

.field identifier:Ljava/lang/String;

.field public interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field public loader:Ljava/lang/ClassLoader;

.field public parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field pos:I

.field public returnType:Ljava/lang/reflect/Type;

.field public superclassType:Ljava/lang/reflect/Type;

.field symbol:C


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method expect(C)V
    .locals 1

    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v0
.end method

.method isStopSymbol(C)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method parseClassSignature()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseOptFormalTypeParameters()V

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    :goto_0
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method parseClassTypeSignature()Ljava/lang/reflect/Type;
    .locals 7

    const/16 v4, 0x4c

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanIdentifier()V

    :goto_0
    iget-char v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    iget-object v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanIdentifier()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseOptTypeArguments()Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    move-result-object v3

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v4, v5, v3, v6}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;-><init>(Lorg/apache/harmony/luni/lang/reflect/ImplForType;Ljava/lang/String;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V

    move-object v2, v0

    :goto_1
    iget-char v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanIdentifier()V

    const-string v4, "$"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseOptTypeArguments()Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    move-result-object v3

    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    invoke-direct {v2, v0, v4, v3, v5}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;-><init>(Lorg/apache/harmony/luni/lang/reflect/ImplForType;Ljava/lang/String;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V

    goto :goto_1

    :cond_1
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    return-object v2
.end method

.method parseFieldTypeSignature()Ljava/lang/reflect/Type;
    .locals 2

    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeVariableSignature()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x54 -> :sswitch_2
        0x5b -> :sswitch_1
    .end sparse-switch
.end method

.method public parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseClassSignature()V

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    sget-object v1, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->EMPTY:[Ljava/lang/reflect/TypeVariable;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    new-instance v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->EMPTY:[Ljava/lang/reflect/TypeVariable;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    sget-object v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->interfaceTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_0
.end method

.method public parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericDeclaration;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p3}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseMethodTypeSignature([Ljava/lang/Class;)V

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Constructor;

    sget-object v1, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->EMPTY:[Ljava/lang/reflect/TypeVariable;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    new-instance v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    new-instance v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->EMPTY:[Ljava/lang/reflect/TypeVariable;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    sget-object v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    sget-object v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_0
.end method

.method public parseForField(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->fieldType:Ljava/lang/reflect/Type;

    :cond_0
    return-void
.end method

.method public parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericDeclaration;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p3}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseMethodTypeSignature([Ljava/lang/Class;)V

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Method;

    sget-object v1, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->EMPTY:[Ljava/lang/reflect/TypeVariable;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    new-instance v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    new-instance v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->EMPTY:[Ljava/lang/reflect/TypeVariable;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    sget-object v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    sget-object v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method parseFormalTypeParameter()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/harmony/luni/lang/reflect/ImplForVariable",
            "<",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">;"
        }
    .end annotation

    const/16 v4, 0x3a

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanIdentifier()V

    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    invoke-virtual {p0, v4}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x54

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    :cond_1
    :goto_0
    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    iget-object v3, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V

    return-object v2
.end method

.method parseMethodTypeSignature([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/16 v3, 0x5e

    const/16 v2, 0x29

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseOptFormalTypeParameters()V

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    :goto_0
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-eq v0, v2, :cond_0

    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parameterTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-ne v0, v3, :cond_3

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeVariableSignature()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    :goto_1
    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-eq v0, v3, :cond_1

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->exceptionTypes:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    goto :goto_2
.end method

.method parseOptFormalTypeParameters()V
    .locals 4

    const/16 v3, 0x3e

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;

    invoke-direct {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;-><init>()V

    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFormalTypeParameter()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->add(Ljava/lang/reflect/TypeVariable;)V

    :goto_0
    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFormalTypeParameter()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->add(Ljava/lang/reflect/TypeVariable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    :cond_1
    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfVariables;->getArray()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    return-void
.end method

.method parseOptTypeArguments()Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;
    .locals 4

    const/16 v3, 0x3e

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeArgument()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    :goto_0
    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeArgument()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    :cond_1
    return-object v0
.end method

.method parseReturnType()Ljava/lang/reflect/Type;
    .locals 2

    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v1, 0x56

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_0
.end method

.method parseTypeArgument()Ljava/lang/reflect/Type;
    .locals 4

    const/4 v2, 0x1

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    new-instance v1, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;

    invoke-direct {v2, v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;-><init>(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V

    :goto_0
    return-object v2

    :cond_0
    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;

    invoke-direct {v2, v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;-><init>(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V

    goto :goto_0

    :cond_1
    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    new-instance v2, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;

    invoke-direct {v2, v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;-><init>(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_0
.end method

.method parseTypeSignature()Ljava/lang/reflect/Type;
    .locals 1

    iget-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_2
        0x46 -> :sswitch_3
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x53 -> :sswitch_6
        0x5a -> :sswitch_7
    .end sparse-switch
.end method

.method parseTypeVariableSignature()Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/harmony/luni/lang/reflect/ImplForVariable",
            "<",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanIdentifier()V

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->expect(C)V

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/luni/lang/reflect/ImplForVariable;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    return-object v0
.end method

.method scanIdentifier()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    invoke-virtual {p0, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->isStopSymbol(C)Z

    move-result v2

    if-nez v2, :cond_5

    iget-char v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    iget v3, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    aget-char v0, v2, v3

    const/16 v2, 0x61

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->isStopSymbol(C)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    iget v3, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    iget v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    iget-object v3, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    array-length v3, v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    iput-char v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    iput-boolean v5, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    :goto_0
    return-void

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    goto :goto_0

    :cond_5
    iput-char v4, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    iput-boolean v5, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    new-instance v2, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v2}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v2

    :cond_6
    new-instance v2, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v2}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v2
.end method

.method scanSymbol()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    iget v1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    iget v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->pos:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->symbol:C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    throw v0
.end method

.method setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->buffer:[C

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->scanSymbol()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->eof:Z

    goto :goto_0
.end method
