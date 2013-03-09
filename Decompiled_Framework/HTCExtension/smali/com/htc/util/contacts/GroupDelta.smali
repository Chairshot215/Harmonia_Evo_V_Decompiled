.class Lcom/htc/util/contacts/GroupDelta;
.super Ljava/lang/Object;
.source "GroupEntity.java"


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
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupDelta;->mRawContactList:Ljava/util/ArrayList;

    return-void
.end method

.method public static fromEntity(Landroid/content/Entity;)Lcom/htc/util/contacts/GroupDelta;
    .locals 9

    new-instance v1, Lcom/htc/util/contacts/GroupDelta;

    invoke-direct {v1}, Lcom/htc/util/contacts/GroupDelta;-><init>()V

    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/util/contacts/GroupDelta;->mAccountName:Ljava/lang/String;

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    const-string v6, "sourceid"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/util/contacts/GroupDelta;->mSourceId:Ljava/lang/String;

    const-string v6, "system_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/util/contacts/GroupDelta;->mSystemId:Ljava/lang/String;

    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/util/contacts/GroupDelta;->mDataSet:Ljava/lang/String;

    const-string v6, "com.htc.android.myphonebook"

    iget-object v7, v1, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "notes"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v6, v0

    if-lez v6, :cond_0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/util/contacts/GroupDelta;->mTiIcon:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    const-string v6, "_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/htc/util/contacts/GroupDelta;->mId:J

    const-string v6, "deleted"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lcom/htc/util/contacts/GroupDelta;->mIsDeleted:I

    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    iget-object v6, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v7, "data1"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/htc/util/contacts/GroupDelta;->mRawContactList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v6, "notes"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/util/contacts/GroupDelta;->mNotes:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-object v1
.end method
