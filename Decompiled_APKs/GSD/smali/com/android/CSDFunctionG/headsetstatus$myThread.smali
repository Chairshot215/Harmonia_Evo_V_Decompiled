.class Lcom/android/CSDFunctionG/headsetstatus$myThread;
.super Ljava/lang/Thread;
.source "headsetstatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/headsetstatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/headsetstatus;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/headsetstatus;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/CSDFunctionG/headsetstatus$myThread;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "hststatustest"

    const-string v1, "...Play RAW file (Thread)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/CSDFunctionG/headsetstatus$myThread;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/headsetstatus;->PlayWave2()V

    .line 310
    return-void
.end method
