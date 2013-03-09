.class Lcom/htc/idlescreen/base/IdleState$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "IdleState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/IdleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/IdleState;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/IdleState;)V
    .locals 1
    .parameter

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState$FormatChangeObserver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    .line 1338
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1339
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x2

    .line 1342
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState$FormatChangeObserver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/IdleState;->access$400(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 1343
    iget-object v0, p0, Lcom/htc/idlescreen/base/IdleState$FormatChangeObserver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/IdleState;->access$400(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 1344
    return-void
.end method
