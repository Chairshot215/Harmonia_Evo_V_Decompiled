.class public Lcom/android/htccontacts/group/GroupDelta;
.super Ljava/lang/Object;
.source "GroupDelta.java"


# instance fields
.field public mAccountName:Ljava/lang/String;

.field public mAccountType:Ljava/lang/String;

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mDataSet:Ljava/lang/String;

.field public mId:J

.field public mIsDeleted:I

.field public mNotes:Ljava/lang/String;

.field public mRawContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mSourceId:Ljava/lang/String;

.field public mSystemId:Ljava/lang/String;

.field public mTiIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDelta;->mRawContactList:Ljava/util/ArrayList;

    return-void
.end method

.method public static fromEntity(Landroid/content/Entity;)Lcom/android/htccontacts/group/GroupDelta;
    .locals 9
    .parameter "entity"

    .prologue
    .line 32
    new-instance v1, Lcom/android/htccontacts/group/GroupDelta;

    invoke-direct {v1}, Lcom/android/htccontacts/group/GroupDelta;-><init>()V

    .line 33
    .local v1, delta:Lcom/android/htccontacts/group/GroupDelta;
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 34
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/htccontacts/group/GroupDelta;->mAccountName:Ljava/lang/String;

    .line 35
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/htccontacts/group/GroupDelta;->mAccountType:Ljava/lang/String;

    .line 36
    const-string v6, "sourceid"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/htccontacts/group/GroupDelta;->mSourceId:Ljava/lang/String;

    .line 37
    const-string v6, "system_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/htccontacts/group/GroupDelta;->mSystemId:Ljava/lang/String;

    .line 38
    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/htccontacts/group/GroupDelta;->mDataSet:Ljava/lang/String;

    .line 40
    const-string v6, "com.htc.android.myphonebook"

    iget-object v7, v1, Lcom/android/htccontacts/group/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 41
    const-string v6, "notes"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    array-length v6, v0

    if-lez v6, :cond_0

    .line 43
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/android/htccontacts/group/GroupDelta;->mTiIcon:Landroid/graphics/Bitmap;

    .line 49
    .end local v0           #bytes:[B
    :cond_0
    :goto_0
    const-string v6, "_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/htccontacts/group/GroupDelta;->mId:J

    .line 50
    const-string v6, "deleted"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lcom/android/htccontacts/group/GroupDelta;->mIsDeleted:I

    .line 52
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    .line 53
    .local v3, namedValues:Landroid/content/Entity$NamedContentValues;
    iget-object v6, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    if-eqz v6, :cond_1

    .line 54
    iget-object v6, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v7, "data1"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, rowId:Ljava/lang/String;
    iget-object v6, v1, Lcom/android/htccontacts/group/GroupDelta;->mRawContactList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #namedValues:Landroid/content/Entity$NamedContentValues;
    .end local v4           #rowId:Ljava/lang/String;
    :cond_2
    const-string v6, "notes"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/htccontacts/group/GroupDelta;->mNotes:Ljava/lang/String;

    goto :goto_0

    .line 58
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    return-object v1
.end method
