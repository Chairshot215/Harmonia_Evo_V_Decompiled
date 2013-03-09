.class public Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncreasingTimeOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/AlarmManagerService$Alarm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 12

    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v6, p2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    sub-long v8, v4, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    sub-long v8, v4, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    const/4 v8, -0x1

    goto :goto_0

    :cond_1
    sub-long v8, v0, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    sub-long v8, v0, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    const/4 v8, -0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    check-cast p2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;->compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    return v0
.end method
