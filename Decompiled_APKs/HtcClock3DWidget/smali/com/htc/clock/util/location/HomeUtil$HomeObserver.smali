.class Lcom/htc/clock/util/location/HomeUtil$HomeObserver;
.super Landroid/database/ContentObserver;
.source "HomeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/location/HomeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/location/HomeUtil;


# direct methods
.method public constructor <init>(Lcom/htc/clock/util/location/HomeUtil;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "cr"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/clock/util/location/HomeUtil$HomeObserver;->this$0:Lcom/htc/clock/util/location/HomeUtil;

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 165
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/htc/clock/util/location/HomeUtil$HomeObserver;->this$0:Lcom/htc/clock/util/location/HomeUtil;

    #getter for: Lcom/htc/clock/util/location/HomeUtil;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/clock/util/location/HomeUtil;->access$000(Lcom/htc/clock/util/location/HomeUtil;)Landroid/os/Handler;

    move-result-object v0

    .line 175
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/htc/clock/util/location/HomeUtil$HomeObserver;->this$0:Lcom/htc/clock/util/location/HomeUtil;

    #getter for: Lcom/htc/clock/util/location/HomeUtil;->mUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/clock/util/location/HomeUtil;->access$100(Lcom/htc/clock/util/location/HomeUtil;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    iget-object v1, p0, Lcom/htc/clock/util/location/HomeUtil$HomeObserver;->this$0:Lcom/htc/clock/util/location/HomeUtil;

    #getter for: Lcom/htc/clock/util/location/HomeUtil;->mUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/clock/util/location/HomeUtil;->access$100(Lcom/htc/clock/util/location/HomeUtil;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    :cond_0
    return-void
.end method
