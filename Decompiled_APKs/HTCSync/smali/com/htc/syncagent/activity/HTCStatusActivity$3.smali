.class Lcom/htc/syncagent/activity/HTCStatusActivity$3;
.super Ljava/lang/Object;
.source "HTCStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/syncagent/activity/HTCStatusActivity;->showStatusDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;


# direct methods
.method constructor <init>(Lcom/htc/syncagent/activity/HTCStatusActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$3;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 216
    const-string v0, "FDUI"

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timeout dialog close, status = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    sget v2, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    sput v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 220
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$3;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    invoke-virtual {v0}, Lcom/htc/syncagent/activity/HTCStatusActivity;->finish()V

    .line 221
    return-void
.end method
