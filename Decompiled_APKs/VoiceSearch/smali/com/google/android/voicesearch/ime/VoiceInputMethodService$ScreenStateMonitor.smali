.class Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;
.super Landroid/content/BroadcastReceiver;
.source "VoiceInputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/ime/VoiceInputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateMonitor"
.end annotation


# instance fields
.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mRegistered:Z

.field final synthetic this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V
    .locals 2
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 757
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;->mRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;Lcom/google/android/voicesearch/ime/VoiceInputMethodService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 755
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;-><init>(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 781
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;->this$0:Lcom/google/android/voicesearch/ime/VoiceInputMethodService;

    #calls: Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->backToPreviousIme()V
    invoke-static {v0}, Lcom/google/android/voicesearch/ime/VoiceInputMethodService;->access$400(Lcom/google/android/voicesearch/ime/VoiceInputMethodService;)V

    .line 784
    :cond_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;->mRegistered:Z

    .line 769
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 770
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/VoiceInputMethodService$ScreenStateMonitor;->mRegistered:Z

    .line 775
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 777
    :cond_0
    return-void
.end method
