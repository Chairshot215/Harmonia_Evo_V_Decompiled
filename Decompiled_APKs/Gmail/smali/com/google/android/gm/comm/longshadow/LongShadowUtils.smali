.class public Lcom/google/android/gm/comm/longshadow/LongShadowUtils;
.super Ljava/lang/Object;
.source "LongShadowUtils.java"


# static fields
.field private static sGmail:Lcom/google/android/gm/provider/Gmail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComposableMessageId(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;J)J
    .locals 3
    .parameter "gmail"
    .parameter "account"
    .parameter "conversationId"

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail;->getDetachedMessageCursorForConversationId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v0

    .line 88
    .local v0, cursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 96
    :goto_0
    return-wide v1

    .line 94
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 96
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    throw v1
.end method

.method public static declared-synchronized getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;
    .locals 2
    .parameter "resolver"

    .prologue
    .line 27
    const-class v1, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->sGmail:Lcom/google/android/gm/provider/Gmail;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/google/android/gm/provider/Gmail;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/Gmail;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->sGmail:Lcom/google/android/gm/provider/Gmail;

    .line 31
    :cond_0
    sget-object v0, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->sGmail:Lcom/google/android/gm/provider/Gmail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDisplayableLabel(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "label"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, canonicalName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->isUserLabel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->isDisplayableSystemLabel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDisplayableLabels(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, unfilteredLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 63
    .local v0, filteredLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 64
    .local v3, labelList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Label;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 68
    .local v4, numLabels:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 69
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/Label;

    .line 70
    .local v2, label:Lcom/google/android/gm/provider/Label;
    invoke-static {p0, v2}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getDisplayableLabel(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v2           #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    return-object v0
.end method

.method public static isUserLabel(Ljava/lang/String;)Z
    .locals 3
    .parameter "label"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
