.class public Lcom/google/android/gm/provider/LabelManager;
.super Ljava/lang/Object;
.source "LabelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/LabelManager$LabelFactory;,
        Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;
    }
.end annotation


# static fields
.field private static final FORCED_INCLUDED_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORCED_NON_SYNCED_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORCED_SYNCED_NO_NOTIFY_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final SORTED_USER_MEANINGFUL_SYSTEM_LABELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAsyncLabelFetchHandler:Landroid/os/Handler;

.field private static final sCachedLabels:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 31
    const-string v0, "^i"

    const-string v1, "^iim"

    const-string v2, "^t"

    const-string v3, "^io_im"

    const-string v4, "^b"

    const-string v5, "^f"

    const-string v6, "^^out"

    const-string v7, "^r"

    const-string v8, "^all"

    const-string v9, "^s"

    const-string v10, "^k"

    invoke-static/range {v0 .. v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->SORTED_USER_MEANINGFUL_SYSTEM_LABELS:Ljava/util/List;

    .line 51
    const-string v0, "^^out"

    const-string v1, "^r"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_INCLUDED_LABELS:Ljava/util/Set;

    .line 58
    const-string v0, "^f"

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;

    .line 68
    const-string v0, "^^out"

    const-string v1, "^r"

    const-string v2, "^f"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_SYNCED_NO_NOTIFY_LABELS:Ljava/util/Set;

    .line 80
    const-string v0, "^s"

    const-string v1, "^b"

    const-string v2, "^all"

    const-string v3, "^k"

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_NON_SYNCED_LABELS:Ljava/util/Set;

    .line 110
    const-string v0, "\\^\\*\\*\\^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 378
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->sAsyncLabelFetchHandler:Landroid/os/Handler;

    .line 391
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/LabelManager;->sCachedLabels:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    return-void
.end method

.method public static areLabelsSynchronized(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 350
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getStatusUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 351
    .local v1, statusQueryUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 352
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/gm/provider/Gmail;->STATUS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 355
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 356
    .local v8, labelsSynchronized:Z
    if-eqz v6, :cond_1

    .line 358
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 361
    .local v9, status:I
    and-int/lit8 v2, v9, 0x20

    if-eqz v2, :cond_2

    move v7, v10

    .line 365
    .local v7, labelsStateInitialized:Z
    :goto_0
    if-eqz v7, :cond_3

    and-int/lit8 v2, v9, 0x10

    if-eqz v2, :cond_3

    move v8, v10

    .line 369
    .end local v7           #labelsStateInitialized:Z
    .end local v9           #status:I
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_1
    return v8

    .restart local v9       #status:I
    :cond_2
    move v7, v11

    .line 361
    goto :goto_0

    .restart local v7       #labelsStateInitialized:Z
    :cond_3
    move v8, v11

    .line 365
    goto :goto_1

    .line 369
    .end local v7           #labelsStateInitialized:Z
    .end local v9           #status:I
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static declared-synchronized getAsyncLabelHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 380
    const-class v2, Lcom/google/android/gm/provider/LabelManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/google/android/gm/provider/LabelManager;->sAsyncLabelFetchHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 382
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "getAsyncLabel"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 386
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gm/provider/LabelManager;->sAsyncLabelFetchHandler:Landroid/os/Handler;

    .line 388
    :cond_0
    sget-object v1, Lcom/google/android/gm/provider/LabelManager;->sAsyncLabelFetchHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getForcedIncludedLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_INCLUDED_LABELS:Ljava/util/Set;

    return-object v0
.end method

.method public static getForcedIncludedOrPartialLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;

    return-object v0
.end method

.method public static getForcedNonSyncedLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_NON_SYNCED_LABELS:Ljava/util/Set;

    return-object v0
.end method

.method public static getForcedSyncedNoNotifyLabels()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/gm/provider/LabelManager;->FORCED_SYNCED_NO_NOTIFY_LABELS:Ljava/util/Set;

    return-object v0
.end method

.method public static getFreshLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "canonicalName"

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    return-object v0
.end method

.method public static getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "canonicalName"

    .prologue
    .line 269
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    return-object v0
.end method

.method public static getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gm/provider/Label;
    .locals 10
    .parameter "context"
    .parameter "account"
    .parameter "canonicalName"
    .parameter "useCache"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, accountLabelKey:Ljava/lang/String;
    const/4 v1, 0x0

    .line 286
    .local v1, label:Lcom/google/android/gm/provider/Label;
    if-eqz p3, :cond_0

    .line 287
    sget-object v5, Lcom/google/android/gm/provider/LabelManager;->sCachedLabels:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    check-cast v1, Lcom/google/android/gm/provider/Label;

    .line 288
    .restart local v1       #label:Lcom/google/android/gm/provider/Label;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 306
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .local v2, label:Lcom/google/android/gm/provider/Label;
    :goto_0
    return-object v2

    .line 293
    .end local v2           #label:Lcom/google/android/gm/provider/Label;
    .restart local v1       #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getLabelsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 294
    .local v3, labelQueryUri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 296
    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 298
    new-instance v4, Lcom/google/android/gm/provider/LabelList;

    invoke-direct {v4, p0, p1, v3, v9}, Lcom/google/android/gm/provider/LabelList;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 300
    .local v4, labels:Lcom/google/android/gm/provider/LabelList;
    invoke-virtual {v4}, Lcom/google/android/gm/provider/LabelList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 301
    invoke-virtual {v4, v8}, Lcom/google/android/gm/provider/LabelList;->get(I)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 302
    sget-object v5, Lcom/google/android/gm/provider/LabelManager;->sCachedLabels:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object v2, v1

    .line 306
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .restart local v2       #label:Lcom/google/android/gm/provider/Label;
    goto :goto_0

    .line 304
    .end local v2           #label:Lcom/google/android/gm/provider/Label;
    .restart local v1       #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    const-string v5, "Gmail.LabelManager"

    const-string v6, "Unable to get label %s for account %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    aput-object p1, v7, v9

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public static getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V
    .locals 8
    .parameter "context"
    .parameter "account"
    .parameter "canonicalName"
    .parameter "useCache"
    .parameter "callback"

    .prologue
    .line 323
    invoke-static {}, Lcom/google/android/gm/provider/LabelManager;->getAsyncLabelHandler()Landroid/os/Handler;

    move-result-object v7

    .line 328
    .local v7, handler:Landroid/os/Handler;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 330
    .local v5, callerHandler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/gm/provider/LabelManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/LabelManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method

.method public static getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;
    .locals 5
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "hiddenLabels"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/google/android/gm/provider/LabelList;"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, canonicalNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getLabelsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 200
    .local v2, uriBuilder:Landroid/net/Uri$Builder;
    if-eqz p3, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 204
    if-eqz p2, :cond_1

    .line 205
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 206
    .local v1, numLabels:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 207
    const-string v4, "canonicalName"

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    .end local v0           #i:I
    .end local v1           #numLabels:I
    :cond_0
    const-string v3, "0"

    goto :goto_0

    .line 211
    :cond_1
    new-instance v3, Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4, p3}, Lcom/google/android/gm/provider/LabelList;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-object v3
.end method

.method public static getRecentLabelList(Landroid/content/Context;Ljava/lang/String;JI)Lcom/google/android/gm/provider/LabelList;
    .locals 5
    .parameter "context"
    .parameter "account"
    .parameter "before"
    .parameter "limit"

    .prologue
    .line 223
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getLabelsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "before"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    int-to-long v3, p4

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 229
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Lcom/google/android/gm/provider/LabelList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/google/android/gm/provider/LabelList;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-object v1
.end method

.method public static getSortedUserMeaningfulSystemLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gm/provider/LabelManager;->SORTED_USER_MEANINGFUL_SYSTEM_LABELS:Ljava/util/List;

    return-object v0
.end method

.method public static parseLabelQueryResult(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .parameter "context"
    .parameter "labelQueryResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    const-string v6, "Gmail.LabelManager"

    const-string v7, "label query result: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 138
    .local v3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    if-eqz p1, :cond_1

    .line 140
    invoke-static {p0}, Lcom/google/android/gm/provider/Label;->getSystemLabelNameMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    .line 143
    .local v5, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    sget-object v6, Lcom/google/android/gm/provider/LabelManager;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, labelStrings:[Ljava/lang/String;
    array-length v4, v2

    .line 145
    .local v4, numLabels:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 146
    aget-object v6, v2, v0

    invoke-static {v6, v5}, Lcom/google/android/gm/provider/Label;->parseJoinedString(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 147
    .local v1, label:Lcom/google/android/gm/provider/Label;
    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0           #i:I
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .end local v2           #labelStrings:[Ljava/lang/String;
    .end local v4           #numLabels:I
    .end local v5           #systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :cond_1
    return-object v3
.end method

.method public static parseLabelQueryResult(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "labelQueryResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parseLabelQueryResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .parameter "account"
    .parameter "labelQueryResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    const-string v5, "Gmail.LabelManager"

    const-string v6, "label query result: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 159
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 160
    .local v3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    if-eqz p1, :cond_1

    .line 161
    sget-object v5, Lcom/google/android/gm/provider/LabelManager;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, labelStrings:[Ljava/lang/String;
    array-length v4, v2

    .line 163
    .local v4, numLabels:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 164
    aget-object v5, v2, v0

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/google/android/gm/provider/Label;->parseJoinedString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 165
    .local v1, label:Lcom/google/android/gm/provider/Label;
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0           #i:I
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .end local v2           #labelStrings:[Ljava/lang/String;
    .end local v4           #numLabels:I
    :cond_1
    return-object v3
.end method

.method public static serialize(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 175
    .local v2, labelCollection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/provider/Label;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/google/android/gm/provider/Label;

    invoke-interface {v2, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gm/provider/Label;

    .line 176
    .local v3, labelList:[Lcom/google/android/gm/provider/Label;
    array-length v4, v3

    .line 177
    .local v4, numLabels:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v5, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 179
    if-lez v0, :cond_0

    .line 180
    const-string v6, "^**^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    aget-object v1, v3, v0

    .line 183
    .local v1, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->serialize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static updateRecentLabels(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, labelTimestampMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 234
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getLabelsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "lastTouched"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 237
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v3, values:Landroid/content/ContentValues;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 239
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 241
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 242
    return-void
.end method
