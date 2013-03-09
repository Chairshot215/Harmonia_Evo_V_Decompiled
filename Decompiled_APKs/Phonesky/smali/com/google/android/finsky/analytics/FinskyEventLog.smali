.class public Lcom/google/android/finsky/analytics/FinskyEventLog;
.super Ljava/lang/Object;
.source "FinskyEventLog.java"


# instance fields
.field private final mEventLogger:Lcom/google/android/play/analytics/EventLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/play/analytics/EventLogger;)V
    .locals 0
    .parameter "eventLogger"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    .line 208
    return-void
.end method

.method public static getCorpusButtonDocId(I)Ljava/lang/String;
    .locals 2
    .parameter "backendId"

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "synthetic-doc-id-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public logClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "currentItemDocId"
    .parameter "currentPageUrl"
    .parameter "destinationPageUrl"
    .parameter "currentListCookie"
    .parameter "currentListUrl"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    const-string v1, "c"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "cidi"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "c"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string v4, "d"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    const/4 v3, 0x6

    const-string v4, "lc"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p4, v2, v3

    const/16 v3, 0x8

    const-string v4, "lu"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object p5, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/analytics/EventLogger;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public logDeepLink(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 5
    .parameter "deepLinkurl"
    .parameter "destinationPageUrl"
    .parameter "isDirectPurchase"
    .parameter "isRedeemGiftCard"
    .parameter "isUnmatched"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    const-string v1, "deepLink"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "c"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "d"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string v4, "isDirectPurchase"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "isRedeemGiftCardLink"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "isUnmatchedUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/analytics/EventLogger;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public logSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "currentPageUrl"
    .parameter "searchUrl"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    const-string v1, "s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "c"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "d"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/analytics/EventLogger;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs logTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tags"
    .parameter "args"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/play/analytics/EventLogger;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public logView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "currentPageUrl"
    .parameter "currentListCookie"
    .parameter "currentListUrl"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/FinskyEventLog;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    const-string v1, "v"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "c"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "lc"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string v4, "lu"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/analytics/EventLogger;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
