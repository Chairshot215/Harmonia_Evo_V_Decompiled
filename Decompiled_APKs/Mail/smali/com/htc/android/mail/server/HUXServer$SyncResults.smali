.class Lcom/htc/android/mail/server/HUXServer$SyncResults;
.super Ljava/lang/Object;
.source "HUXServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/HUXServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncResults"
.end annotation


# instance fields
.field private currentPosition:I

.field private mSyncResults:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Lcom/htc/android/mail/server/Server$SyncResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2042
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2043
    new-instance v0, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    .line 2044
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->currentPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/server/HUXServer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2042
    invoke-direct {p0}, Lcom/htc/android/mail/server/HUXServer$SyncResults;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2106
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->currentPosition:I

    .line 2107
    iget-object v0, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseArray;->clear()V

    .line 2108
    return-void
.end method

.method public getFirstMessageId(J)J
    .locals 3
    .parameter "accountId"

    .prologue
    .line 2072
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/server/Server$SyncResult;

    .line 2073
    .local v0, result:Lcom/htc/android/mail/server/Server$SyncResult;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    .line 2074
    :goto_0
    return-wide v1

    :cond_0
    iget-wide v1, v0, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageId:J

    goto :goto_0
.end method

.method public getUnreadNumber(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 2056
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/server/Server$SyncResult;

    .line 2057
    .local v0, result:Lcom/htc/android/mail/server/Server$SyncResult;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 2058
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    goto :goto_0
.end method

.method public incUnreadNumber(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 2062
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/server/Server$SyncResult;

    .line 2063
    .local v0, result:Lcom/htc/android/mail/server/Server$SyncResult;
    if-nez v0, :cond_0

    .line 2064
    new-instance v0, Lcom/htc/android/mail/server/Server$SyncResult;

    .end local v0           #result:Lcom/htc/android/mail/server/Server$SyncResult;
    invoke-direct {v0}, Lcom/htc/android/mail/server/Server$SyncResult;-><init>()V

    .line 2065
    .restart local v0       #result:Lcom/htc/android/mail/server/Server$SyncResult;
    iput-wide p1, v0, Lcom/htc/android/mail/server/Server$SyncResult;->accountId:J

    .line 2066
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v1, p1, p2, v0}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 2068
    :cond_0
    iget v1, v0, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    .line 2069
    return-void
.end method

.method public setFirstMessageId([Landroid/content/ContentProviderResult;)V
    .locals 5
    .parameter "dbResults"

    .prologue
    .line 2078
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 2088
    :cond_0
    return-void

    .line 2079
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v2

    .line 2080
    .local v2, size:I
    if-eqz v2, :cond_0

    .line 2081
    const/4 v1, 0x0

    .line 2082
    .local v1, result:Lcom/htc/android/mail/server/Server$SyncResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2083
    iget-object v3, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Lcom/htc/android/mail/server/Server$SyncResult;
    check-cast v1, Lcom/htc/android/mail/server/Server$SyncResult;

    .line 2084
    .restart local v1       #result:Lcom/htc/android/mail/server/Server$SyncResult;
    iget v3, v1, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageIdPosition:I

    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 2085
    iget v3, v1, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageIdPosition:I

    aget-object v3, p1, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageId:J

    .line 2082
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setFirstMessageIdPosition(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 2091
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/server/Server$SyncResult;

    .line 2092
    .local v0, result:Lcom/htc/android/mail/server/Server$SyncResult;
    if-nez v0, :cond_0

    .line 2093
    new-instance v0, Lcom/htc/android/mail/server/Server$SyncResult;

    .end local v0           #result:Lcom/htc/android/mail/server/Server$SyncResult;
    invoke-direct {v0}, Lcom/htc/android/mail/server/Server$SyncResult;-><init>()V

    .line 2094
    .restart local v0       #result:Lcom/htc/android/mail/server/Server$SyncResult;
    iput-wide p1, v0, Lcom/htc/android/mail/server/Server$SyncResult;->accountId:J

    .line 2095
    iget-object v1, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v1, p1, p2, v0}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 2098
    :cond_0
    iget v1, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->currentPosition:I

    .line 2100
    iget v1, v0, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageIdPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2101
    iget v1, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->currentPosition:I

    iput v1, v0, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageIdPosition:I

    .line 2103
    :cond_1
    return-void
.end method

.method public toArray()[Lcom/htc/android/mail/server/Server$SyncResult;
    .locals 4

    .prologue
    .line 2047
    iget-object v3, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v2

    .line 2048
    .local v2, size:I
    new-array v1, v2, [Lcom/htc/android/mail/server/Server$SyncResult;

    .line 2049
    .local v1, resultArray:[Lcom/htc/android/mail/server/Server$SyncResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2050
    iget-object v3, p0, Lcom/htc/android/mail/server/HUXServer$SyncResults;->mSyncResults:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/server/Server$SyncResult;

    aput-object v3, v1, v0

    .line 2049
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2052
    :cond_0
    return-object v1
.end method
