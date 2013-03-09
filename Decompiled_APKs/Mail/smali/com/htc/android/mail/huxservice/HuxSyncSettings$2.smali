.class Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;
.super Ljava/lang/Object;
.source "HuxSyncSettings.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 734
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    #getter for: Lcom/htc/android/mail/huxservice/HuxSyncSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->access$200(Lcom/htc/android/mail/huxservice/HuxSyncSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSyncSettings$2$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings$2$1;-><init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 742
    :cond_1
    return-void
.end method
