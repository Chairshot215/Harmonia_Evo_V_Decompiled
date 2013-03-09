.class Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;
.super Ljava/lang/Object;
.source "ContentStoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/ContentStoreCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "actionTask"
.end annotation


# instance fields
.field public action:I

.field public id:J

.field public listener:Lcom/htc/laputa/engine/util/CmdBundleListener;

.field public taskId:I

.field final synthetic this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;


# direct methods
.method private constructor <init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;->this$0:Lcom/htc/laputa/engine/util/ContentStoreCmd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;Lcom/htc/laputa/engine/util/ContentStoreCmd$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/htc/laputa/engine/util/ContentStoreCmd$actionTask;-><init>(Lcom/htc/laputa/engine/util/ContentStoreCmd;)V

    return-void
.end method
