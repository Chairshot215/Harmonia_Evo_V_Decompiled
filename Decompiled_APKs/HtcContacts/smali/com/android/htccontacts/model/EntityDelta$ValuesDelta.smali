.class public Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
.super Ljava/lang/Object;
.source "EntityDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/EntityDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValuesDelta"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation
.end field

.field protected static sNextInsertId:I


# instance fields
.field protected mAfter:Landroid/content/ContentValues;

.field protected mBefore:Landroid/content/ContentValues;

.field private mFromTemplate:Z

.field protected mIdColumn:Ljava/lang/String;

.field protected mNewInsertTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 585
    const/4 v0, -0x1

    sput v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->sNextInsertId:I

    .line 1059
    new-instance v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta$1;

    invoke-direct {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta$1;-><init>()V

    sput-object v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 587
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 574
    const-string v0, "_id"

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 588
    return-void
.end method

.method private ensureUpdate()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 872
    :cond_0
    return-void
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 5
    .parameter "after"

    .prologue
    .line 606
    new-instance v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-direct {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 607
    .local v0, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 608
    iput-object p0, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 611
    iget-object v1, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    sget v3, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->sNextInsertId:I

    add-int/lit8 v4, v3, -0x1

    sput v4, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->sNextInsertId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mNewInsertTime:J

    .line 613
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 2
    .parameter "before"

    .prologue
    .line 595
    new-instance v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-direct {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 596
    .local v0, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    iput-object p0, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 597
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 598
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .locals 1
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 947
    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 960
    .end local p0
    :goto_0
    return-object p0

    .line 950
    .restart local p0
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .end local p0
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 952
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 954
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    goto :goto_0

    .line 957
    :cond_3
    iget-object v0, p1, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    goto :goto_0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 4
    .parameter "targetUri"

    .prologue
    const/4 v3, 0x0

    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1024
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1025
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1026
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1037
    :cond_0
    :goto_0
    return-object v0

    .line 1027
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1029
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 1031
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1035
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1043
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 965
    instance-of v2, p1, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 967
    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 968
    .local v0, other:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->subsetEquals(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->subsetEquals(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 970
    .end local v0           #other:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_0
    return v1
.end method

.method public getAfter()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .parameter "key"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 715
    :goto_0
    return-object v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 715
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "key"

    .prologue
    .line 730
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 739
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 736
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0
.end method

.method public getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter "key"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 725
    :goto_0
    return-object v0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 725
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    :goto_0
    return-object v0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 705
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBefore()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getCompleteValues()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 925
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 926
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 929
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 932
    :cond_1
    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 934
    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 937
    :cond_2
    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    const-string v0, "mimetype"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewInsertTime()J
    .locals 2

    .prologue
    .line 618
    iget-wide v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mNewInsertTime:J

    return-wide v0
.end method

.method public getViewId()I
    .locals 2

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 771
    .local v0, id:Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public isChanged(Ljava/lang/String;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 744
    iget-object v4, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v4, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 755
    :cond_1
    :goto_0
    return v2

    .line 748
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v4, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 749
    .local v0, newValue:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v4, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 751
    .local v1, oldValue:Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 752
    if-nez v0, :cond_1

    move v2, v3

    goto :goto_0

    .line 755
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromTemplate()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mFromTemplate:Z

    return v0
.end method

.method public isInsert()Z
    .locals 1

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoop()Z
    .locals 1

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 779
    const-string v2, "is_primary"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 780
    .local v0, isPrimary:Ljava/lang/Long;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSuperPrimary()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 792
    const-string v2, "is_super_primary"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 793
    .local v0, isSuperPrimary:Ljava/lang/Long;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdate()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 828
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 842
    :goto_0
    return v4

    .line 831
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 832
    .local v1, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 833
    .local v2, newValue:Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 834
    .local v3, oldValue:Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 835
    if-eqz v2, :cond_2

    goto :goto_0

    .line 838
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .end local v1           #key:Ljava/lang/String;
    .end local v2           #newValue:Ljava/lang/Object;
    .end local v3           #oldValue:Ljava/lang/Object;
    :cond_4
    move v4, v5

    .line 842
    goto :goto_0
.end method

.method public isUpdateForInteger(Ljava/lang/String;)Z
    .locals 6
    .parameter "key"

    .prologue
    .line 671
    const/4 v2, 0x0

    .line 672
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 673
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v5, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 674
    .local v0, aft:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v5, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 675
    .local v1, bef:Ljava/lang/Integer;
    if-eq v0, v1, :cond_4

    .line 676
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 677
    :cond_0
    const/4 v2, 0x1

    .line 689
    .end local v0           #aft:Ljava/lang/Integer;
    .end local v1           #bef:Ljava/lang/Integer;
    :cond_1
    :goto_0
    return v2

    .line 679
    .restart local v0       #aft:Ljava/lang/Integer;
    .restart local v1       #bef:Ljava/lang/Integer;
    :cond_2
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 680
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 681
    .local v3, va1:I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 682
    .local v4, va2:I
    if-eq v3, v4, :cond_3

    const/4 v2, 0x1

    .line 683
    :goto_1
    goto :goto_0

    .line 682
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 686
    .end local v3           #va1:I
    .end local v4           #va2:I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUpdateForLong(Ljava/lang/String;)Z
    .locals 9
    .parameter "key"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 650
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 651
    iget-object v8, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v8, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 652
    .local v0, aft:Ljava/lang/Long;
    iget-object v8, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v8, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 653
    .local v1, bef:Ljava/lang/Long;
    if-eq v0, v1, :cond_2

    .line 654
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 667
    .end local v0           #aft:Ljava/lang/Long;
    .end local v1           #bef:Ljava/lang/Long;
    :cond_0
    :goto_0
    return v6

    .line 657
    .restart local v0       #aft:Ljava/lang/Long;
    .restart local v1       #bef:Ljava/lang/Long;
    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 658
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 659
    .local v2, va1:J
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 660
    .local v4, va2:J
    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    move v6, v7

    goto :goto_0

    .end local v2           #va1:J
    .end local v4           #va2:J
    :cond_2
    move v6, v7

    .line 664
    goto :goto_0

    .end local v0           #aft:Ljava/lang/Long;
    .end local v1           #bef:Ljava/lang/Long;
    :cond_3
    move v6, v7

    .line 667
    goto :goto_0
.end method

.method public isUpdateForString(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 631
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    iget-object v3, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v3, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, aft:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v3, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, bef:Ljava/lang/String;
    if-eq v0, v1, :cond_1

    .line 635
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 636
    :cond_0
    const/4 v2, 0x1

    .line 646
    .end local v0           #aft:Ljava/lang/String;
    .end local v1           #bef:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 639
    .restart local v0       #aft:Ljava/lang/String;
    .restart local v1       #bef:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 903
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 905
    .local v2, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 906
    iget-object v3, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 907
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 911
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v3, :cond_1

    .line 912
    iget-object v3, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 913
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 917
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public markDeleted()V
    .locals 1

    .prologue
    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 863
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 886
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 887
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 891
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 892
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 876
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 881
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 882
    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->ensureUpdate()V

    .line 896
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 897
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 1054
    const-class v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 1055
    const-class v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 1056
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 1057
    return-void
.end method

.method public setFromTemplate(Z)V
    .locals 0
    .parameter "isFromTemplate"

    .prologue
    .line 784
    iput-boolean p1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mFromTemplate:Z

    .line 785
    return-void
.end method

.method public setIdColumn(Ljava/lang/String;)V
    .locals 0
    .parameter "idColumn"

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 776
    return-void
.end method

.method public subsetEquals(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Z
    .locals 6
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    .line 1000
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1001
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1002
    .local v2, ourValue:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, theirValue:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1005
    if-eqz v3, :cond_0

    .line 1012
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #ourValue:Ljava/lang/String;
    .end local v3           #theirValue:Ljava/lang/String;
    :goto_0
    return v4

    .line 1008
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #ourValue:Ljava/lang/String;
    .restart local v3       #theirValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 1012
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #ourValue:Ljava/lang/String;
    .end local v3           #theirValue:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    .line 977
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 985
    const-string v2, "{ "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 987
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 992
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const-string v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1049
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1050
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1051
    return-void
.end method
