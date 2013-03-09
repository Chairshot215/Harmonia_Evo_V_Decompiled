.class Lcom/htc/android/worldclock/DeskClock$2$1;
.super Ljava/lang/Thread;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeskClock$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/DeskClock$2;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeskClock$2;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$2$1;->this$1:Lcom/htc/android/worldclock/DeskClock$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$2$1;->this$1:Lcom/htc/android/worldclock/DeskClock$2;

    iget-object v0, v0, Lcom/htc/android/worldclock/DeskClock$2;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/worldclock/WorldClockTabControl;->mDimmed:Z

    .line 276
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$2$1;->this$1:Lcom/htc/android/worldclock/DeskClock$2;

    iget-object v0, v0, Lcom/htc/android/worldclock/DeskClock$2;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/WorldClockTabControl;->initScreenOrientation()V

    .line 277
    return-void
.end method
