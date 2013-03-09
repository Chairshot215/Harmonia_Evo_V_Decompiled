.class public Lgnu/expr/Special;
.super Ljava/lang/Object;
.source "Special.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final abstractSpecial:Lgnu/expr/Special;

.field public static final dfault:Lgnu/expr/Special;

.field public static final eof:Ljava/lang/Object;

.field public static final key:Lgnu/expr/Special;

.field public static final optional:Lgnu/expr/Special;

.field public static final rest:Lgnu/expr/Special;

.field public static final undefined:Lgnu/expr/Special;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lgnu/expr/Special;

    const-string v1, "undefined"

    invoke-direct {v0, v1}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    .line 13
    new-instance v0, Lgnu/expr/Special;

    const-string v1, "optional"

    invoke-direct {v0, v1}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    .line 14
    new-instance v0, Lgnu/expr/Special;

    const-string v1, "rest"

    invoke-direct {v0, v1}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    .line 15
    new-instance v0, Lgnu/expr/Special;

    const-string v1, "key"

    invoke-direct {v0, v1}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    .line 16
    new-instance v0, Lgnu/expr/Special;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    .line 17
    new-instance v0, Lgnu/expr/Special;

    const-string v1, "abstract"

    invoke-direct {v0, v1}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    .line 18
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    sput-object v0, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/expr/Special;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static make(Ljava/lang/String;)Lgnu/expr/Special;
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    const-string v0, "optional"

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    .line 38
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v0, "rest"

    if-ne p0, v0, :cond_1

    sget-object v0, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "key"

    if-ne p0, v0, :cond_2

    sget-object v0, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    goto :goto_0

    .line 37
    :cond_2
    const-string v0, "default"

    if-ne p0, v0, :cond_3

    sget-object v0, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    goto :goto_0

    .line 38
    :cond_3
    new-instance v0, Lgnu/expr/Special;

    invoke-direct {v0, p0}, Lgnu/expr/Special;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lgnu/expr/Special;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 50
    const-string v0, "#!"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lgnu/expr/Special;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Special;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lgnu/expr/Special;->name:Ljava/lang/String;

    invoke-static {v0}, Lgnu/expr/Special;->make(Ljava/lang/String;)Lgnu/expr/Special;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Special;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lgnu/expr/Special;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 61
    return-void
.end method
