.class public Lcom/htc/android/epst/wimax/WiMaxRecordList;
.super Ljava/lang/Object;
.source "WiMaxRecordList.java"


# static fields
.field private static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/epst/wimax/WiMaxRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/htc/android/epst/wimax/WiMaxRecordList;


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->DBG:Z

    .line 12
    const-string v0, "WiMaxRecordList"

    iput-object v0, p0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private checkDuplicate(Lcom/htc/android/epst/wimax/WiMaxRecord;Z)V
    .locals 5
    .parameter "record"
    .parameter "isRemove"

    .prologue
    const/4 v4, 0x1

    .line 31
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxRecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 32
    .local v0, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/htc/android/epst/wimax/WiMaxRecord;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/wimax/WiMaxRecord;

    .line 34
    .local v1, rec:Lcom/htc/android/epst/wimax/WiMaxRecord;
    iget-object v2, v1, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxID:Ljava/lang/String;

    iget-object v3, p1, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 35
    if-ne p2, v4, :cond_0

    .line 36
    iget-boolean v2, p0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->DBG:Z

    if-eqz v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDuplicate>remove this rec ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxRecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    .end local v1           #rec:Lcom/htc/android/epst/wimax/WiMaxRecord;
    :cond_2
    return-void
.end method

.method public static getSingleton()Lcom/htc/android/epst/wimax/WiMaxRecordList;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->mInstance:Lcom/htc/android/epst/wimax/WiMaxRecordList;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/htc/android/epst/wimax/WiMaxRecordList;

    invoke-direct {v0}, Lcom/htc/android/epst/wimax/WiMaxRecordList;-><init>()V

    sput-object v0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->mInstance:Lcom/htc/android/epst/wimax/WiMaxRecordList;

    .line 17
    :cond_0
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->mInstance:Lcom/htc/android/epst/wimax/WiMaxRecordList;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    :cond_0
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getValueByWiMaxID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 63
    sget-object v2, Lcom/htc/android/epst/wimax/WiMaxRecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 64
    .local v1, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/htc/android/epst/wimax/WiMaxRecord;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/wimax/WiMaxRecord;

    .line 66
    .local v0, base:Lcom/htc/android/epst/wimax/WiMaxRecord;
    iget-object v2, v0, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-boolean v2, p0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->DBG:Z

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "base.propertyvalue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/android/epst/wimax/WiMaxRecord;->propertyvalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    iget-object v2, v0, Lcom/htc/android/epst/wimax/WiMaxRecord;->propertyvalue:Ljava/lang/String;

    .line 73
    .end local v0           #base:Lcom/htc/android/epst/wimax/WiMaxRecord;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWiMaxRecord(I)Lcom/htc/android/epst/wimax/WiMaxRecord;
    .locals 1
    .parameter "location"

    .prologue
    .line 77
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/wimax/WiMaxRecord;

    return-object v0
.end method

.method public storeModifiedWiMaxID(Lcom/htc/android/epst/wimax/WiMaxRecord;)V
    .locals 3
    .parameter "iRecord"

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/android/epst/wimax/WiMaxRecordList;->checkDuplicate(Lcom/htc/android/epst/wimax/WiMaxRecord;Z)V

    .line 23
    sget-object v0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-boolean v0, p0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->DBG:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/htc/android/epst/wimax/WiMaxRecordList;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeModifiedWiMaxID>remove this rec ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/android/epst/wimax/WiMaxRecord;->wimaxID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method
