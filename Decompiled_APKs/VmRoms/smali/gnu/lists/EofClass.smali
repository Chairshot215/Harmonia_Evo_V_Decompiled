.class public Lgnu/lists/EofClass;
.super Ljava/lang/Object;
.source "EofClass.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final eofValue:Lgnu/lists/EofClass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lgnu/lists/EofClass;

    invoke-direct {v0}, Lgnu/lists/EofClass;-><init>()V

    sput-object v0, Lgnu/lists/EofClass;->eofValue:Lgnu/lists/EofClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 24
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
    .line 28
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "#!eof"

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 0
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    return-void
.end method
