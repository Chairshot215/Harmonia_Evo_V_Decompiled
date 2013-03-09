.class public Lcom/google/android/talk/util/ChatList;
.super Ljava/lang/Object;
.source "ChatList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/util/ChatList$Info;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private mActivity:Landroid/app/Activity;

.field private mClosed:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentPosition:I

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/util/ChatList$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mDataMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mQueryOnResume:Z

.field private mRegisteredContentObserver:Z

.field private mSuspendQueries:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "groupchat"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "client_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/util/ChatList;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;JLjava/lang/Runnable;)V
    .locals 2
    .parameter "a"
    .parameter "accountId"
    .parameter "onQueryCompleteCallback"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/google/android/talk/util/ChatList$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/util/ChatList$2;-><init>(Lcom/google/android/talk/util/ChatList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/talk/util/ChatList;->mContentObserver:Landroid/database/ContentObserver;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/util/ChatList;->mDataMap:Ljava/util/HashSet;

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/util/ChatList;->mCurrentPosition:I

    .line 141
    iput-object p1, p0, Lcom/google/android/talk/util/ChatList;->mActivity:Landroid/app/Activity;

    .line 142
    iput-wide p2, p0, Lcom/google/android/talk/util/ChatList;->mAccountId:J

    .line 144
    new-instance v0, Lcom/google/android/talk/util/ChatList$1;

    iget-object v1, p0, Lcom/google/android/talk/util/ChatList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1, p4}, Lcom/google/android/talk/util/ChatList$1;-><init>(Lcom/google/android/talk/util/ChatList;Landroid/content/ContentResolver;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/talk/util/ChatList;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/util/ChatList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/talk/util/ChatList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/util/ChatList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/android/talk/util/ChatList;->mSuspendQueries:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/util/ChatList;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/util/ChatList;->cacheCursorData(Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/util/ChatList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/talk/util/ChatList;->checkContentObserver(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/util/ChatList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/talk/util/ChatList;->requery(Z)V

    return-void
.end method

.method private cacheCursorData(Landroid/database/Cursor;Z)V
    .locals 11
    .parameter "c"
    .parameter "forceClear"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 251
    iget-object v6, p0, Lcom/google/android/talk/util/ChatList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 252
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 253
    :cond_0
    iget-object v6, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object v6, p0, Lcom/google/android/talk/util/ChatList;->mDataMap:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 257
    :cond_1
    if-eqz p1, :cond_6

    .line 258
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 261
    .local v1, cursorIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {p1, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 262
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 264
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    .end local v3           #id:J
    :cond_2
    iget-object v6, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_4

    .line 269
    iget-object v6, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/talk/util/ChatList$Info;

    .line 270
    .local v5, info:Lcom/google/android/talk/util/ChatList$Info;
    #getter for: Lcom/google/android/talk/util/ChatList$Info;->mId:J
    invoke-static {v5}, Lcom/google/android/talk/util/ChatList$Info;->access$500(Lcom/google/android/talk/util/ChatList$Info;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 271
    iget-object v6, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 272
    iget-object v6, p0, Lcom/google/android/talk/util/ChatList;->mDataMap:Ljava/util/HashSet;

    #getter for: Lcom/google/android/talk/util/ChatList$Info;->mId:J
    invoke-static {v5}, Lcom/google/android/talk/util/ChatList$Info;->access$500(Lcom/google/android/talk/util/ChatList$Info;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 268
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 277
    .end local v5           #info:Lcom/google/android/talk/util/ChatList$Info;
    :cond_4
    invoke-interface {p1, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 278
    :cond_5
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 279
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 280
    .restart local v3       #id:J
    iget-object v6, p0, Lcom/google/android/talk/util/ChatList;->mDataMap:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 281
    new-instance v5, Lcom/google/android/talk/util/ChatList$Info;

    invoke-direct {v5, p1, v0}, Lcom/google/android/talk/util/ChatList$Info;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 282
    .restart local v5       #info:Lcom/google/android/talk/util/ChatList$Info;
    iget-object v6, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v6, p0, Lcom/google/android/talk/util/ChatList;->mDataMap:Ljava/util/HashSet;

    #getter for: Lcom/google/android/talk/util/ChatList$Info;->mId:J
    invoke-static {v5}, Lcom/google/android/talk/util/ChatList$Info;->access$500(Lcom/google/android/talk/util/ChatList$Info;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 292
    .end local v1           #cursorIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v2           #i:I
    .end local v3           #id:J
    .end local v5           #info:Lcom/google/android/talk/util/ChatList$Info;
    :cond_6
    return-void
.end method

.method private cancelPreviousQuery()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "cancelPreviousQuery"

    invoke-direct {p0, v0}, Lcom/google/android/talk/util/ChatList;->log(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 70
    return-void
.end method

.method private checkContentObserver(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    iget-boolean v1, p0, Lcom/google/android/talk/util/ChatList;->mRegisteredContentObserver:Z

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/google/android/talk/util/ChatList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/talk/util/ChatList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    iput-boolean v3, p0, Lcom/google/android/talk/util/ChatList;->mRegisteredContentObserver:Z

    .line 90
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/talk/util/ChatList;->mRegisteredContentObserver:Z

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/google/android/talk/util/ChatList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .restart local v0       #cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/talk/util/ChatList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/util/ChatList;->mRegisteredContentObserver:Z

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 209
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method private requery(Z)V
    .locals 2
    .parameter "forceClear"

    .prologue
    .line 97
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "requery"

    invoke-direct {p0, v0}, Lcom/google/android/talk/util/ChatList;->log(Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/util/ChatList;->cancelPreviousQuery()V

    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/talk/util/ChatList;->startQuery(Z)V

    .line 102
    return-void
.end method

.method private startQuery(Z)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 105
    const-string v0, "talk"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "startQuery"

    invoke-direct {p0, v0}, Lcom/google/android/talk/util/ChatList;->log(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/util/ChatList;->cancelPreviousQuery()V

    .line 110
    iget-boolean v0, p0, Lcom/google/android/talk/util/ChatList;->mSuspendQueries:Z

    if-eqz v0, :cond_2

    .line 111
    iput-boolean v1, p0, Lcom/google/android/talk/util/ChatList;->mQueryOnResume:Z

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-wide v2, p0, Lcom/google/android/talk/util/ChatList;->mAccountId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    const-string v2, "gtalk-sort-mode"

    sget-object v3, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_STATUS_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v3}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 123
    const-class v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    aget-object v0, v0, v2

    .line 124
    invoke-static {v0}, Lcom/google/android/talk/loaders/RosterListLoader;->computeSortOrderString(Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)Ljava/lang/String;

    move-result-object v7

    .line 126
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CHAT_CONTACTS:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/talk/util/ChatList;->PROJECTION:[Ljava/lang/String;

    const-string v5, "chats.is_active == 1 and chats.account_id=?"

    new-array v6, v1, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/google/android/talk/util/ChatList;->mAccountId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public changeAccount(J)Z
    .locals 3
    .parameter "accountId"

    .prologue
    const/4 v0, 0x1

    .line 200
    iget-wide v1, p0, Lcom/google/android/talk/util/ChatList;->mAccountId:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 201
    iput-wide p1, p0, Lcom/google/android/talk/util/ChatList;->mAccountId:J

    .line 202
    invoke-direct {p0, v0}, Lcom/google/android/talk/util/ChatList;->requery(Z)V

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeCursor()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/talk/util/ChatList;->cacheCursorData(Landroid/database/Cursor;Z)V

    .line 196
    invoke-direct {p0, v1}, Lcom/google/android/talk/util/ChatList;->checkContentObserver(Landroid/database/Cursor;)V

    .line 197
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/talk/util/ChatList;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/util/ChatList$Info;

    #getter for: Lcom/google/android/talk/util/ChatList$Info;->mAccountId:J
    invoke-static {v0}, Lcom/google/android/talk/util/ChatList$Info;->access$600(Lcom/google/android/talk/util/ChatList$Info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getClientType()I
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/talk/util/ChatList;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/util/ChatList$Info;

    #getter for: Lcom/google/android/talk/util/ChatList$Info;->mClientType:I
    invoke-static {v0}, Lcom/google/android/talk/util/ChatList$Info;->access$800(Lcom/google/android/talk/util/ChatList$Info;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/talk/util/ChatList;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/util/ChatList$Info;

    iget-object v1, p0, Lcom/google/android/talk/util/ChatList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/util/ChatList$Info;->getIntent(Landroid/content/ContentResolver;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/talk/util/ChatList;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/util/ChatList$Info;

    #getter for: Lcom/google/android/talk/util/ChatList$Info;->mNickname:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/talk/util/ChatList$Info;->access$1100(Lcom/google/android/talk/util/ChatList$Info;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/talk/util/ChatList;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/util/ChatList$Info;

    #getter for: Lcom/google/android/talk/util/ChatList$Info;->mType:I
    invoke-static {v0}, Lcom/google/android/talk/util/ChatList$Info;->access$900(Lcom/google/android/talk/util/ChatList$Info;)I

    move-result v0

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/talk/util/ChatList;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/util/ChatList$Info;

    #getter for: Lcom/google/android/talk/util/ChatList$Info;->mUsername:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/talk/util/ChatList$Info;->access$700(Lcom/google/android/talk/util/ChatList$Info;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/google/android/talk/util/ChatList;->mClosed:Z

    return v0
.end method

.method public isGroupChat()Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList;->mData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/talk/util/ChatList;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/util/ChatList$Info;

    #getter for: Lcom/google/android/talk/util/ChatList$Info;->mIsGroupChat:Z
    invoke-static {v0}, Lcom/google/android/talk/util/ChatList$Info;->access$1000(Lcom/google/android/talk/util/ChatList$Info;)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 303
    iput p1, p0, Lcom/google/android/talk/util/ChatList;->mCurrentPosition:I

    .line 304
    return-void
.end method

.method public requery()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/talk/util/ChatList;->requery(Z)V

    .line 94
    return-void
.end method

.method public resumeRequery()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iput-boolean v1, p0, Lcom/google/android/talk/util/ChatList;->mSuspendQueries:Z

    .line 189
    iget-boolean v0, p0, Lcom/google/android/talk/util/ChatList;->mQueryOnResume:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, v1}, Lcom/google/android/talk/util/ChatList;->requery(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method public suspendRequery()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/util/ChatList;->mSuspendQueries:Z

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/util/ChatList;->mQueryOnResume:Z

    .line 185
    return-void
.end method
