.class abstract Lorg/javia/arity/TokenConsumer;
.super Ljava/lang/Object;
.source "TokenConsumer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract push(Lorg/javia/arity/Token;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation
.end method

.method start()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method
