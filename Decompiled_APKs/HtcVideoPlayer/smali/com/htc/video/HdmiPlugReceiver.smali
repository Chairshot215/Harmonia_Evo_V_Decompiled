.class public Lcom/htc/video/HdmiPlugReceiver;
.super Ljava/lang/Object;
.source "HdmiPlugReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/video/HdmiPlugReceiver$IHdmiPlugReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field private static final BIT_HDMI_AUDIO:I = 0x1000

.field private static final BIT_HDMI_OUT:I = 0x800

.field private static final HDMI_PLUGIN_STATE:I = 0x5

.field private static final PLUGIN:Ljava/lang/String; = "PLUG-IN"

.field protected static final TAG:Ljava/lang/String; = "HTCAlbum"

.field private static final UNPLUG:Ljava/lang/String; = "UNPLUG"


# instance fields
.field private final mAudioHdmiHandler:Landroid/os/Handler;

.field protected mCallback:Lcom/htc/video/HdmiPlugReceiver$IHdmiPlugReceiver;

.field protected mContaner:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPreState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mContaner:Landroid/app/Activity;

    .line 24
    iput-object v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mCallback:Lcom/htc/video/HdmiPlugReceiver$IHdmiPlugReceiver;

    .line 33
    new-instance v0, Lcom/htc/video/HdmiPlugReceiver$1;

    invoke-direct {v0, p0}, Lcom/htc/video/HdmiPlugReceiver$1;-><init>(Lcom/htc/video/HdmiPlugReceiver;)V

    iput-object v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/htc/video/HdmiPlugReceiver$2;

    invoke-direct {v0, p0}, Lcom/htc/video/HdmiPlugReceiver$2;-><init>(Lcom/htc/video/HdmiPlugReceiver;)V

    iput-object v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mAudioHdmiHandler:Landroid/os/Handler;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mPreState:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/video/HdmiPlugReceiver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mPreState:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/video/HdmiPlugReceiver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/htc/video/HdmiPlugReceiver;->mPreState:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/video/HdmiPlugReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public DeInitInstance()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mContaner:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mContaner:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/video/HdmiPlugReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    iput-object v2, p0, Lcom/htc/video/HdmiPlugReceiver;->mContaner:Landroid/app/Activity;

    .line 150
    iput-object v2, p0, Lcom/htc/video/HdmiPlugReceiver;->mCallback:Lcom/htc/video/HdmiPlugReceiver$IHdmiPlugReceiver;

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public InitInstance(Landroid/app/Activity;Lcom/htc/video/HdmiPlugReceiver$IHdmiPlugReceiver;)Z
    .locals 4
    .parameter "container"
    .parameter "callback"

    .prologue
    .line 125
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    .line 129
    :cond_1
    iput-object p1, p0, Lcom/htc/video/HdmiPlugReceiver;->mContaner:Landroid/app/Activity;

    .line 131
    iput-object p2, p0, Lcom/htc/video/HdmiPlugReceiver;->mCallback:Lcom/htc/video/HdmiPlugReceiver$IHdmiPlugReceiver;

    .line 133
    iget-object v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/htc/video/HdmiPlugReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/htc/video/HdmiPlugReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/video/HdmiPlugReceiver;->mAudioHdmiHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 137
    const/4 v0, 0x1

    goto :goto_0
.end method
