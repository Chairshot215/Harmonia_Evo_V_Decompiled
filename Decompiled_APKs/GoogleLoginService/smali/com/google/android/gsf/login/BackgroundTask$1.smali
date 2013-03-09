.class Lcom/google/android/gsf/login/BackgroundTask$1;
.super Landroid/os/Handler;
.source "BackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BackgroundTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BackgroundTask;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BackgroundTask;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/gsf/login/BackgroundTask$1;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask$1;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    #calls: Lcom/google/android/gsf/login/BackgroundTask;->onReply(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->access$000(Lcom/google/android/gsf/login/BackgroundTask;Landroid/os/Message;)V

    .line 82
    return-void
.end method
