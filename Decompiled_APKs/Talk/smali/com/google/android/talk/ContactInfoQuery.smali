.class public Lcom/google/android/talk/ContactInfoQuery;
.super Ljava/lang/Object;
.source "ContactInfoQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;,
        Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallbackErrorHandler;,
        Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;
    }
.end annotation


# static fields
.field private static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_PROJECTION_WITH_AVATAR:[Ljava/lang/String;


# instance fields
.field private mContactInfoCallback:Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;

.field private mContactInfoCursor:Landroid/database/Cursor;

.field private mContactInfoQueryHandler:Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;

.field private mContactInfoSelectionArgs:[Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mHaveContactInfo:Z

.field private mIncludeAvatar:Z

.field private mLogLevel:I

.field private mSelection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "nickname"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "mode"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cap"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/ContactInfoQuery;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "nickname"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "mode"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "avatars_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/ContactInfoQuery;->CONTACT_PROJECTION_WITH_AVATAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "contact"
    .parameter "contentObserver"
    .parameter "includeAvatar"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mLogLevel:I

    .line 87
    if-eqz p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 88
    :cond_0
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactInfoQuery: bad params, accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contact="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfo(JLjava/lang/String;)V

    .line 94
    new-instance v0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;-><init>(Lcom/google/android/talk/ContactInfoQuery;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoQueryHandler:Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;

    .line 95
    iput-object p5, p0, Lcom/google/android/talk/ContactInfoQuery;->mContentObserver:Landroid/database/ContentObserver;

    .line 96
    iput-object p1, p0, Lcom/google/android/talk/ContactInfoQuery;->mContext:Landroid/content/Context;

    .line 97
    iput-boolean p6, p0, Lcom/google/android/talk/ContactInfoQuery;->mIncludeAvatar:Z

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/ContactInfoQuery;)Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCallback:Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/ContactInfoQuery;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/ContactInfoQuery;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/talk/ContactInfoQuery;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/talk/ContactInfoQuery;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/talk/ContactInfoQuery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/talk/ContactInfoQuery;->mHaveContactInfo:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/talk/ContactInfoQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mLogLevel:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/ContactInfoQuery;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/talk/ContactInfoQuery;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 242
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ContactInfoQuery] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method


# virtual methods
.method public cleanupContactInfoCursor()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/talk/ContactInfoQuery;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    .line 239
    :cond_1
    return-void
.end method

.method public getAvatar()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, avatar:Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lcom/google/android/talk/ContactInfoQuery;->mIncludeAvatar:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/talk/DatabaseUtils;->getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 155
    .local v1, avatarBitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 156
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #avatar:Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 160
    .end local v1           #avatarBitmap:Landroid/graphics/Bitmap;
    .restart local v0       #avatar:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 161
    iget-object v2, p0, Lcom/google/android/talk/ContactInfoQuery;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 164
    :cond_1
    return-object v0
.end method

.method public getCapabilities()I
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 205
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCustomPresence()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, nickName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseAbbreviatedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .end local v0           #nickName:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPresenceStatus()I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requeryForContactInfo()V
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "requeryForContactInfo"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ContactInfoQuery;->log(Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 229
    return-void
.end method

.method public setContactInfo(JLjava/lang/String;)V
    .locals 4
    .parameter "accountId"
    .parameter "contact"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoSelectionArgs:[Ljava/lang/String;

    .line 103
    const-string v0, "username=? AND account=?"

    iput-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mSelection:Ljava/lang/String;

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    aput-object p3, v0, v2

    iput-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoSelectionArgs:[Ljava/lang/String;

    .line 106
    const-string v0, "username=?"

    iput-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mSelection:Ljava/lang/String;

    goto :goto_0
.end method

.method public setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCallback:Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;

    .line 112
    return-void
.end method

.method public startQueryForContactInfo()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x14

    .line 210
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoQueryHandler:Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->cancelOperation(I)V

    .line 212
    iget v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mLogLevel:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 213
    const-string v0, "startQueryForContactInfo:"

    invoke-direct {p0, v0}, Lcom/google/android/talk/ContactInfoQuery;->log(Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   mContactInfoSelectionArgs[0]="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ContactInfoQuery;->log(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   mContactInfoSelectionArgs[1]="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/ContactInfoQuery;->log(Ljava/lang/String;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoQueryHandler:Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;

    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/google/android/talk/ContactInfoQuery;->mIncludeAvatar:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/talk/ContactInfoQuery;->CONTACT_PROJECTION_WITH_AVATAR:[Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Lcom/google/android/talk/ContactInfoQuery;->mSelection:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/talk/ContactInfoQuery;->mContactInfoSelectionArgs:[Ljava/lang/String;

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void

    .line 218
    :cond_1
    sget-object v4, Lcom/google/android/talk/ContactInfoQuery;->CONTACT_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method
