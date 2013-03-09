.class Lcom/android/calculator2/HistoryEntry;
.super Ljava/lang/Object;
.source "HistoryEntry.java"


# static fields
.field private static final VERSION_1:I = 0x1


# instance fields
.field private mBase:Ljava/lang/String;

.field private mEdited:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/io/DataInput;)V
    .locals 3
    .parameter "version"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 35
    invoke-interface {p2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/HistoryEntry;->mBase:Ljava/lang/String;

    .line 36
    invoke-interface {p2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/HistoryEntry;->mEdited:Ljava/lang/String;

    .line 41
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/calculator2/HistoryEntry;->mBase:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/android/calculator2/HistoryEntry;->clearEdited()V

    .line 31
    return-void
.end method


# virtual methods
.method clearEdited()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calculator2/HistoryEntry;->mBase:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calculator2/HistoryEntry;->mEdited:Ljava/lang/String;

    .line 56
    return-void
.end method

.method getBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/calculator2/HistoryEntry;->mBase:Ljava/lang/String;

    return-object v0
.end method

.method getEdited()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calculator2/HistoryEntry;->mEdited:Ljava/lang/String;

    return-object v0
.end method

.method setEdited(Ljava/lang/String;)V
    .locals 0
    .parameter "edited"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/calculator2/HistoryEntry;->mEdited:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calculator2/HistoryEntry;->mBase:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calculator2/HistoryEntry;->mBase:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/calculator2/HistoryEntry;->mEdited:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 47
    return-void
.end method
