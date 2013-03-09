.class public Lcom/htc/server/SystemCrashChecker;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "SystemCrashChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;
    }
.end annotation


# static fields
.field private static final SYSTEM_CRASH_ENTRY:Ljava/lang/String; = "/data/system/last_crash_msg"

.field private static final TAG:Ljava/lang/String; = "SystemCrashChecker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHtcErrorReportManager:Lcom/android/server/am/HtcErrorReportManager;

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/SystemCrashChecker;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/server/SystemCrashChecker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onFinishBooting()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;

    invoke-direct {v1, p0}, Lcom/htc/server/SystemCrashChecker$CheckSystemCrashRunnable;-><init>(Lcom/htc/server/SystemCrashChecker;)V

    const-string v2, "CheckSystemCrash"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/SystemCrashChecker;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/htc/server/SystemCrashChecker;->mContext:Landroid/content/Context;

    return-void
.end method
