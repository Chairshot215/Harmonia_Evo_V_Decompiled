.class Lcom/htc/android/worldclock/DeleteAlarm$1$1;
.super Ljava/lang/Thread;
.source "DeleteAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeleteAlarm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/DeleteAlarm$1;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeleteAlarm$1;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteAlarm$1$1;->this$1:Lcom/htc/android/worldclock/DeleteAlarm$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 85
    .local v0, aId:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/htc/android/worldclock/DeleteAlarm$1$1;->this$1:Lcom/htc/android/worldclock/DeleteAlarm$1;

    iget-object v4, v4, Lcom/htc/android/worldclock/DeleteAlarm$1;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    iget-object v4, v4, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 87
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/worldclock/AlarmItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/android/worldclock/DeleteAlarm$1$1;->this$1:Lcom/htc/android/worldclock/DeleteAlarm$1;

    iget-object v4, v4, Lcom/htc/android/worldclock/DeleteAlarm$1;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    iget-object v4, v4, Lcom/htc/android/worldclock/DeleteAlarm;->mDeletedIndex:[Z

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 88
    iget-object v4, p0, Lcom/htc/android/worldclock/DeleteAlarm$1$1;->this$1:Lcom/htc/android/worldclock/DeleteAlarm$1;

    iget-object v4, v4, Lcom/htc/android/worldclock/DeleteAlarm$1;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    iget-object v4, v4, Lcom/htc/android/worldclock/DeleteAlarm;->mDeletedIndex:[Z

    aget-boolean v4, v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 90
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/worldclock/AlarmItem;

    iget v4, v4, Lcom/htc/android/worldclock/AlarmItem;->aId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 97
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/htc/android/worldclock/DeleteAlarm$1$1;->this$1:Lcom/htc/android/worldclock/DeleteAlarm$1;

    iget-object v5, v4, Lcom/htc/android/worldclock/DeleteAlarm$1;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4}, Lcom/htc/android/worldclock/Alarms;->deleteAlarm(Landroid/content/Context;I)I

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    :cond_2
    iget-object v4, p0, Lcom/htc/android/worldclock/DeleteAlarm$1$1;->this$1:Lcom/htc/android/worldclock/DeleteAlarm$1;

    iget-object v4, v4, Lcom/htc/android/worldclock/DeleteAlarm$1;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    invoke-static {v4}, Lcom/htc/android/worldclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 102
    return-void
.end method
