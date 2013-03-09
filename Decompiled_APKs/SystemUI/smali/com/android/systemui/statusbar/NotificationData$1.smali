.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 7

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    iget v4, v1, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    sub-int v2, v3, v4

    if-eqz v2, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v3, v3, Landroid/app/Notification;->when:J

    iget-object v5, v1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v5, v5, Landroid/app/Notification;->when:J

    sub-long/2addr v3, v5

    long-to-int v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
