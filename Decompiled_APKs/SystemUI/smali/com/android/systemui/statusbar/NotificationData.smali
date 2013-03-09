.class public Lcom/android/systemui/statusbar/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationData$Entry;
    }
.end annotation


# instance fields
.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationData$1;-><init>(Lcom/android/systemui/statusbar/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntryCmp:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/StatusBarIconView;)I
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>()V

    iput-object p1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    iput-object p2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iput-object p3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    iput-object p4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    iput-object p5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    iput-object p6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v1

    return v1
.end method

.method public add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntryCmp:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public hasClearableItems()Z
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v2}, Lcom/android/internal/statusbar/StatusBarNotification;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
