.class Lcom/htc/android/worldclock/AlarmClock$1;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmClock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmClock;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmClock$1;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, ai:Lcom/htc/android/worldclock/AlarmItem;
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmClock$1;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget-object v5, v5, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/android/worldclock/AlarmItem;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    iget v1, v2, Lcom/htc/android/worldclock/AlarmItem;->aId:I

    .line 141
    .local v1, aId:I
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmClock$1;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    const-class v6, Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "alarm_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmClock$1;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/htc/android/worldclock/AlarmClock;->startActivityForResult(Landroid/content/Intent;I)V

    .line 144
    .end local v1           #aId:I
    .end local v4           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v3

    .line 135
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
