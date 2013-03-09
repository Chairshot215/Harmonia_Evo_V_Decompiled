.class Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ThreeLMCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$SettingObserver;->this$0:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    .line 65
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/16 v3, 0x2711

    .line 71
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 72
    const-string v0, "ThreeLMCtrl"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$SettingObserver;->this$0:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->access$000(Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 74
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$SettingObserver;->this$0:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->access$000(Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 75
    return-void
.end method
