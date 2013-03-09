.class Lcom/google/android/talk/SelfStatusCursor$1;
.super Ljava/lang/Object;
.source "SelfStatusCursor.java"

# interfaces
.implements Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/SelfStatusCursor;->setOnAvatarRunnable(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SelfStatusCursor;

.field final synthetic val$update:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SelfStatusCursor;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/talk/SelfStatusCursor$1;->this$0:Lcom/google/android/talk/SelfStatusCursor;

    iput-object p2, p0, Lcom/google/android/talk/SelfStatusCursor$1;->val$update:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/talk/SelfStatusCursor$1;->this$0:Lcom/google/android/talk/SelfStatusCursor;

    #setter for: Lcom/google/android/talk/SelfStatusCursor;->mAvatarData:Lcom/google/android/talk/DatabaseUtils$AvatarData;
    invoke-static {v0, p1}, Lcom/google/android/talk/SelfStatusCursor;->access$002(Lcom/google/android/talk/SelfStatusCursor;Lcom/google/android/talk/DatabaseUtils$AvatarData;)Lcom/google/android/talk/DatabaseUtils$AvatarData;

    .line 55
    iget-object v0, p0, Lcom/google/android/talk/SelfStatusCursor$1;->this$0:Lcom/google/android/talk/SelfStatusCursor;

    #getter for: Lcom/google/android/talk/SelfStatusCursor;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/SelfStatusCursor;->access$100(Lcom/google/android/talk/SelfStatusCursor;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/SelfStatusCursor$1;->val$update:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
