.class public Lcom/htc/android/fusion/calculator/History;
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
            "Lcom/htc/android/fusion/calculator/HistoryEntry;",
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
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    .line 18
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/History;->clear()V

    .line 19
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
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    .line 22
    const/4 v2, 0x1

    if-lt p1, v2, :cond_1

    .line 23
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 24
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 25
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    new-instance v3, Lcom/htc/android/fusion/calculator/HistoryEntry;

    invoke-direct {v3, p1, p2}, Lcom/htc/android/fusion/calculator/HistoryEntry;-><init>(ILjava/io/DataInput;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/fusion/calculator/History;->mPos:I

    .line 31
    return-void

    .line 29
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
    .line 38
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mObserver:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mObserver:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 45
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    new-instance v1, Lcom/htc/android/fusion/calculator/HistoryEntry;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/htc/android/fusion/calculator/HistoryEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/fusion/calculator/History;->mPos:I

    .line 47
    invoke-direct {p0}, Lcom/htc/android/fusion/calculator/History;->notifyChanged()V

    .line 48
    return-void
.end method

.method current()Lcom/htc/android/fusion/calculator/HistoryEntry;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    iget v1, p0, Lcom/htc/android/fusion/calculator/History;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/fusion/calculator/HistoryEntry;

    return-object v0
.end method

.method enter(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/History;->current()Lcom/htc/android/fusion/calculator/HistoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fusion/calculator/HistoryEntry;->clearEdited()V

    .line 80
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    iget-object v1, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/fusion/calculator/HistoryEntry;

    invoke-virtual {v0}, Lcom/htc/android/fusion/calculator/HistoryEntry;->getBase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    new-instance v1, Lcom/htc/android/fusion/calculator/HistoryEntry;

    invoke-direct {v1, p1}, Lcom/htc/android/fusion/calculator/HistoryEntry;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/fusion/calculator/History;->mPos:I

    .line 88
    invoke-direct {p0}, Lcom/htc/android/fusion/calculator/History;->notifyChanged()V

    .line 89
    return-void
.end method

.method getBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/History;->current()Lcom/htc/android/fusion/calculator/HistoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fusion/calculator/HistoryEntry;->getBase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/History;->current()Lcom/htc/android/fusion/calculator/HistoryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fusion/calculator/HistoryEntry;->getEdited()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method moveToNext()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/android/fusion/calculator/History;->mPos:I

    iget-object v1, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 72
    iget v0, p0, Lcom/htc/android/fusion/calculator/History;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/fusion/calculator/History;->mPos:I

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveToPrevious()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/android/fusion/calculator/History;->mPos:I

    if-lez v0, :cond_0

    .line 64
    iget v0, p0, Lcom/htc/android/fusion/calculator/History;->mPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/fusion/calculator/History;->mPos:I

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setObserver(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/android/fusion/calculator/History;->mObserver:Landroid/widget/BaseAdapter;

    .line 35
    return-void
.end method

.method update(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/History;->current()Lcom/htc/android/fusion/calculator/HistoryEntry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/android/fusion/calculator/HistoryEntry;->setEdited(Ljava/lang/String;)V

    .line 60
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
    .line 51
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 52
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/fusion/calculator/HistoryEntry;

    .line 53
    .local v0, entry:Lcom/htc/android/fusion/calculator/HistoryEntry;
    invoke-virtual {v0, p1}, Lcom/htc/android/fusion/calculator/HistoryEntry;->write(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 55
    .end local v0           #entry:Lcom/htc/android/fusion/calculator/HistoryEntry;
    :cond_0
    iget v2, p0, Lcom/htc/android/fusion/calculator/History;->mPos:I

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 56
    return-void
.end method
