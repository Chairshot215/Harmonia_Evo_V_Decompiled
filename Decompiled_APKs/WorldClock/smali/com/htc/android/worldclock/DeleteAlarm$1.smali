.class Lcom/htc/android/worldclock/DeleteAlarm$1;
.super Ljava/lang/Object;
.source "DeleteAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeleteAlarm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeleteAlarm;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeleteAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteAlarm$1;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm$1;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm$1;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    iget-object v0, v0, Lcom/htc/android/worldclock/DeleteAlarm;->mDeletedIndex:[Z

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    new-instance v0, Lcom/htc/android/worldclock/DeleteAlarm$1$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/DeleteAlarm$1$1;-><init>(Lcom/htc/android/worldclock/DeleteAlarm$1;)V

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeleteAlarm$1$1;->start()V

    .line 105
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm$1;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/DeleteAlarm;->setResult(I)V

    .line 106
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm$1;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeleteAlarm;->finish()V

    goto :goto_0
.end method
