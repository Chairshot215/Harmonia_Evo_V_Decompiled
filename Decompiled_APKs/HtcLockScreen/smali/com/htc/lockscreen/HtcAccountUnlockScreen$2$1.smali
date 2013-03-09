.class Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;
.super Ljava/lang/Object;
.source "HtcAccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;->this$1:Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2$1;->this$1:Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;

    iget-object v0, v0, Lcom/htc/lockscreen/HtcAccountUnlockScreen$2;->this$0:Lcom/htc/lockscreen/HtcAccountUnlockScreen;

    #calls: Lcom/htc/lockscreen/HtcAccountUnlockScreen;->getProgressDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/htc/lockscreen/HtcAccountUnlockScreen;->access$600(Lcom/htc/lockscreen/HtcAccountUnlockScreen;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 333
    return-void
.end method
