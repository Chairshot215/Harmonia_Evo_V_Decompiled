.class final Lcom/htc/laputa/engine/util/Service$1;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/Service;->GetEngineStatueA(Lcom/htc/laputa/engine/util/CmdListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/htc/laputa/engine/util/CmdListener;

.field final synthetic val$svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;


# direct methods
.method constructor <init>(Lcom/htc/laputa/engine/util/CmdListener;Lcom/htc/laputa/engine/util/Service$Adapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/htc/laputa/engine/util/Service$1;->val$listener:Lcom/htc/laputa/engine/util/CmdListener;

    iput-object p2, p0, Lcom/htc/laputa/engine/util/Service$1;->val$svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetReceive(IILandroid/os/Bundle;)V
    .locals 3
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"

    .prologue
    .line 726
    const-string v1, "4"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 727
    .local v0, status:I
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$1;->val$listener:Lcom/htc/laputa/engine/util/CmdListener;

    invoke-interface {v1, v0, p2}, Lcom/htc/laputa/engine/util/CmdListener;->notifyComplete(II)V

    .line 728
    iget-object v1, p0, Lcom/htc/laputa/engine/util/Service$1;->val$svcAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;

    invoke-virtual {v1}, Lcom/htc/laputa/engine/util/Service$Adapter;->releaseResource()V

    .line 729
    return-void
.end method
