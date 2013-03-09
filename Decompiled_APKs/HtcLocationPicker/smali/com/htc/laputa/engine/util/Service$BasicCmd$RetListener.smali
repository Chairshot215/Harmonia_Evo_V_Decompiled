.class Lcom/htc/laputa/engine/util/Service$BasicCmd$RetListener;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/Service$BasicCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/util/Service$BasicCmd;


# direct methods
.method private constructor <init>(Lcom/htc/laputa/engine/util/Service$BasicCmd;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd$RetListener;->this$0:Lcom/htc/laputa/engine/util/Service$BasicCmd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/laputa/engine/util/Service$BasicCmd;Lcom/htc/laputa/engine/util/Service$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/htc/laputa/engine/util/Service$BasicCmd$RetListener;-><init>(Lcom/htc/laputa/engine/util/Service$BasicCmd;)V

    return-void
.end method


# virtual methods
.method public onRetReceive(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/laputa/engine/util/Service$BasicCmd$RetListener;->this$0:Lcom/htc/laputa/engine/util/Service$BasicCmd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/laputa/engine/util/Service$BasicCmd;->onRetReceive(IILandroid/os/Bundle;)V

    .line 506
    return-void
.end method
