.class public Lcom/android/htcdialer/util/SpeedDialUtils;
.super Ljava/lang/Object;
.source "SpeedDialUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    }
.end annotation


# static fields
.field public static final COLUMN_CONTACT_ID:I = 0x8

.field public static final COLUMN_DATA_ID:I = 0x7

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_LOCATION:I = 0x1

.field public static final COLUMN_NAME:I = 0x2

.field public static final COLUMN_NUMBER:I = 0x3

.field public static final COLUMN_RAW_CONTACT_ID:I = 0x5

.field public static final COLUMN_RECORD_LOCATION:I = 0x9

.field public static final COLUMN_RECORD_NUMBER:I = 0x6

.field public static final COLUMN_TYPE:I = 0x4

.field public static final CONTENT_URI_LOCATION:Landroid/net/Uri; = null

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final KEY_NUMBER_ID:Ljava/lang/String; = "number_id"

.field public static final KEY_RESULT:Ljava/lang/String; = "need_result"

.field public static final PROJECTION_MAP:[Ljava/lang/String;

.field public static final PROJECTION_MAP_1:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "location"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "recordNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htcdialer/util/SpeedDialUtils;->PROJECTION_MAP:[Ljava/lang/String;

    .line 50
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "location"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "recordNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "recordLocation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htcdialer/util/SpeedDialUtils;->PROJECTION_MAP_1:[Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/util/SpeedDialUtils;->CONTENT_URI_LOCATION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static createContactInfo(Landroid/database/Cursor;)Landroid/provider/HtcUnionContact$SimpleContactInfo;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/htcdialer/util/SpeedDialUtils;->createContactInfo(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/provider/HtcUnionContact$SimpleContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createContactInfo(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/provider/HtcUnionContact$SimpleContactInfo;
    .locals 10
    .parameter "cursor"
    .parameter "resolver"

    .prologue
    const-wide/16 v8, 0x0

    .line 190
    const/4 v5, 0x0

    .line 192
    .local v5, result:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    const/16 v6, 0x8

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 193
    .local v0, personId:J
    const/4 v6, 0x6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 194
    .local v3, recordNumber:J
    cmp-long v6, v0, v8

    if-gtz v6, :cond_0

    cmp-long v6, v3, v8

    if-lez v6, :cond_1

    .line 196
    :cond_0
    new-instance v5, Landroid/provider/HtcUnionContact$SimpleContactInfo;

    .end local v5           #result:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    invoke-direct {v5}, Landroid/provider/HtcUnionContact$SimpleContactInfo;-><init>()V

    .line 197
    .restart local v5       #result:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    cmp-long v6, v0, v8

    if-lez v6, :cond_4

    .line 198
    iput-wide v0, v5, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    .line 202
    :goto_0
    const/4 v6, 0x2

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/provider/HtcUnionContact$SimpleContactInfo;->name:Ljava/lang/String;

    .line 203
    const/4 v6, 0x3

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    .line 204
    const/4 v6, 0x4

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Landroid/provider/HtcUnionContact$SimpleContactInfo;->numberType:I

    .line 208
    :cond_1
    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    .line 209
    iget-wide v6, v5, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    invoke-static {v6, v7, p1}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->getContactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    .line 211
    .local v2, photoCursor:Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 212
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 215
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/provider/HtcUnionContact$SimpleContactInfo;->bHasPhoto:Z

    .line 219
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 223
    .end local v2           #photoCursor:Landroid/database/Cursor;
    :cond_3
    return-object v5

    .line 200
    :cond_4
    iput-wide v3, v5, Landroid/provider/HtcUnionContact$SimpleContactInfo;->recordNumber:J

    goto :goto_0
.end method
