.class public Lcom/google/android/gm/ConversationInfo;
.super Ljava/lang/Object;
.source "ConversationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final INVALID_CONVERSATION_INFO:Lcom/google/android/gm/ConversationInfo;

.field static final sUrlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mConversationId:J

.field private final mLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalMessageId:J

.field private mMaxMessageId:J

.field private final mServerMessageId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/ConversationInfo;-><init>(J)V

    sput-object v0, Lcom/google/android/gm/ConversationInfo;->INVALID_CONVERSATION_INFO:Lcom/google/android/gm/ConversationInfo;

    .line 52
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/gm/ConversationInfo;->sUrlMatcher:Landroid/content/UriMatcher;

    .line 54
    sget-object v0, Lcom/google/android/gm/ConversationInfo;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "account/*/conversationId/*/maxServerMessageId/*/labels/*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcom/google/android/gm/ConversationInfo;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "account/*/label/*/conversationId/*/maxServerMessageId/*/labels/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    new-instance v0, Lcom/google/android/gm/ConversationInfo$1;

    invoke-direct {v0}, Lcom/google/android/gm/ConversationInfo$1;-><init>()V

    sput-object v0, Lcom/google/android/gm/ConversationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "conversationId"

    .prologue
    const-wide/16 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    .line 75
    iput-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    .line 76
    iput-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    .line 77
    iput-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    .line 79
    return-void
.end method

.method public constructor <init>(JJJJLjava/util/Map;)V
    .locals 0
    .parameter "conversationId"
    .parameter "localMessageId"
    .parameter "serverMessageId"
    .parameter "maxMessageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p9, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    .line 63
    iput-wide p3, p0, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    .line 64
    iput-wide p5, p0, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    .line 65
    iput-object p9, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    .line 66
    iput-wide p7, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    .line 67
    return-void
.end method

.method public constructor <init>(JJLjava/util/Map;)V
    .locals 10
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const-wide/16 v3, 0x0

    .line 70
    move-object v0, p0

    move-wide v1, p1

    move-wide v5, v3

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gm/ConversationInfo;-><init>(JJJJLjava/util/Map;)V

    .line 71
    return-void
.end method

.method public static forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getMaxServerMessageId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getLabels()Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    goto :goto_0
.end method

.method public static forIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gm/ConversationInfo;
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x7

    const/4 v3, 0x5

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, action:Ljava/lang/String;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 104
    .local v7, data:Landroid/net/Uri;
    if-nez v7, :cond_1

    .line 125
    .end local v7           #data:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 111
    .restart local v7       #data:Landroid/net/Uri;
    :cond_1
    sget-object v1, Lcom/google/android/gm/ConversationInfo;->sUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, v7}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 112
    .local v8, match:I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    .line 117
    .local v9, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_2

    .line 118
    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    const/4 v1, 0x3

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    goto :goto_0

    .line 121
    :cond_2
    new-instance v0, Lcom/google/android/gm/ConversationInfo;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/16 v5, 0x9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ConversationInfo;-><init>(JJLjava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    monitor-enter p0

    .line 209
    if-ne p1, p0, :cond_0

    .line 210
    :try_start_0
    monitor-exit p0

    .line 218
    :goto_0
    return v2

    .line 213
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 214
    :cond_1
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 217
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gm/ConversationInfo;

    move-object v1, v0

    .line 218
    .local v1, other:Lcom/google/android/gm/ConversationInfo;
    iget-wide v4, p0, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    iget-wide v6, v1, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    iget-wide v6, v1, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    iget-wide v6, v1, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    iget-wide v6, v1, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 223
    .end local v1           #other:Lcom/google/android/gm/ConversationInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #other:Lcom/google/android/gm/ConversationInfo;
    :cond_3
    move v2, v3

    .line 218
    goto :goto_1
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    return-wide v0
.end method

.method public declared-synchronized getLabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalMessageId()J
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    return-wide v0
.end method

.method public getMaxMessageId()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    return-wide v0
.end method

.method public getServerMessageId()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 228
    monitor-enter p0

    .line 229
    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized isImportant()Z
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->isImportant(Ljava/util/Map;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpened()Z
    .locals 2

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    const-string v1, "^o"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateLabel(Lcom/google/android/gm/provider/Label;Z)V
    .locals 2
    .parameter "label"
    .parameter "added"

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, canonicalname:Ljava/lang/String;
    const-string v1, "^^important"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const-string v0, "^io_im"

    .line 250
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 251
    iget-object v1, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :goto_1
    monitor-exit p0

    return-void

    .line 244
    :cond_1
    :try_start_1
    const-string v1, "^^unimportant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const-string v0, "^io_im"

    .line 247
    if-nez p2, :cond_2

    const/4 p2, 0x1

    :goto_2
    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 238
    .end local v0           #canonicalname:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateMaxMessageId(J)V
    .locals 0
    .parameter "maxMessageId"

    .prologue
    .line 261
    iput-wide p1, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    .line 262
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mConversationId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mLocalMessageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mServerMessageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-wide v0, p0, Lcom/google/android/gm/ConversationInfo;->mMaxMessageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationInfo;->mLabels:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gm/provider/LabelManager;->serialize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
