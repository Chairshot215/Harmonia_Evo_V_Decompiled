.class Lcom/htc/android/mail/easdp/EASDirectpush$3;
.super Ljava/lang/Object;
.source "EASDirectpush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easdp/EASDirectpush;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easdp/EASDirectpush;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easdp/EASDirectpush;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$3;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 282
    iget-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$3;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v2, v1, Lcom/htc/android/mail/easdp/EASDirectpush;->mRegReceiverLock:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$3;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-boolean v1, v1, Lcom/htc/android/mail/easdp/EASDirectpush;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$3;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    invoke-virtual {v1}, Lcom/htc/android/mail/easdp/EASDirectpush;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/android/mail/easdp/EASDirectpush$3;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    #getter for: Lcom/htc/android/mail/easdp/EASDirectpush;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$200(Lcom/htc/android/mail/easdp/EASDirectpush;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$3;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/android/mail/easdp/EASDirectpush;->mReceiverRegistered:Z

    .line 292
    .end local v0           #mIntentFilter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit v2

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
