.class final Lcom/htc/app/AppLaunchObserver$NotificationRunnable;
.super Ljava/lang/Object;
.source "AppLaunchObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/AppLaunchObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationRunnable"
.end annotation


# instance fields
.field private mStat:Lcom/android/internal/os/HtcAppUsageStats;

.field final synthetic this$0:Lcom/htc/app/AppLaunchObserver;


# direct methods
.method public constructor <init>(Lcom/htc/app/AppLaunchObserver;Lcom/android/internal/os/HtcAppUsageStats;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/AppLaunchObserver$NotificationRunnable;->this$0:Lcom/htc/app/AppLaunchObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/app/AppLaunchObserver$NotificationRunnable;->mStat:Lcom/android/internal/os/HtcAppUsageStats;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/app/AppLaunchObserver$NotificationRunnable;->this$0:Lcom/htc/app/AppLaunchObserver;

    iget-object v1, p0, Lcom/htc/app/AppLaunchObserver$NotificationRunnable;->mStat:Lcom/android/internal/os/HtcAppUsageStats;

    invoke-virtual {v0, v1}, Lcom/htc/app/AppLaunchObserver;->onAppLaunch(Lcom/android/internal/os/HtcAppUsageStats;)V

    return-void
.end method
