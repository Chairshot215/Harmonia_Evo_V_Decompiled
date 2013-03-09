.class public Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;
.super Ljava/lang/Object;
.source "NotificationFormatter.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# static fields
.field private static final MAX_HISTORY_AGE:J = 0xea60L

.field private static final MAX_HISTORY_SIZE:I = 0x1


# instance fields
.field private final mNotificationHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->mNotificationHistory:Ljava/util/LinkedList;

    .line 42
    return-void
.end method

.method private addToHistory(Landroid/app/Notification;)V
    .locals 2
    .parameter "notification"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->mNotificationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->mNotificationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->mNotificationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 163
    :cond_0
    return-void
.end method

.method private extractNotification(Landroid/view/accessibility/AccessibilityEvent;)Landroid/app/Notification;
    .locals 2
    .parameter "event"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    .line 92
    .local v0, parcelable:Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/app/Notification;

    if-nez v1, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 96
    .end local v0           #parcelable:Landroid/os/Parcelable;
    :goto_0
    return-object v0

    .restart local v0       #parcelable:Landroid/os/Parcelable;
    :cond_0
    check-cast v0, Landroid/app/Notification;

    goto :goto_0
.end method

.method private getTypeText(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 228
    iget v0, p2, Landroid/app/Notification;->icon:I

    .line 229
    .local v0, icon:I
    invoke-static {p1, v0}, Lcom/google/android/marvin/talkback/NotificationType;->getNotificationTypeFromIcon(Landroid/content/Context;I)Lcom/google/android/marvin/talkback/NotificationType;

    move-result-object v1

    .line 231
    .local v1, type:Lcom/google/android/marvin/talkback/NotificationType;
    if-nez v1, :cond_0

    .line 232
    const/4 v2, 0x0

    .line 235
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/NotificationType;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private declared-synchronized isRecent(Landroid/app/Notification;)Z
    .locals 3
    .parameter "notification"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->removeFromHistory(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v0

    .line 112
    .local v0, foundInHistory:Landroid/app/Notification;
    if-eqz v0, :cond_0

    .line 113
    iget-wide v1, v0, Landroid/app/Notification;->when:J

    iput-wide v1, p1, Landroid/app/Notification;->when:J

    .line 118
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->addToHistory(Landroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 115
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/app/Notification;->when:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    .end local v0           #foundInHistory:Landroid/app/Notification;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 120
    .restart local v0       #foundInHistory:Landroid/app/Notification;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private notificationsAreEqual(Landroid/app/Notification;Landroid/app/Notification;)Z
    .locals 5
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v3, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v2

    .line 177
    :cond_1
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 178
    .local v0, firstView:Landroid/widget/RemoteViews;
    iget-object v1, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 180
    .local v1, secondView:Landroid/widget/RemoteViews;
    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->remoteViewsAreEqual(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private remoteViewsAreEqual(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 7
    .parameter "firstView"
    .parameter "secondView"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 194
    if-ne p1, p2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v4

    .line 198
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v4, v5

    .line 199
    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, firstPackage:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, secondPackage:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 206
    goto :goto_0

    .line 209
    :cond_4
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    .line 210
    .local v0, firstLayoutId:I
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    .line 212
    .local v2, secondLayoutId:I
    if-eq v0, v2, :cond_0

    move v4, v5

    .line 213
    goto :goto_0
.end method

.method private removeFromHistory(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 8
    .parameter "notification"

    .prologue
    .line 130
    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->mNotificationHistory:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 132
    .local v2, historyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/Notification;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 148
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 133
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    .line 134
    .local v3, recentNotification:Landroid/app/Notification;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Landroid/app/Notification;->when:J

    sub-long v0, v4, v6

    .line 137
    .local v0, age:J
    const-wide/32 v4, 0xea60

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->notificationsAreEqual(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 7
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->extractNotification(Landroid/view/accessibility/AccessibilityEvent;)Landroid/app/Notification;

    move-result-object v2

    .line 59
    .local v2, notification:Landroid/app/Notification;
    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v4

    .line 63
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->isRecent(Landroid/app/Notification;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 67
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-direct {p0, p2, v2}, Lcom/google/android/marvin/talkback/formatter/NotificationFormatter;->getTypeText(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 70
    .local v3, typeText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 71
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-static {v0, v6}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    :cond_2
    invoke-static {p1}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 76
    .local v1, eventText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 77
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v0, v6}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    move v4, v5

    .line 80
    goto :goto_0
.end method
