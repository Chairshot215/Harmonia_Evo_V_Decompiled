.class Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;
.super Ljava/lang/Thread;
.source "CSEngineReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/csengine/receiver/CSEngineReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPreferenceThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/csengine/receiver/CSEngineReceiver;


# direct methods
.method constructor <init>(Lcom/htc/csengine/receiver/CSEngineReceiver;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;->this$0:Lcom/htc/csengine/receiver/CSEngineReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/csengine/util/CSEnginePreference;->setDeviceProfileFlag(Landroid/content/Context;Z)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.csengine.csEngineService.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, intentEngine:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/csengine/receiver/CSEngineReceiver$SetPreferenceThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    return-void
.end method
