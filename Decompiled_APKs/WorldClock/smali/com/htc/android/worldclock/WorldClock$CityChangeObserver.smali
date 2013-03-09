.class Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;
.super Landroid/database/ContentObserver;
.source "WorldClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/WorldClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClock;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/WorldClock;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    .line 1073
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1074
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1075
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 1079
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1080
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    #getter for: Lcom/htc/android/worldclock/WorldClock;->mStopped:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/WorldClock;->access$500(Lcom/htc/android/worldclock/WorldClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/WorldClock;->mCityChanged:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/WorldClock;->access$602(Lcom/htc/android/worldclock/WorldClock;Z)Z

    .line 1089
    :goto_0
    return-void

    .line 1084
    :cond_0
    const-string v0, "onCityChange +"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget-object v0, v0, Lcom/htc/android/worldclock/WorldClock;->mWorldClockAdapter:Lcom/htc/android/worldclock/WorldClock$WorldClockAdapter;

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$CityChangeObserver;->this$0:Lcom/htc/android/worldclock/WorldClock;

    const/16 v1, 0x6f

    const/16 v2, 0x1f4

    #calls: Lcom/htc/android/worldclock/WorldClock;->sendNonUIMessage(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/worldclock/WorldClock;->access$1300(Lcom/htc/android/worldclock/WorldClock;II)V

    .line 1088
    :cond_1
    const-string v0, "onCityChange -"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
