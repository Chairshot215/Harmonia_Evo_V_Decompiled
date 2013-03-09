.class Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;
.super Ljava/lang/Thread;
.source "UpdaterAlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/ui/UpdaterAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetFOTAStatusThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFOTAStatus:Z

.field final synthetic this$0:Lcom/android/updater/ui/UpdaterAlertActivity;


# direct methods
.method public constructor <init>(Lcom/android/updater/ui/UpdaterAlertActivity;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "FOTAStatus"

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;->this$0:Lcom/android/updater/ui/UpdaterAlertActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1337
    iput-object p2, p0, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;->mContext:Landroid/content/Context;

    .line 1338
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;->mFOTAStatus:Z

    .line 1339
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/updater/ui/UpdaterAlertActivity$SetFOTAStatusThread;->mFOTAStatus:Z

    invoke-static {v0, v1}, Lcom/android/updater/util/UpdaterUtil;->setFOTAStatus(Landroid/content/Context;Z)V

    .line 1344
    return-void
.end method
