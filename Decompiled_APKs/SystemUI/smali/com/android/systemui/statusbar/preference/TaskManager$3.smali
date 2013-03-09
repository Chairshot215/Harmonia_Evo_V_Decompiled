.class Lcom/android/systemui/statusbar/preference/TaskManager$3;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/TaskManager;->updateResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/TaskManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/TaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$100()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #calls: Lcom/android/systemui/statusbar/preference/TaskManager;->readTotalMemory()J
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$400(Lcom/android/systemui/statusbar/preference/TaskManager;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$102(J)J

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #calls: Lcom/android/systemui/statusbar/preference/TaskManager;->readFreeMemory()J
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$500(Lcom/android/systemui/statusbar/preference/TaskManager;)J

    move-result-wide v1

    #setter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mFreeMemory:J
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$302(Lcom/android/systemui/statusbar/preference/TaskManager;J)J

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-static {}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$100()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mFreeMemory:J
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$300(Lcom/android/systemui/statusbar/preference/TaskManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mUsedMemory:J
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$202(Lcom/android/systemui/statusbar/preference/TaskManager;J)J

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$600(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/TaskManager$3;->this$0:Lcom/android/systemui/statusbar/preference/TaskManager;

    #getter for: Lcom/android/systemui/statusbar/preference/TaskManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/TaskManager;->access$600(Lcom/android/systemui/statusbar/preference/TaskManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
