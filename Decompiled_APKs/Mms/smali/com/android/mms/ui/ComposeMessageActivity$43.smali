.class Lcom/android/mms/ui/ComposeMessageActivity$43;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 8171
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$43;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8173
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    monitor-enter v1

    .line 8174
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$43;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->_onDestroy()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 8175
    monitor-exit v1

    .line 8176
    return-void

    .line 8175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
