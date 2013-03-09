.class public Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;
.super Ljava/lang/Object;
.source "VCardMgr.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$1;,
        Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardUploader;,
        Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;
    }
.end annotation


# static fields
.field private static final AVATAR_HASH_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAvatarChangedNotificationMap:Ljava/util/HashMap;
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

.field private mAvatarHashSelectionArgs:[Ljava/lang/String;

.field private mAvatarUri:Landroid/net/Uri;

.field private mBatchPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mCurrentlyLoadingList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

.field private mPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hash"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->AVATAR_HASH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mAvatarChangedNotificationMap:Ljava/util/HashMap;

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->addToLoadingList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;)Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->removeFromLoadingList(Ljava/lang/String;)V

    return-void
.end method

.method private addToLoadingList(Ljava/lang/String;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mCurrentlyLoadingList:Ljava/util/Map;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mCurrentlyLoadingList:Ljava/util/Map;

    const-string v2, ""

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkAndLoadVCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "contact"
    .parameter "hash"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->getStoredAvatarHashForContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, oldhash:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->loadAvatarForUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_1
    return-void
.end method

.method private checkAvatarUpdates(Lorg/jivesoftware/smack/packet/Presence;Ljava/lang/String;)V
    .locals 7
    .parameter "presence"
    .parameter "user"

    .prologue
    .line 276
    sget-byte v5, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 280
    const-string v5, "x"

    const-string v6, "vcard-temp:x:update"

    invoke-virtual {p1, v5, v6}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v3

    .line 281
    .local v3, px:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 282
    check-cast v4, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    .line 283
    .local v4, updates:Lorg/jivesoftware/smack/packet/DefaultPacketExtension;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->getNames()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 285
    .local v2, name:Ljava/lang/String;
    const-string v5, "photo"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, hash:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 289
    invoke-direct {p0, p2, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->checkAndLoadVCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v0           #hash:Ljava/lang/String;
    .end local v1           #i:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #px:Lorg/jivesoftware/smack/packet/PacketExtension;
    .end local v4           #updates:Lorg/jivesoftware/smack/packet/DefaultPacketExtension;
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getAvatarHash()Ljava/lang/String;

    move-result-object v0

    .line 302
    .restart local v0       #hash:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 303
    invoke-direct {p0, p2, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->checkAndLoadVCard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAvatarUri(J)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 341
    sget-object v1, Lcom/google/android/gsf/TalkContract$Avatars;->CONTENT_URI_AVATARS_BY:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 342
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 343
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private isCurrentlyLoadingVCard(Ljava/lang/String;)Z
    .locals 2
    .parameter "user"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mCurrentlyLoadingList:Ljava/util/Map;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mCurrentlyLoadingList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 413
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VCardMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 518
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VCardMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private notifyAvatarChanged(Ljava/lang/String;J)V
    .locals 3
    .parameter "contact"
    .parameter "accountId"

    .prologue
    .line 404
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAvatarChanged for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->log(Ljava/lang/String;)V

    .line 406
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GTALK_AVATAR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 409
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    return-void
.end method

.method private processPresencePacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 246
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    .line 247
    .local v0, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v1

    .line 248
    .local v1, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, user:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/utils/XmppUtils;->isGroupChat(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v1, v3, :cond_0

    .line 257
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->isCurrentlyLoadingVCard(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    invoke-direct {p0, v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->checkAvatarUpdates(Lorg/jivesoftware/smack/packet/Presence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeFromLoadingList(Ljava/lang/String;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mCurrentlyLoadingList:Ljava/util/Map;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mCurrentlyLoadingList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private validateAvatar([B)Z
    .locals 4
    .parameter "data"

    .prologue
    const/16 v3, 0x60

    const/4 v1, 0x0

    .line 215
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, avatar:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addToNotificationMap(Ljava/lang/String;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mAvatarChangedNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-void
.end method

.method public getStoredAvatarHashForContact(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "contact"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 347
    if-nez p1, :cond_0

    .line 348
    const-string v0, "GTalkService"

    const-string v1, "getStoredAvatarHashForContact: null contact!"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_0
    return-object v5

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mAvatarHashSelectionArgs:[Ljava/lang/String;

    aput-object p1, v0, v1

    .line 354
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mAvatarUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->AVATAR_HASH_PROJECTION:[Ljava/lang/String;

    const-string v3, "contact=?"

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mAvatarHashSelectionArgs:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 360
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 362
    .local v7, hash:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 364
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 368
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    move-object v5, v7

    .line 374
    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 371
    :cond_2
    const-string v0, "getStoredAvatarHashForContact"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)V
    .locals 2
    .parameter "context"
    .parameter "connectionContext"

    .prologue
    .line 100
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mResolver:Landroid/content/ContentResolver;

    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->getAvatarUri(J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mAvatarUri:Landroid/net/Uri;

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mAvatarHashSelectionArgs:[Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mCurrentlyLoadingList:Ljava/util/Map;

    .line 106
    return-void
.end method

.method initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .parameter

    .prologue
    .line 117
    if-eqz p1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 127
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mBatchPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-nez v1, :cond_1

    .line 128
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/BatchPresence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mBatchPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mBatchPresenceFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 134
    :cond_2
    return-void
.end method

.method public loadAvatarForUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "user"
    .parameter "avatarHash"

    .prologue
    .line 336
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v0, vcardLoader:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardLoader;->sendLoadRequest()V

    .line 338
    return-void
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 235
    instance-of v3, p1, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v3, :cond_1

    .line 236
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->processPresencePacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 243
    :cond_0
    return-void

    .line 237
    :cond_1
    instance-of v3, p1, Lorg/jivesoftware/smack/packet/BatchPresence;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 238
    check-cast v0, Lorg/jivesoftware/smack/packet/BatchPresence;

    .line 239
    .local v0, batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getPresenceStanzaList()Ljava/util/ArrayList;

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

    check-cast v2, Lorg/jivesoftware/smack/packet/Presence;

    .line 240
    .local v2, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->processPresencePacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method public storeAvatarData(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5
    .parameter "contact"
    .parameter "data"
    .parameter "hash"

    .prologue
    .line 379
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 380
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "contact"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v3, "data"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 382
    const-string v3, "hash"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v0

    .line 393
    .local v0, accountId:J
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->getAvatarUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 395
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mAvatarChangedNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 396
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->notifyAvatarChanged(Ljava/lang/String;J)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyRosterChanged()Z

    goto :goto_0
.end method

.method public uploadAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .parameter "avatar"
    .parameter "fullJid"

    .prologue
    const/16 v5, 0x60

    const/4 v4, 0x0

    .line 159
    if-nez p1, :cond_0

    .line 161
    const/4 v4, 0x0

    check-cast v4, [B

    invoke-virtual {p0, v4, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->uploadAvatar([BLjava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 165
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 167
    .local v0, height:I
    if-gt v3, v5, :cond_1

    if-le v0, v5, :cond_2

    .line 170
    :cond_1
    if-le v3, v0, :cond_3

    .line 171
    div-int/lit8 v2, v3, 0x60

    .line 176
    .local v2, scale:I
    :goto_1
    div-int/2addr v3, v2

    .line 177
    div-int/2addr v0, v2

    .line 180
    invoke-static {p1, v4, v4, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 183
    .end local v2           #scale:I
    :cond_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v1, os:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x4b

    invoke-virtual {p1, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 185
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->uploadAvatar([BLjava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v1           #os:Ljava/io/ByteArrayOutputStream;
    :cond_3
    div-int/lit8 v2, v0, 0x60

    .restart local v2       #scale:I
    goto :goto_1
.end method

.method public uploadAvatar([BLjava/lang/String;)V
    .locals 2
    .parameter "avatarData"
    .parameter "fullJid"

    .prologue
    .line 226
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardUploader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardUploader;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$1;)V

    .line 227
    .local v0, vcard:Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardUploader;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr$VCardUploader;->uploadToServer([BLjava/lang/String;)V

    .line 228
    return-void
.end method

.method public uploadAvatarFromDb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "user"
    .parameter "fullJid"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 191
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->mAvatarUri:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v5

    const-string v3, "contact=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 198
    .local v7, rawData:[B
    if-eqz v6, :cond_1

    .line 200
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 204
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_1
    if-eqz v7, :cond_2

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->validateAvatar([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    :cond_2
    invoke-virtual {p0, v7, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/VCardMgr;->uploadAvatar([BLjava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 204
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 210
    :cond_3
    const-string v0, "GTalkService"

    const-string v1, "uploadAvatarFromDb: avatar data invalid"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
