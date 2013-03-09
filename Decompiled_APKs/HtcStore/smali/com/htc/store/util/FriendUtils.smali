.class public Lcom/htc/store/util/FriendUtils;
.super Ljava/lang/Object;
.source "FriendUtils.java"


# static fields
.field public static final FRIENDFIELD_CONTACTID:Ljava/lang/String; = "contactid"

.field public static final FRIENDFIELD_FRIENDID:Ljava/lang/String; = "friendid"

.field public static final FRIENDFIELD_NAME:Ljava/lang/String; = "name"

.field public static final FRIENDFIELD_STATE:Ljava/lang/String; = "state"

.field public static final FRIENDFIELD_TYPE:Ljava/lang/String; = "type"

.field public static final FRIENDTYPE_FRIEND:I = 0x1

.field public static final FRIENDTYPE_MATCH:I = 0x2

.field public static final FRIENDTYPE_REQUEST:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/store/util/FriendUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/FriendUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFriendContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/store/module/ContactsManager$ContactInfo;
    .locals 11
    .parameter "context"
    .parameter "friendID"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 29
    new-instance v7, Lcom/htc/store/module/ContactsManager$ContactInfo;

    invoke-direct {v7}, Lcom/htc/store/module/ContactsManager$ContactInfo;-><init>()V

    .line 30
    .local v7, info:Lcom/htc/store/module/ContactsManager$ContactInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 31
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "csfriends"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "contactid"

    aput-object v3, v2, v9

    const-string v3, "name"

    aput-object v3, v2, v8

    const-string v3, "friendid = ? AND type = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 37
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 38
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/htc/store/module/ContactsManager$ContactInfo;->mId:J

    .line 40
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/store/module/ContactsManager$ContactInfo;->mName:Ljava/lang/String;

    .line 41
    sget-object v1, Lcom/htc/store/util/FriendUtils;->TAG:Ljava/lang/String;

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "Friend name: "

    aput-object v3, v2, v9

    iget-object v3, v7, Lcom/htc/store/module/ContactsManager$ContactInfo;->mName:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_1
    return-object v7
.end method

.method public static getFriendPhotoFromContactId(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter "context"
    .parameter "contactid"

    .prologue
    .line 65
    const/4 v7, 0x0

    .line 66
    .local v7, photo:Landroid/graphics/drawable/Drawable;
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "photo_id"

    aput-object v4, v2, v3

    const-string v3, "_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 73
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "photo_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 76
    .local v8, photo_id:J
    const/4 v0, 0x0

    invoke-static {v8, v9, v0}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 77
    .local v10, temp:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_2

    .line 78
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #photo:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v7, v0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 83
    .end local v8           #photo_id:J
    .end local v10           #temp:Landroid/graphics/Bitmap;
    .restart local v7       #photo:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 86
    .end local v6           #cr:Landroid/database/Cursor;
    :cond_1
    return-object v7

    .line 80
    .restart local v6       #cr:Landroid/database/Cursor;
    .restart local v8       #photo_id:J
    .restart local v10       #temp:Landroid/graphics/Bitmap;
    :cond_2
    sget-object v0, Lcom/htc/store/util/FriendUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Friend\'s photo is null."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static hasFriend(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    .local v7, result:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "account_type=\'com.htc.cs\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 55
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 56
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/4 v7, 0x1

    .line 59
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_1
    return v7
.end method
