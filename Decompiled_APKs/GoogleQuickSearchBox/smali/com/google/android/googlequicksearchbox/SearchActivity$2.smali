.class Lcom/google/android/googlequicksearchbox/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$2;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$2;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #getter for: Lcom/google/android/googlequicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$2;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #getter for: Lcom/google/android/googlequicksearchbox/SearchActivity;->mDelayedInitializeTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$100(Lcom/google/android/googlequicksearchbox/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    const/4 v0, 0x0

    return v0
.end method
