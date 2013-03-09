.class public Lcom/htc/music/util/HdmiPlugReceiver;
.super Ljava/lang/Object;
.source "HdmiPlugReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field private static final BIT_HDMI_AUDIO:I = 0x1000

.field private static final BIT_HDMI_OUT:I = 0x800

.field private static final HDMI_PLUGIN_STATE:I = 0x5

.field private static final PLUGIN:Ljava/lang/String; = "PLUG-IN"

.field protected static final TAG:Ljava/lang/String; = "[HdmiPlugReceiver]"

.field private static final UNPLUG:Ljava/lang/String; = "UNPLUG"


# instance fields
.field private final mAudioHdmiHandler:Landroid/os/Handler;

.field protected mCallback:Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;

.field protected mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInitInstance:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPreState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mCallback:Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;

    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/HdmiPlugReceiver$1;-><init>(Lcom/htc/music/util/HdmiPlugReceiver;)V

    iput-object v0, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/util/HdmiPlugReceiver$2;

    invoke-direct {v0, p0}, Lcom/htc/music/util/HdmiPlugReceiver$2;-><init>(Lcom/htc/music/util/HdmiPlugReceiver;)V

    iput-object v0, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mAudioHdmiHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mPreState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mInitInstance:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/util/HdmiPlugReceiver;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mPreState:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/util/HdmiPlugReceiver;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mPreState:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/util/HdmiPlugReceiver;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isHDMIConnected()Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isHdmiSupported()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v4, "display"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IDisplayService;->IsHDMIConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[HdmiPlugReceiver]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IsHDMIConnected][exception]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public deInitInstance()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isHdmiSupported()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mInitInstance:Z

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mInitInstance:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v5, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mCallback:Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[HdmiPlugReceiver]"

    const-string v3, "Unregister HdmiPlugReceiver failed..."

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initInstance(Landroid/content/Context;Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isHdmiSupported()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mInitInstance:Z

    if-ne v2, v3, :cond_2

    const-string v1, "[HdmiPlugReceiver]"

    const-string v3, "already init instance..."

    invoke-static {v1, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mCallback:Lcom/htc/music/util/HdmiPlugReceiver$IHdmiPlugReceiver;

    iget-object v3, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mAudioHdmiHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/music/util/HdmiPlugReceiver;->mInitInstance:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[HdmiPlugReceiver]"

    const-string v3, "Register HdmiPlugReceiver failed..."

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
