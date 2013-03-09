.class Lcom/android/commands/monkey/Monkey$ActivityController;
.super Landroid/app/IActivityController$Stub;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/Monkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/monkey/Monkey;


# direct methods
.method private constructor <init>(Lcom/android/commands/monkey/Monkey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;)V

    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    // activityResuming("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #calls: Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z
    invoke-static {v2, p1}, Lcom/android/commands/monkey/Monkey;->access$000(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #getter for: Lcom/android/commands/monkey/Monkey;->mVerbose:I
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->access$100(Lcom/android/commands/monkey/Monkey;)I

    move-result v2

    if-lez v2, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    // "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string v2, "Allowing"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " resume of package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "Rejecting"

    goto :goto_1
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #calls: Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z
    invoke-static {v2, p2}, Lcom/android/commands/monkey/Monkey;->access$000(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #getter for: Lcom/android/commands/monkey/Monkey;->mVerbose:I
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->access$100(Lcom/android/commands/monkey/Monkey;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    // "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string v2, "Allowing"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " start of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_0
    sput-object p2, Lcom/android/commands/monkey/Monkey;->currentPackage:Ljava/lang/String;

    sput-object p1, Lcom/android/commands/monkey/Monkey;->currentIntent:Landroid/content/Intent;

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "Rejecting"

    goto :goto_1
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// CRASH: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Short Msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Long Msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Build Label: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Build Changelist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// Build Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Landroid/os/Build;->TIME:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "// "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, "\n// "

    invoke-virtual {p7, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #getter for: Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->access$200(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #getter for: Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->access$300(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #getter for: Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z
    invoke-static {v4}, Lcom/android/commands/monkey/Monkey;->access$200(Lcom/android/commands/monkey/Monkey;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v5, 0x1

    #setter for: Lcom/android/commands/monkey/Monkey;->mAbort:Z
    invoke-static {v4, v5}, Lcom/android/commands/monkey/Monkey;->access$402(Lcom/android/commands/monkey/Monkey;Z)Z

    :cond_1
    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #getter for: Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z
    invoke-static {v4}, Lcom/android/commands/monkey/Monkey;->access$300(Lcom/android/commands/monkey/Monkey;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v5, 0x1

    #setter for: Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z
    invoke-static {v4, v5}, Lcom/android/commands/monkey/Monkey;->access$502(Lcom/android/commands/monkey/Monkey;Z)Z

    iget-object v4, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #setter for: Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/android/commands/monkey/Monkey;->access$602(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #getter for: Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->access$700(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_0
    move v2, v1

    :cond_3
    return v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// NOT RESPONDING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    #setter for: Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$802(Lcom/android/commands/monkey/Monkey;Z)Z

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    #setter for: Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$902(Lcom/android/commands/monkey/Monkey;Z)Z

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    #setter for: Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$1002(Lcom/android/commands/monkey/Monkey;Z)Z

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #getter for: Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z
    invoke-static {v3}, Lcom/android/commands/monkey/Monkey;->access$300(Lcom/android/commands/monkey/Monkey;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    #setter for: Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$1102(Lcom/android/commands/monkey/Monkey;Z)Z

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #setter for: Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/commands/monkey/Monkey;->access$602(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #getter for: Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->access$1200(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    const/4 v4, 0x1

    #setter for: Lcom/android/commands/monkey/Monkey;->mAbort:Z
    invoke-static {v3, v4}, Lcom/android/commands/monkey/Monkey;->access$402(Lcom/android/commands/monkey/Monkey;Z)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey$ActivityController;->this$0:Lcom/android/commands/monkey/Monkey;

    #getter for: Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z
    invoke-static {v2}, Lcom/android/commands/monkey/Monkey;->access$700(Lcom/android/commands/monkey/Monkey;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
