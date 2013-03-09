.class public Lcom/android/htccontacts/model/EntityDelta;
.super Ljava/lang/Object;
.source "EntityDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/htccontacts/model/EntityDelta;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "EntityDelta"


# instance fields
.field private isReadyOnly:Z

.field private mContactsQueryUri:Landroid/net/Uri;

.field private mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 554
    new-instance v0, Lcom/android/htccontacts/model/EntityDelta$1;

    invoke-direct {v0}, Lcom/android/htccontacts/model/EntityDelta$1;-><init>()V

    sput-object v0, Lcom/android/htccontacts/model/EntityDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 81
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 81
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    .line 87
    iput-object p1, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 88
    return-void
.end method

.method private containsEntry(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Z
    .locals 5
    .parameter "entry"

    .prologue
    .line 329
    iget-object v4, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 330
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 332
    .local v0, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 335
    .end local v0           #child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static fromBefore(Landroid/content/Entity;)Lcom/android/htccontacts/model/EntityDelta;
    .locals 5
    .parameter "before"

    .prologue
    .line 107
    new-instance v0, Lcom/android/htccontacts/model/EntityDelta;

    invoke-direct {v0}, Lcom/android/htccontacts/model/EntityDelta;-><init>()V

    .line 108
    .local v0, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    iput-object v3, v0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 109
    iget-object v3, v0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 111
    .local v2, namedValues:Landroid/content/Entity$NamedContentValues;
    iget-object v3, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-static {v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta;->addEntry(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    goto :goto_0

    .line 113
    .end local v2           #namedValues:Landroid/content/Entity$NamedContentValues;
    :cond_0
    return-object v0
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .parameter "mimeType"
    .parameter "lazyCreate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 230
    .local v0, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 231
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;)Lcom/android/htccontacts/model/EntityDelta;
    .locals 13
    .parameter "local"
    .parameter "remote"

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v8, p1, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 125
    .local v8, remoteValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-nez p0, :cond_1

    invoke-virtual {v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isTransient()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object v4

    .line 128
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/android/htccontacts/model/EntityDelta;

    .end local p0
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDelta;-><init>()V

    .line 131
    .restart local p0
    :cond_2
    iget-object v10, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v10, :cond_5

    .line 133
    .local v4, localVersion:Ljava/lang/Long;
    :goto_1
    iget-object v10, p1, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v11, "version"

    invoke-virtual {v10, v11}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 134
    .local v9, remoteVersion:Ljava/lang/Long;
    const-string v10, "EntityDelta"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Re-parenting from original version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v10, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v11, p1, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-static {v10, v11}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v10

    iput-object v10, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 142
    iget-object v10, p1, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 143
    .local v6, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 144
    .local v7, remoteEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 147
    .local v0, childId:Ljava/lang/Long;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/EntityDelta;->getEntry(Ljava/lang/Long;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 148
    .local v3, localEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-static {v3, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 150
    .local v5, merged:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-nez v3, :cond_4

    if-eqz v5, :cond_4

    .line 152
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/model/EntityDelta;->addEntry(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    goto :goto_2

    .line 131
    .end local v0           #childId:Ljava/lang/Long;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #localEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v4           #localVersion:Ljava/lang/Long;
    .end local v5           #merged:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v6           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v7           #remoteEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v9           #remoteVersion:Ljava/lang/Long;
    :cond_5
    iget-object v10, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v11, "version"

    invoke-virtual {v10, v11}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    .restart local v4       #localVersion:Ljava/lang/Long;
    .restart local v9       #remoteVersion:Ljava/lang/Long;
    :cond_6
    move-object v4, p0

    .line 157
    goto/16 :goto_0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .parameter
    .parameter "builder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    .line 373
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 2
    .parameter "entry"

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, mimeType:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    return-object p1
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, buildInto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v4, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v3

    .line 384
    .local v3, isContactInsert:Z
    if-nez v3, :cond_0

    .line 386
    iget-object v4, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 387
    .local v0, beforeId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 388
    .local v1, beforeVersion:Ljava/lang/Long;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 396
    .end local v0           #beforeId:Ljava/lang/Long;
    .end local v1           #beforeVersion:Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 390
    .restart local v0       #beforeId:Ljava/lang/Long;
    .restart local v1       #beforeVersion:Ljava/lang/Long;
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 392
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 393
    const-string v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 394
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, buildInto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 406
    .local v7, firstIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v12

    .line 407
    .local v12, isContactInsert:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v11

    .line 408
    .local v11, isContactDelete:Z
    if-nez v12, :cond_2

    if-nez v11, :cond_2

    const/4 v13, 0x1

    .line 410
    .local v13, isContactUpdate:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v4

    .line 424
    .local v4, beforeId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 425
    .local v5, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/htccontacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 429
    .local v15, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 431
    .local v6, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-nez v11, :cond_1

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    sget-object v18, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 435
    sget-object v17, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v18, "data"

    invoke-static/range {v17 .. v18}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 441
    :goto_2
    invoke-virtual {v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 442
    if-eqz v12, :cond_4

    .line 444
    const-string v17, "raw_contact_id"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 451
    :goto_3
    invoke-virtual {v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v3

    .line 452
    .local v3, after:Landroid/content/ContentValues;
    if-eqz v3, :cond_7

    .line 453
    const-string v17, "mimetype"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    .line 454
    .local v8, hasMimetype:Z
    if-nez v8, :cond_5

    .line 455
    const-string v17, "EditContactActivity"

    const-string v18, "build diff, some data\'s mimetype is not given"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 408
    .end local v3           #after:Landroid/content/ContentValues;
    .end local v4           #beforeId:Ljava/lang/Long;
    .end local v5           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v6           #child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v8           #hasMimetype:Z
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #isContactUpdate:Z
    .end local v15           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 438
    .restart local v4       #beforeId:Ljava/lang/Long;
    .restart local v5       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v6       #child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v13       #isContactUpdate:Z
    .restart local v15       #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_3
    sget-object v17, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    goto :goto_2

    .line 447
    :cond_4
    const-string v17, "raw_contact_id"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 459
    .restart local v3       #after:Landroid/content/ContentValues;
    .restart local v8       #hasMimetype:Z
    :cond_5
    const-string v17, "mimetype"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 460
    .local v16, mimetype:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 461
    const-string v17, "EditContactActivity"

    const-string v18, "build diff, some data\'s mimetype is null string"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 467
    .end local v3           #after:Landroid/content/ContentValues;
    .end local v8           #hasMimetype:Z
    .end local v16           #mimetype:Ljava/lang/String;
    :cond_6
    if-eqz v12, :cond_7

    if-eqz v5, :cond_7

    .line 469
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "When parent insert, child must be also"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 471
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/htccontacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    goto/16 :goto_1

    .line 488
    .end local v6           #child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v15           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_8
    const/4 v14, 0x0

    .line 489
    .local v14, isMyContactCard:Z
    sget-object v17, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 490
    const/4 v14, 0x1

    .line 494
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v7, :cond_b

    const/4 v2, 0x1

    .line 495
    .local v2, addedOperations:Z
    :goto_4
    if-nez v14, :cond_a

    if-eqz v2, :cond_a

    if-eqz v13, :cond_a

    .line 497
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/htccontacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 498
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 501
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/htccontacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 502
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_a
    return-void

    .line 494
    .end local v2           #addedOperations:Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_4
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "beforeId"
    .parameter "mode"

    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 513
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "aggregation_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 515
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "object"

    .prologue
    const/4 v5, 0x0

    .line 309
    instance-of v6, p1, Lcom/android/htccontacts/model/EntityDelta;

    if-eqz v6, :cond_0

    move-object v4, p1

    .line 310
    check-cast v4, Lcom/android/htccontacts/model/EntityDelta;

    .line 313
    .local v4, other:Lcom/android/htccontacts/model/EntityDelta;
    iget-object v6, v4, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v7, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 325
    .end local v4           #other:Lcom/android/htccontacts/model/EntityDelta;
    :cond_0
    :goto_0
    return v5

    .line 315
    .restart local v4       #other:Lcom/android/htccontacts/model/EntityDelta;
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 316
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 318
    .local v0, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-direct {v4, v0}, Lcom/android/htccontacts/model/EntityDelta;->containsEntry(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 323
    .end local v0           #child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 266
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 267
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 268
    .local v0, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 269
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v0           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_2
    return-object v4
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .parameter "childId"

    .prologue
    const/4 v4, 0x0

    .line 280
    if-nez p1, :cond_0

    move-object v0, v4

    .line 293
    :goto_0
    return-object v0

    .line 286
    :cond_0
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 287
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 288
    .local v0, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v0           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_3
    move-object v0, v4

    .line 293
    goto :goto_0
.end method

.method public getEntryCount(Z)I
    .locals 4
    .parameter "onlyVisible"

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, count:I
    iget-object v3, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 302
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 304
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 5
    .parameter "mimeType"
    .parameter "onlyVisible"

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 243
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 251
    :cond_0
    return v1

    .line 245
    :cond_1
    const/4 v1, 0x0

    .line 246
    .local v1, count:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 248
    .local v0, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 249
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .parameter "mimeType"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 173
    invoke-direct {p0, p1, v5}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 174
    .local v2, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-object v3

    .line 176
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 177
    .local v0, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 178
    goto :goto_0

    .line 183
    .end local v0           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/htccontacts/model/EntityDelta;->getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 7
    .parameter "mimeType"
    .parameter "forceSelection"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 201
    invoke-direct {p0, p1, v6}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 202
    .local v2, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v4

    .line 204
    :cond_1
    const/4 v3, 0x0

    .line 205
    .local v3, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 206
    .local v0, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v0

    .line 207
    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    move-object v3, v0

    goto :goto_1

    .line 213
    .end local v0           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_4
    if-eqz p2, :cond_0

    .line 218
    if-eqz v3, :cond_5

    move-object v4, v3

    .line 219
    goto :goto_0

    .line 221
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContactInsert()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public isReadyOnly()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/htccontacts/model/EntityDelta;->isReadyOnly:Z

    return v0
.end method

.method public markDeleted()V
    .locals 5

    .prologue
    .line 342
    iget-object v4, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 343
    iget-object v4, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 344
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 345
    .local v0, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 348
    .end local v0           #child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    .local v2, size:I
    const-class v3, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iput-object v3, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 540
    const-class v3, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/htccontacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 541
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 542
    const-class v3, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 543
    .local v0, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/EntityDelta;->addEntry(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 541
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    .end local v0           #child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_0
    return-void
.end method

.method public setProfileQueryUri()V
    .locals 1

    .prologue
    .line 551
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 552
    return-void
.end method

.method public setReadOnly()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/model/EntityDelta;->isReadyOnly:Z

    .line 92
    return-void
.end method

.method public setWritable()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/model/EntityDelta;->isReadyOnly:Z

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v5, "\n("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v5, ") = {"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 357
    .local v4, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 358
    .local v1, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v1, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 354
    .end local v1           #child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    const-string v5, "null"

    goto :goto_0

    .line 362
    :cond_2
    const-string v5, "\n}\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 526
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/model/EntityDelta;->getEntryCount(Z)I

    move-result v4

    .line 527
    .local v4, size:I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta;->mValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 529
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 530
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 531
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 532
    .local v0, child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 535
    .end local v0           #child:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    return-void
.end method
