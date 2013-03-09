.class Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$1;
.super Ljava/lang/Thread;
.source "RlzPingBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$1;->this$0:Lcom/google/android/partnersetup/RlzPingBroadcastReceiver;

    iput-object p2, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzPingBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/partnersetup/RlzPingService;->addAllApplicationInstallEvents(Landroid/content/pm/PackageManager;Landroid/content/ContentResolver;)V

    .line 164
    return-void
.end method
