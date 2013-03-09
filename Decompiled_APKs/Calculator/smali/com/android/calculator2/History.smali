.class Lcom/android/calculator2/History;
.super Ljava/lang/Object;
.source "History.java"


# static fields
.field private static final MAX_ENTRIES:I = 0x64

.field private static final VERSION_1:I = 0x1


# instance fields
.field mEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/calculator2/HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Landroid/widget/BaseAdapter;

.field mPos:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    .line 35
    invoke-virtual {p0}, Lcom/android/calculator2/History;->clear()V

    .line 36
    return-void
.end method

.method constructor <init>(ILjava/io/DataInput;)V
    .locals 5
    .parameter "version"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    .line 39
    const/4 v2, 0x1

    if-lt p1, v2, :cond_1

    .line 40
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 41
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 42
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    new-instance v3, Lcom/android/calculator2/HistoryEntry;

    invoke-direct {v3, p1, p2}, Lcom/android/calculator2/HistoryEntry;-><init>(ILjava/io/DataInput;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/calculator2/History;->mPos:I

    .line 48
    return-void

    .line 46
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private notifyChanged()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calculator2/History;->mObserver:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/calculator2/History;->mObserver:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 62
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    new-instance v1, Lcom/android/calculator2/HistoryEntry;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/android/calculator2/HistoryEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calculator2/History;->mPos:I

    .line 64
    invoke-direct {p0}, Lcom/android/calculator2/History;->notifyChanged()V

    .line 65
    return-void
.end method

.method current()Lcom/android/calculator2/HistoryEntry;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    iget v1, p0, Lcom/android/calculator2/History;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/HistoryEntry;

    return-object v0
.end method

.method enter(Ljava/lang/String;)V
    .locals 5
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/android/calculator2/History;->current()Lcom/android/calculator2/HistoryEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calculator2/HistoryEntry;->clearEdited()V

    .line 105
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 106
    .local v0, entrySize:I
    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 108
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 110
    :cond_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    new-instance v3, Lcom/android/calculator2/HistoryEntry;

    invoke-direct {v3, p1}, Lcom/android/calculator2/HistoryEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 123
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/calculator2/History;->mPos:I

    .line 124
    invoke-direct {p0}, Lcom/android/calculator2/History;->notifyChanged()V

    .line 125
    return-void

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/HistoryEntry;

    invoke-virtual {v2}, Lcom/android/calculator2/HistoryEntry;->getEdited()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calculator2/HistoryEntry;

    invoke-virtual {v2}, Lcom/android/calculator2/HistoryEntry;->getBase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    new-instance v3, Lcom/android/calculator2/HistoryEntry;

    invoke-direct {v3, p1}, Lcom/android/calculator2/HistoryEntry;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    new-instance v3, Lcom/android/calculator2/HistoryEntry;

    invoke-direct {v3, p1}, Lcom/android/calculator2/HistoryEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    new-instance v3, Lcom/android/calculator2/HistoryEntry;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/android/calculator2/HistoryEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/calculator2/History;->current()Lcom/android/calculator2/HistoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/HistoryEntry;->getBase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/calculator2/History;->current()Lcom/android/calculator2/HistoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/HistoryEntry;->getEdited()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isLast()Z
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/android/calculator2/History;->mPos:I

    iget-object v1, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveToLast()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calculator2/History;->mPos:I

    .line 101
    return-void
.end method

.method moveToNext()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/calculator2/History;->mPos:I

    iget-object v1, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 93
    iget v0, p0, Lcom/android/calculator2/History;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calculator2/History;->mPos:I

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveToPrevious()Z
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/calculator2/History;->mPos:I

    if-lez v0, :cond_0

    .line 85
    iget v0, p0, Lcom/android/calculator2/History;->mPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calculator2/History;->mPos:I

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setObserver(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/calculator2/History;->mObserver:Landroid/widget/BaseAdapter;

    .line 52
    return-void
.end method

.method update(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/calculator2/History;->current()Lcom/android/calculator2/HistoryEntry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/calculator2/HistoryEntry;->setEdited(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 69
    iget-object v2, p0, Lcom/android/calculator2/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/HistoryEntry;

    .line 70
    .local v0, entry:Lcom/android/calculator2/HistoryEntry;
    invoke-virtual {v0, p1}, Lcom/android/calculator2/HistoryEntry;->write(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 72
    .end local v0           #entry:Lcom/android/calculator2/HistoryEntry;
    :cond_0
    iget v2, p0, Lcom/android/calculator2/History;->mPos:I

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 73
    return-void
.end method
