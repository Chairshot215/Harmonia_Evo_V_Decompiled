.class Lcom/google/android/talk/fragments/ChatScreenFragment$2;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1156
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$2$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$2$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$2;)V

    .line 1172
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 1173
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1174
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V

    .line 1180
    monitor-exit v2

    .line 1184
    :goto_0
    return-void

    .line 1182
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1182
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
