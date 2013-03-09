.class Lcom/htc/Sync3DWidget/Sync1x1Widget$1$1;
.super Ljava/lang/Object;
.source "Sync1x1Widget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Sync3DWidget/Sync1x1Widget$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/Sync3DWidget/Sync1x1Widget$1;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/htc/Sync3DWidget/Sync1x1Widget$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$1$1;->this$1:Lcom/htc/Sync3DWidget/Sync1x1Widget$1;

    iput p2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$1$1;->val$which:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChangedCalled with event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$1$1;->val$which:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$1$1;->this$1:Lcom/htc/Sync3DWidget/Sync1x1Widget$1;

    iget-object v0, v0, Lcom/htc/Sync3DWidget/Sync1x1Widget$1;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #calls: Lcom/htc/Sync3DWidget/Sync1x1Widget;->determineUpdateStatus()V
    invoke-static {v0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$100(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V

    .line 68
    return-void
.end method
