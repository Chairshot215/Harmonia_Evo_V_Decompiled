.class Lcom/htc/clock/util/time/TimeCtrl$DbChangeObserver;
.super Landroid/database/ContentObserver;
.source "TimeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/time/TimeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DbChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/time/TimeCtrl;


# direct methods
.method public constructor <init>(Lcom/htc/clock/util/time/TimeCtrl;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "hander"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/clock/util/time/TimeCtrl$DbChangeObserver;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    .line 266
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 267
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x2

    .line 272
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl$DbChangeObserver;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v0, v0, Lcom/htc/clock/util/time/TimeCtrl;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/clock/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 273
    iget-object v0, p0, Lcom/htc/clock/util/time/TimeCtrl$DbChangeObserver;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v0, v0, Lcom/htc/clock/util/time/TimeCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v3, v1, v2}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 274
    return-void
.end method
