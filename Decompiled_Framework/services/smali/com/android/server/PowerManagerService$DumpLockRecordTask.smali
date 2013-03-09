.class Lcom/android/server/PowerManagerService$DumpLockRecordTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DumpLockRecordTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PowerManagerService$DumpLockRecordTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$DumpLockRecordTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/PowerManagerService$DumpLockRecordTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLockRecordList:Lcom/android/server/PowerManagerService$LockRecordList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockRecordList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$LockRecordList;->dump()V

    iget-object v0, p0, Lcom/android/server/PowerManagerService$DumpLockRecordTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDumpLockRecordHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
