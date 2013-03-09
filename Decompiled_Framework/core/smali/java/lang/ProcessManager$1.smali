.class Ljava/lang/ProcessManager$1;
.super Ljava/lang/Thread;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/lang/ProcessManager;


# direct methods
.method constructor <init>(Ljava/lang/ProcessManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/lang/ProcessManager$1;->this$0:Ljava/lang/ProcessManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessManager$1;->this$0:Ljava/lang/ProcessManager;

    #calls: Ljava/lang/ProcessManager;->watchChildren()V
    invoke-static {v0}, Ljava/lang/ProcessManager;->access$000(Ljava/lang/ProcessManager;)V

    return-void
.end method
