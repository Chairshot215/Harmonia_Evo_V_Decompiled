.class Lorg/javia/arity/DeclarationParser;
.super Lorg/javia/arity/TokenConsumer;
.source "DeclarationParser.java"


# static fields
.field static final MAX_ARITY:I = 0x5

.field static final NO_ARGS:[Ljava/lang/String; = null

.field static final UNKNOWN_ARITY:I = -0x2


# instance fields
.field args:Ljava/util/Vector;

.field arity:I

.field private exception:Lorg/javia/arity/SyntaxException;

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/javia/arity/DeclarationParser;->NO_ARGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/javia/arity/TokenConsumer;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/DeclarationParser;->args:Ljava/util/Vector;

    .line 33
    iput-object p1, p0, Lorg/javia/arity/DeclarationParser;->exception:Lorg/javia/arity/SyntaxException;

    .line 34
    return-void
.end method


# virtual methods
.method argNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lorg/javia/arity/DeclarationParser;->arity:I

    if-lez v0, :cond_0

    .line 82
    iget v0, p0, Lorg/javia/arity/DeclarationParser;->arity:I

    new-array v0, v0, [Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lorg/javia/arity/DeclarationParser;->args:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 86
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/javia/arity/DeclarationParser;->NO_ARGS:[Ljava/lang/String;

    goto :goto_0
.end method

.method push(Lorg/javia/arity/Token;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 45
    iget v0, p1, Lorg/javia/arity/Token;->id:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :pswitch_0
    iget-object v0, p0, Lorg/javia/arity/DeclarationParser;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "invalid token in declaration"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 47
    :pswitch_1
    iget-object v0, p0, Lorg/javia/arity/DeclarationParser;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p1, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/javia/arity/DeclarationParser;->name:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/DeclarationParser;->arity:I

    .line 78
    :cond_0
    :goto_0
    :pswitch_2
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lorg/javia/arity/DeclarationParser;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "repeated CALL in declaration"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 56
    :pswitch_3
    iget-object v0, p0, Lorg/javia/arity/DeclarationParser;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 57
    iget-object v0, p1, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/javia/arity/DeclarationParser;->name:Ljava/lang/String;

    .line 58
    const/4 v0, -0x2

    iput v0, p0, Lorg/javia/arity/DeclarationParser;->arity:I

    goto :goto_0

    .line 59
    :cond_2
    iget v0, p0, Lorg/javia/arity/DeclarationParser;->arity:I

    if-ltz v0, :cond_3

    .line 60
    iget-object v0, p0, Lorg/javia/arity/DeclarationParser;->args:Ljava/util/Vector;

    iget-object v1, p1, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 61
    iget v0, p0, Lorg/javia/arity/DeclarationParser;->arity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/javia/arity/DeclarationParser;->arity:I

    .line 62
    iget v0, p0, Lorg/javia/arity/DeclarationParser;->arity:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lorg/javia/arity/DeclarationParser;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arity too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/javia/arity/DeclarationParser;->arity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 66
    :cond_3
    iget-object v0, p0, Lorg/javia/arity/DeclarationParser;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "Invalid declaration"

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 45
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method start()V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/javia/arity/DeclarationParser;->name:Ljava/lang/String;

    .line 39
    const/4 v0, -0x2

    iput v0, p0, Lorg/javia/arity/DeclarationParser;->arity:I

    .line 40
    iget-object v0, p0, Lorg/javia/arity/DeclarationParser;->args:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 41
    return-void
.end method
