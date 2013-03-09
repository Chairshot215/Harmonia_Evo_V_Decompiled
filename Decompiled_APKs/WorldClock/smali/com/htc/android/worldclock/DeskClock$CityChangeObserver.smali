.class Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;
.super Landroid/database/ContentObserver;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/DeskClock;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 1987
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;->this$0:Lcom/htc/android/worldclock/DeskClock;

    .line 1988
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1989
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1990
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 1994
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1995
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mStopped:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/DeskClock;->access$000(Lcom/htc/android/worldclock/DeskClock;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1996
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;->this$0:Lcom/htc/android/worldclock/DeskClock;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/worldclock/DeskClock;->mCityChanged:Z
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/DeskClock;->access$3602(Lcom/htc/android/worldclock/DeskClock;Z)Z

    .line 2003
    :goto_0
    return-void

    .line 1999
    :cond_0
    const-string v1, "CityChangeObserver , onChange"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 2000
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2001
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1f5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2002
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$CityChangeObserver;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/worldclock/DeskClock;->access$3700(Lcom/htc/android/worldclock/DeskClock;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
