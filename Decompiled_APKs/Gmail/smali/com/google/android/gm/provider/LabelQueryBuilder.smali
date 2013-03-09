.class public Lcom/google/android/gm/provider/LabelQueryBuilder;
.super Ljava/lang/Object;
.source "LabelQueryBuilder.java"


# instance fields
.field private mArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mLimit:I

.field private mProjection:[Ljava/lang/String;

.field private mRecent:Z

.field private whereAppended:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "db"
    .parameter "projection"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

    .line 40
    iput-object p2, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    iput-object p3, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mProjection:[Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

    const-string v1, "labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->LABEL_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 44
    const-string v0, "name"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p3, v0, v1}, Lcom/google/android/gm/provider/QueryUtils;->getQueryBindArgs(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mArgs:Ljava/util/List;

    .line 46
    return-void
.end method

.method private appendWhereClause(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "clause"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->whereAppended:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 154
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->whereAppended:Z

    goto :goto_0
.end method

.method private getLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mLimit:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mLimit:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mRecent:Z

    if-eqz v0, :cond_0

    const-string v0, "lastTouched DESC"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "systemLabel DESC, sortOrder ASC"

    goto :goto_0
.end method


# virtual methods
.method public filterCanonicalName(Ljava/util/List;)Lcom/google/android/gm/provider/LabelQueryBuilder;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gm/provider/LabelQueryBuilder;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, canonicalNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 56
    .local v0, first:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    .local v2, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 58
    const-string v4, "canonicalName IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/4 v0, 0x0

    .line 63
    :goto_1
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v4, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mArgs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 66
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gm/provider/LabelQueryBuilder;->appendWhereClause(Ljava/lang/CharSequence;)V

    .line 69
    .end local v0           #first:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    return-object p0
.end method

.method getQueryArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mArgs:Ljava/util/List;

    return-object v0
.end method

.method getQueryString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

    iget-object v1, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mProjection:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gm/provider/LabelQueryBuilder;->getOrder()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/android/gm/provider/LabelQueryBuilder;->getLimit()Ljava/lang/String;

    move-result-object v6

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public labelId(J)Lcom/google/android/gm/provider/LabelQueryBuilder;
    .locals 2
    .parameter "labelId"

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "_id = ?"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/LabelQueryBuilder;->appendWhereClause(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mArgs:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-object p0
.end method

.method public query()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mArgs:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 120
    .local v4, args:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;

    iget-object v1, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mProjection:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gm/provider/LabelQueryBuilder;->getOrder()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/google/android/gm/provider/LabelQueryBuilder;->getLimit()Ljava/lang/String;

    move-result-object v8

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setRecent(JI)Lcom/google/android/gm/provider/LabelQueryBuilder;
    .locals 3
    .parameter "before"
    .parameter "limit"

    .prologue
    .line 102
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lastTouched"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, " != 0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "lastTouched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, " < ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mArgs:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iput p3, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mLimit:I

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/LabelQueryBuilder;->appendWhereClause(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gm/provider/LabelQueryBuilder;->mRecent:Z

    .line 112
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-object p0
.end method

.method public showHidden(Z)Lcom/google/android/gm/provider/LabelQueryBuilder;
    .locals 1
    .parameter "showHidden"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string v0, "hidden = 0"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/LabelQueryBuilder;->appendWhereClause(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    return-object p0
.end method
