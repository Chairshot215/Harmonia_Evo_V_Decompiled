.class Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;
.super Landroid/os/Handler;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/FeatureManager$SetFeaturesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/FeatureManager$SetFeaturesTask;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;->this$0:Lcom/google/android/talk/FeatureManager$SetFeaturesTask;

    .line 197
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 198
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;->this$0:Lcom/google/android/talk/FeatureManager$SetFeaturesTask;

    #getter for: Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mDoneRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->access$100(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;->this$0:Lcom/google/android/talk/FeatureManager$SetFeaturesTask;

    #getter for: Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mDoneRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->access$100(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 206
    :cond_0
    return-void
.end method
