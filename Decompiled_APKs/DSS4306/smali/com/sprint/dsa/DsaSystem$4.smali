.class Lcom/sprint/dsa/DsaSystem$4;
.super Ljava/lang/Thread;
.source "DsaSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaSystem;->initSystem(Lcom/sprint/dsa/DsaClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaSystem;

.field private final synthetic val$runInUIThread:Ljava/lang/Runnable;

.field private final synthetic val$uiThreadCallback:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaSystem;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaSystem$4;->this$0:Lcom/sprint/dsa/DsaSystem;

    iput-object p2, p0, Lcom/sprint/dsa/DsaSystem$4;->val$uiThreadCallback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sprint/dsa/DsaSystem$4;->val$runInUIThread:Ljava/lang/Runnable;

    .line 133
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sprint/dsa/DsaSystem$4;->this$0:Lcom/sprint/dsa/DsaSystem;

    #calls: Lcom/sprint/dsa/DsaSystem;->_doInBackgroundPost()V
    invoke-static {v0}, Lcom/sprint/dsa/DsaSystem;->access$3(Lcom/sprint/dsa/DsaSystem;)V

    .line 137
    iget-object v0, p0, Lcom/sprint/dsa/DsaSystem$4;->val$uiThreadCallback:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprint/dsa/DsaSystem$4;->val$runInUIThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method
