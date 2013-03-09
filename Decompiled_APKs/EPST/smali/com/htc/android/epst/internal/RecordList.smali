.class public Lcom/htc/android/epst/internal/RecordList;
.super Ljava/lang/Object;
.source "RecordList.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/epst/internal/Record;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/htc/android/epst/internal/RecordList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/epst/internal/RecordList;->list:Ljava/util/ArrayList;

    .line 12
    const-string v0, "RecordList"

    sput-object v0, Lcom/htc/android/epst/internal/RecordList;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSingleton()Lcom/htc/android/epst/internal/RecordList;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/htc/android/epst/internal/RecordList;->mInstance:Lcom/htc/android/epst/internal/RecordList;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/htc/android/epst/internal/RecordList;

    invoke-direct {v0}, Lcom/htc/android/epst/internal/RecordList;-><init>()V

    sput-object v0, Lcom/htc/android/epst/internal/RecordList;->mInstance:Lcom/htc/android/epst/internal/RecordList;

    .line 17
    :cond_0
    sget-object v0, Lcom/htc/android/epst/internal/RecordList;->mInstance:Lcom/htc/android/epst/internal/RecordList;

    return-object v0
.end method

.method private isDuplicate(Lcom/htc/android/epst/internal/Record;)Z
    .locals 5
    .parameter "record"

    .prologue
    .line 29
    sget-object v2, Lcom/htc/android/epst/internal/RecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 30
    .local v0, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/htc/android/epst/internal/Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/internal/Record;

    .line 32
    .local v1, rec:Lcom/htc/android/epst/internal/Record;
    iget v2, v1, Lcom/htc/android/epst/internal/Record;->dmCmdId:I

    iget v3, p1, Lcom/htc/android/epst/internal/Record;->dmCmdId:I

    if-ne v2, v3, :cond_0

    .line 33
    iget v2, v1, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    iget v3, p1, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    if-ne v2, v3, :cond_0

    .line 34
    iget v2, v1, Lcom/htc/android/epst/internal/Record;->index:I

    iget v3, p1, Lcom/htc/android/epst/internal/Record;->index:I

    if-ne v2, v3, :cond_0

    .line 35
    const-string v2, "EPST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "struct id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/htc/android/epst/internal/Record;->dmCmdId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is dupilcate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    .end local v1           #rec:Lcom/htc/android/epst/internal/Record;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public add(Lcom/htc/android/epst/internal/Record;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/android/epst/internal/RecordList;->isDuplicate(Lcom/htc/android/epst/internal/Record;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lcom/htc/android/epst/internal/RecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/htc/android/epst/internal/RecordList;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/htc/android/epst/internal/RecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    :cond_0
    return-void
.end method

.method public get(I)Lcom/htc/android/epst/internal/Record;
    .locals 1
    .parameter "location"

    .prologue
    .line 94
    sget-object v0, Lcom/htc/android/epst/internal/RecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/internal/Record;

    return-object v0
.end method

.method public getByIdandIndex(III)Lcom/htc/android/epst/internal/Record;
    .locals 4
    .parameter "cmdId"
    .parameter "nvitemId"
    .parameter "index"

    .prologue
    .line 67
    sget-object v2, Lcom/htc/android/epst/internal/RecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 68
    .local v1, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/htc/android/epst/internal/Record;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/internal/Record;

    .line 70
    .local v0, base:Lcom/htc/android/epst/internal/Record;
    const/16 v2, 0x26

    if-eq p1, v2, :cond_1

    const/16 v2, 0x27

    if-ne p1, v2, :cond_2

    .line 71
    :cond_1
    iget v2, v0, Lcom/htc/android/epst/internal/Record;->type:I

    if-nez v2, :cond_0

    .line 72
    iget v2, v0, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    if-ne v2, p2, :cond_0

    .line 73
    iget v2, v0, Lcom/htc/android/epst/internal/Record;->index:I

    if-ne v2, p3, :cond_0

    .line 90
    .end local v0           #base:Lcom/htc/android/epst/internal/Record;
    :goto_0
    return-object v0

    .line 79
    .restart local v0       #base:Lcom/htc/android/epst/internal/Record;
    :cond_2
    iget v2, v0, Lcom/htc/android/epst/internal/Record;->dmCmdId:I

    if-ne v2, p1, :cond_0

    .line 80
    iget v2, v0, Lcom/htc/android/epst/internal/Record;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 81
    iget v2, v0, Lcom/htc/android/epst/internal/Record;->nvitemId:I

    if-ne v2, p2, :cond_0

    .line 82
    iget v2, v0, Lcom/htc/android/epst/internal/Record;->index:I

    if-ne v2, p3, :cond_0

    goto :goto_0

    .line 90
    .end local v0           #base:Lcom/htc/android/epst/internal/Record;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByName(Ljava/lang/String;)Lcom/htc/android/epst/internal/Record;
    .locals 3
    .parameter "name"

    .prologue
    .line 45
    sget-object v2, Lcom/htc/android/epst/internal/RecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 46
    .local v1, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/htc/android/epst/internal/Record;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/internal/Record;

    .line 48
    .local v0, base:Lcom/htc/android/epst/internal/Record;
    iget-object v2, v0, Lcom/htc/android/epst/internal/Record;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    .end local v0           #base:Lcom/htc/android/epst/internal/Record;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/htc/android/epst/internal/RecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
