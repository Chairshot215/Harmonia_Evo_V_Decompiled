.class Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
.super Ljava/lang/Object;
.source "DeDuplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/DeDuplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemData"
.end annotation


# instance fields
.field isChecked:Z

.field isMajor:Z

.field photo_id:J

.field primaryText:Ljava/lang/String;

.field raw_contact_id:Ljava/lang/String;

.field secondaryText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;

.field viewType:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/EntityIterator;)V
    .locals 8
    .parameter
    .parameter "major"
    .parameter "_id"
    .parameter "account_type_str"
    .parameter "displayName"
    .parameter "entityIterator"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isMajor:Z

    .line 373
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isChecked:Z

    .line 374
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->raw_contact_id:Ljava/lang/String;

    .line 375
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->photo_id:J

    .line 376
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->primaryText:Ljava/lang/String;

    .line 377
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->secondaryText:Ljava/lang/String;

    .line 381
    iput-boolean p2, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isMajor:Z

    .line 382
    iput-object p3, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->raw_contact_id:Ljava/lang/String;

    .line 383
    iput-object p4, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->secondaryText:Ljava/lang/String;

    .line 384
    iput-object p5, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->primaryText:Ljava/lang/String;

    .line 385
    invoke-interface {p6}, Landroid/content/EntityIterator;->reset()V

    .line 388
    const/4 v3, 0x0

    .line 389
    .local v3, isPhotoFound:Z
    :cond_0
    :goto_0
    invoke-interface {p6}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v3, :cond_2

    .line 390
    invoke-interface {p6}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    .line 391
    .local v1, entity:Landroid/content/Entity;
    invoke-virtual {v1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity$NamedContentValues;

    .line 392
    .local v5, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v0, v5, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 393
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v6, "mimetype"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, key:Ljava/lang/String;
    const-string v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 395
    const-string v6, "_id"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->photo_id:J

    .line 396
    const/4 v3, 0x1

    .line 397
    goto :goto_0

    .line 402
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #entity:Landroid/content/Entity;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    :cond_2
    iget-boolean v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isMajor:Z

    if-eqz v6, :cond_3

    .line 403
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->viewType:I

    .line 407
    :goto_1
    return-void

    .line 405
    :cond_3
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->viewType:I

    goto :goto_1
.end method
