.class Lcom/htc/Sync3DWidget/Sync1x1Widget$1;
.super Ljava/lang/Object;
.source "Sync1x1Widget.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Sync3DWidget/Sync1x1Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;


# direct methods
.method constructor <init>(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$1;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 63
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$1;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #getter for: Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$200(Lcom/htc/Sync3DWidget/Sync1x1Widget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    new-instance v1, Lcom/htc/Sync3DWidget/Sync1x1Widget$1$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/Sync3DWidget/Sync1x1Widget$1$1;-><init>(Lcom/htc/Sync3DWidget/Sync1x1Widget$1;I)V

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    .line 71
    :cond_1
    return-void
.end method
