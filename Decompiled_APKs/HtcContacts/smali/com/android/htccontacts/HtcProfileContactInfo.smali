.class public Lcom/android/htccontacts/HtcProfileContactInfo;
.super Lcom/android/htccontacts/HtcContactInfo;
.source "HtcProfileContactInfo.java"


# static fields
.field private static final DEBUG:Z

.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "HtcProfileContactInfo"

    sput-object v0, Lcom/android/htccontacts/HtcProfileContactInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcContactInfo;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0
    .parameter "Uri"
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcContactInfo;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected buildContactInfo()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    .line 46
    iget-object v8, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    .line 47
    .local v8, lookupUri:Landroid/net/Uri;
    if-nez v8, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v7

    .line 52
    .local v7, isProfile:Z
    if-eqz v7, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/htccontacts/util/Constants;->PROJECTION_CONTACT:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 55
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 57
    const-string v0, "photo_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mThumbnailId:J

    .line 59
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 60
    const/4 v6, 0x0

    .line 62
    :cond_3
    iget-wide v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mThumbnailId:J

    cmp-long v0, v0, v9

    if-lez v0, :cond_5

    .line 63
    iget-wide v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mThumbnailId:J

    invoke-static {v0, v1, v3}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    .line 71
    :cond_4
    :goto_1
    const-string v0, "CONTACT_INFO_COMPLETED"

    invoke-virtual {p0, v0, v9, v10}, Lcom/android/htccontacts/HtcProfileContactInfo;->notifyChanges(Ljava/lang/String;J)V

    goto :goto_0

    .line 66
    :cond_5
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    iput-object v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method protected buildRawContactInfo()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    .line 76
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcProfileContactInfo;->closeCursor()V

    .line 77
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mUriContact:Landroid/net/Uri;

    if-nez v3, :cond_1

    .line 78
    sget-object v3, Lcom/android/htccontacts/HtcProfileContactInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid contact uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mUriContact:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 82
    .local v1, profileId:J
    invoke-static {v1, v2}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    .line 84
    .local v0, isProfile:Z
    if-eqz v0, :cond_2

    .line 119
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    .line 120
    const-string v3, "ENTITY_QUERY_COMPLETED"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/htccontacts/HtcProfileContactInfo;->notifyChanges(Ljava/lang/String;J)V

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object v3, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method buildSuggestInfo()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method
