.class public Lkawa/lang/EqualPat;
.super Lkawa/lang/Pattern;
.source "EqualPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 18
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput-object p1, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    return-void
.end method

.method public static make(Ljava/lang/Object;)Lkawa/lang/EqualPat;
    .locals 1
    .parameter "obj"

    .prologue
    .line 20
    new-instance v0, Lkawa/lang/EqualPat;

    invoke-direct {v0, p0}, Lkawa/lang/EqualPat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 1
    .parameter "obj"
    .parameter "vars"
    .parameter "start_vars"

    .prologue
    .line 26
    iget-object v0, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Lgnu/mapping/Symbol;

    .end local p1
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p1

    .line 28
    :cond_0
    iget-object v0, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 35
    const-string v0, "#<equals: "

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgnu/text/ReportFormat;->print(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 37
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 38
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
    .line 51
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public varCount()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
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
    .line 45
    iget-object v0, p0, Lkawa/lang/EqualPat;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
