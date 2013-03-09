.class public final Lcom/google/android/talk/GmailProviderWrapper;
.super Ljava/lang/Object;
.source "GmailProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/GmailProviderWrapper$1;,
        Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;,
        Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;,
        Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;,
        Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;,
        Lcom/google/android/talk/GmailProviderWrapper$MailCursorObserver;,
        Lcom/google/android/talk/GmailProviderWrapper$MailCursor;,
        Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;
    }
.end annotation


# static fields
.field private static final CONVERSATION_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final sAccountUriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper;->sAccountUriMap:Ljava/util/Map;

    .line 63
    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 204
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    const-string v1, "snippet"

    aput-object v1, v0, v5

    const-string v1, "fromAddress"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "personalLevel"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "labelIds"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numMessages"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "maxMessageId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hasMessagesWithErrors"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "forceAllUnread"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    .line 217
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "messageId"

    aput-object v1, v0, v4

    const-string v1, "conversation"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "snippet"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "fromAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "toAddresses"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "replyToAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dateSentMs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "listInfo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "personalLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "bodyEmbedsExternalResources"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "labelIds"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "joinedAttachmentInfos"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "error"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper;->MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "contentResolver"

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/google/android/talk/GmailProviderWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 242
    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/android/talk/GmailProviderWrapper;->toNonnullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/talk/GmailProviderWrapper;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static declared-synchronized getAccountUriCache(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const-class v2, Lcom/google/android/talk/GmailProviderWrapper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper;->sAccountUriMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 84
    .local v0, uriMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0           #uriMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 86
    .restart local v0       #uriMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper;->sAccountUriMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit v2

    return-object v0

    .line 83
    .end local v0           #uriMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "account"
    .parameter "param"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/android/talk/GmailProviderWrapper;->getAccountUriCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 93
    .local v1, uriMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 94
    .local v0, cachedUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://gmail-ls/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 96
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    return-object v0
.end method

.method private static getConversationsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 105
    const-string v0, "/conversations/"

    invoke-static {p0, v0}, Lcom/google/android/talk/GmailProviderWrapper;->getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getMessageByIdUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "localMessageId"

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/android/talk/GmailProviderWrapper;->getMessagesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getMessagesForConversationUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "conversationId"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/google/android/talk/GmailProviderWrapper;->getConversationsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getMessagesUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 121
    const-string v0, "/messages/"

    invoke-static {p0, v0}, Lcom/google/android/talk/GmailProviderWrapper;->getCachedUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getSelectionArguments(Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;)[Ljava/lang/String;
    .locals 3
    .parameter "becomeActiveNetworkCursor"

    .prologue
    .line 297
    sget-object v0, Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;->NO:Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;

    if-ne v0, p0, :cond_0

    .line 298
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SELECTION_ARGUMENT_DO_NOT_BECOME_ACTIVE_NETWORK_CURSOR"

    aput-object v2, v0, v1

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newMessageLabelIdsSplitter()Landroid/text/TextUtils$StringSplitter;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    return-object v0
.end method

.method private static toNonnullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "source"

    .prologue
    .line 248
    if-nez p0, :cond_0

    .line 249
    const-string p0, ""

    .line 251
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getConversationCursorForCursor(Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;
    .locals 2
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;-><init>(Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/talk/GmailProviderWrapper$1;)V

    return-object v0
.end method

.method public getMessageCursorForConversationId(Ljava/lang/String;J)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    .locals 7
    .parameter "account"
    .parameter "conversationId"

    .prologue
    const/4 v3, 0x0

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/talk/GmailProviderWrapper;->getMessagesForConversationUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 355
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/talk/GmailProviderWrapper;->MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 357
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-direct {v0, p1, v6, v3}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;-><init>(Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/talk/GmailProviderWrapper$1;)V

    return-object v0
.end method

.method public getMessageCursorForMessageId(Ljava/lang/String;J)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    .locals 7
    .parameter "account"
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/talk/GmailProviderWrapper;->getMessageByIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 339
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/talk/GmailProviderWrapper;->MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 340
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-direct {v0, p1, v6, v3}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;-><init>(Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/talk/GmailProviderWrapper$1;)V

    return-object v0
.end method

.method public runQueryForConversations(Ljava/lang/String;Landroid/content/AsyncQueryHandler;ILjava/lang/String;Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;)V
    .locals 8
    .parameter "account"
    .parameter "handler"
    .parameter "token"
    .parameter "query"
    .parameter "becomeActiveNetworkCursor"

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    invoke-static {p5}, Lcom/google/android/talk/GmailProviderWrapper;->getSelectionArguments(Lcom/google/android/talk/GmailProviderWrapper$BecomeActiveNetworkCursor;)[Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/talk/GmailProviderWrapper;->getConversationsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/google/android/talk/GmailProviderWrapper;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    move-object v0, p2

    move v1, p3

    move-object v5, p4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method
