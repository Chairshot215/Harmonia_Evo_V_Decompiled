.class Lcom/htc/laputa/engine/util/ContentStoreCmd$10;
.super Ljava/lang/Object;
.source "ContentStoreCmd.java"

# interfaces
.implements Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/ContentStoreCmd;->notifyEngineStoreAppStart()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;


# direct methods
.method constructor <init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$10;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetReceive(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "errCode"
    .parameter "taskId"
    .parameter "retBndl"

    .prologue
    .line 547
    return-void
.end method
