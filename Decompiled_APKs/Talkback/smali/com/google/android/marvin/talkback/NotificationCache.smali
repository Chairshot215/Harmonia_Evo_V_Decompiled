.class Lcom/google/android/marvin/talkback/NotificationCache;
.super Ljava/lang/Object;
.source "NotificationCache.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTypeToMessagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/marvin/talkback/NotificationType;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/NotificationCache;->mTypeToMessagesMap:Ljava/util/HashMap;

    .line 52
    iput-object p1, p0, Lcom/google/android/marvin/talkback/NotificationCache;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private addNotification(Lcom/google/android/marvin/talkback/NotificationType;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "type"
    .parameter "text"

    .prologue
    .line 88
    if-nez p2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/google/android/marvin/talkback/NotificationCache;->mTypeToMessagesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 94
    .local v0, messages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/CharSequence;>;"
    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #messages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/CharSequence;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    .restart local v0       #messages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/google/android/marvin/talkback/NotificationCache;->mTypeToMessagesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v2

    .line 63
    .local v2, parcelable:Landroid/os/Parcelable;
    instance-of v5, v2, Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v2

    .line 67
    check-cast v1, Landroid/app/Notification;

    .line 68
    .local v1, notification:Landroid/app/Notification;
    iget v0, v1, Landroid/app/Notification;->icon:I

    .line 69
    .local v0, icon:I
    iget-object v5, p0, Lcom/google/android/marvin/talkback/NotificationCache;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/google/android/marvin/talkback/NotificationType;->getNotificationTypeFromIcon(Landroid/content/Context;I)Lcom/google/android/marvin/talkback/NotificationType;

    move-result-object v4

    .line 72
    .local v4, type:Lcom/google/android/marvin/talkback/NotificationType;
    if-eqz v4, :cond_0

    .line 76
    iget-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 78
    .local v3, text:Ljava/lang/CharSequence;
    invoke-direct {p0, v4, v3}, Lcom/google/android/marvin/talkback/NotificationCache;->addNotification(Lcom/google/android/marvin/talkback/NotificationType;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/marvin/talkback/NotificationCache;->mTypeToMessagesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 107
    return-void
.end method

.method public getFormattedSummary()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/android/marvin/talkback/NotificationCache;->mTypeToMessagesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 115
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    return-object v2

    .line 116
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 117
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/marvin/talkback/NotificationType;Ljava/util/Set<Ljava/lang/CharSequence;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    .line 118
    .local v0, count:I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/marvin/talkback/NotificationType;

    invoke-virtual {v4}, Lcom/google/android/marvin/talkback/NotificationType;->getValue()I

    move-result v3

    .line 120
    .local v3, type:I
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    iget-object v6, p0, Lcom/google/android/marvin/talkback/NotificationCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v2, v4}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    if-le v0, v8, :cond_1

    .line 124
    const/16 v4, 0x73

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_1
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
