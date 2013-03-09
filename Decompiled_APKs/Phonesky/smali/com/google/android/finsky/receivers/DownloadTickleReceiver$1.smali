.class Lcom/google/android/finsky/receivers/DownloadTickleReceiver$1;
.super Ljava/lang/Object;
.source "DownloadTickleReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/DownloadTickleReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/DownloadTickleReceiver;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/finsky/receivers/DownloadTickleReceiver$1;->this$0:Lcom/google/android/finsky/receivers/DownloadTickleReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/DownloadTickleReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/receivers/DownloadTickleReceiver$1;->this$0:Lcom/google/android/finsky/receivers/DownloadTickleReceiver;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/DownloadTickleReceiver$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->finishOnReceive(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->access$000(Lcom/google/android/finsky/receivers/DownloadTickleReceiver;Landroid/content/Intent;)V

    .line 44
    return-void
.end method
