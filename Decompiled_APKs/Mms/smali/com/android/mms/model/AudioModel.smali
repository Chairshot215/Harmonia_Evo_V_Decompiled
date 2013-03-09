.class public Lcom/android/mms/model/AudioModel;
.super Lcom/android/mms/model/MediaModel;
.source "AudioModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioModel"


# instance fields
.field private final mExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 54
    invoke-direct {p0, p2}, Lcom/android/mms/model/AudioModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    invoke-direct {p0, p2, p3}, Lcom/android/mms/model/AudioModel;->initModelFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 68
    const-string v2, "audio"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    .line 73
    invoke-static {p4}, Lcom/android/mms/model/AudioModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const-string v0, "cid:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 75
    const-string v0, "$"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 76
    .local v6, pos:I
    if-lez v6, :cond_0

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 77
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 78
    :cond_0
    iput-object p3, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;

    .line 82
    .end local v6           #pos:I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V
    .locals 6
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v2, "audio"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    .line 88
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 13
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 122
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 124
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 126
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    invoke-static {p1}, Lcom/android/mms/model/AudioModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v10

    .line 133
    .local v10, isFromMms:Z
    if-eqz v10, :cond_2

    .line 134
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, path:Ljava/lang/String;
    const-string v0, "ct"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 154
    :cond_0
    :goto_0
    const/16 v0, 0x2f

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 156
    .local v12, pos:I
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getAttachmentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 158
    if-nez v10, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->getCID(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v10           #isFromMms:Z
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #pos:I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 137
    .restart local v10       #isFromMms:Z
    :cond_2
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 138
    .restart local v11       #path:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 142
    const-string v0, "album"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, album:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    const-string v2, "album"

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_3
    const-string v0, "artist"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, artist:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    const-string v2, "artist"

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    .end local v7           #album:Ljava/lang/String;
    .end local v8           #artist:Ljava/lang/String;
    .end local v10           #isFromMms:Z
    .end local v11           #path:Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .restart local v10       #isFromMms:Z
    .restart local v11       #path:Ljava/lang/String;
    .restart local v12       #pos:I
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 193
    invoke-virtual {p0}, Lcom/android/mms/model/AudioModel;->initMediaDuration()V

    .line 194
    return-void

    .line 190
    .end local v10           #isFromMms:Z
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #pos:I
    :cond_6
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initModelFromUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iput-object p2, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, path:Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 99
    .local v1, pos:I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getAttachmentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->getCID(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/model/MediaModel;->mCID:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/android/mms/model/AudioModel;->initMediaDuration()V

    .line 117
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #pos:I
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/model/AudioModel;->initModelFromUri(Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 229
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkAudioContentType(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 202
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, evtType:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 208
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 219
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/AudioModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 220
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/model/AudioModel;->notifyModelChanged(Z)V

    .line 221
    return-void

    .line 210
    :cond_1
    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_0

    .line 212
    :cond_2
    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 213
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_0

    .line 214
    :cond_3
    const-string v2, "SmilMediaSeek"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 216
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getSeekTo()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/MediaModel;->mSeekTo:I

    goto :goto_0
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/AudioModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/AudioModel;->notifyModelChanged(Z)V

    .line 199
    return-void
.end method
