.class Lcom/htc/android/mail/easdp/EASDirectpush$1;
.super Ljava/lang/Object;
.source "EASDirectpush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easdp/EASDirectpush;->onCreate()V
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
    .line 103
    iput-object p1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$1;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 105
    const-string v4, "networkaddress.cache.ttl"

    const-string v5, "0"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lcom/htc/android/mail/easdp/EASDirectpush$1;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    #getter for: Lcom/htc/android/mail/easdp/EASDirectpush;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$000(Lcom/htc/android/mail/easdp/EASDirectpush;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/easdp/Common;->setUserAgent(Landroid/content/Context;)V

    .line 108
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 110
    .local v1, mPowerManagerService:Landroid/os/IPowerManager;
    :try_start_0
    invoke-interface {v1}, Landroid/os/IPowerManager;->timeSinceScreenOn()J

    move-result-wide v2

    .line 112
    .local v2, time:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$102(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v2           #time:J
    :goto_1
    return-void

    .line 112
    .restart local v2       #time:J
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 113
    .end local v2           #time:J
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
