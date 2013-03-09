.class Ljava/lang/VMThread;
.super Ljava/lang/Object;
.source "VMThread.java"


# static fields
.field static final STATE_MAP:[Ljava/lang/Thread$State;


# instance fields
.field thread:Ljava/lang/Thread;

.field vmData:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Thread$State;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    aput-object v2, v0, v1

    sput-object v0, Ljava/lang/VMThread;->STATE_MAP:[Ljava/lang/Thread$State;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/VMThread;->thread:Ljava/lang/Thread;

    return-void
.end method

.method static native create(Ljava/lang/Thread;J)V
.end method

.method static native currentThread()Ljava/lang/Thread;
.end method

.method static native interrupted()Z
.end method

.method public static refOnViolate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "android.os.StrictMode"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, p0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Boolean;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v7, "onVmPolicyViolated"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/Throwable;

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const/4 v6, 0x1

    :cond_0
    :goto_0
    return v6

    :catch_0
    move-exception v2

    const/4 v6, 0x0

    goto :goto_0
.end method

.method static native sleep(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method private static violatePolicy(Ljava/lang/String;)V
    .locals 3

    const-string v0, "vmUIThreadSleepEnabled"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called sleep in UI thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UI thread called sleep"

    invoke-static {v0, v1, v2}, Ljava/lang/VMThread;->refOnViolate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static native yield()V
.end method


# virtual methods
.method native getStatus()I
.end method

.method native holdsLock(Ljava/lang/Object;)Z
.end method

.method native interrupt()V
.end method

.method native isInterrupted()Z
.end method

.method native nameChanged(Ljava/lang/String;)V
.end method

.method native setPriority(I)V
.end method

.method start(J)V
    .locals 1

    iget-object v0, p0, Ljava/lang/VMThread;->thread:Ljava/lang/Thread;

    invoke-static {v0, p1, p2}, Ljava/lang/VMThread;->create(Ljava/lang/Thread;J)V

    return-void
.end method
