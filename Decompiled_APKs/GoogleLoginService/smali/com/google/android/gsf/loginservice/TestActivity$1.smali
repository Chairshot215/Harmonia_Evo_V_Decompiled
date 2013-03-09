.class Lcom/google/android/gsf/loginservice/TestActivity$1;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/loginservice/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/loginservice/TestActivity;

.field final synthetic val$icicle:Landroid/os/Bundle;

.field final synthetic val$runner:Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/loginservice/TestActivity;Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->this$0:Lcom/google/android/gsf/loginservice/TestActivity;

    iput-object p2, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->val$runner:Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;

    iput-object p3, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->val$icicle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 113
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->val$runner:Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;

    if-eqz v2, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, res:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->val$runner:Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->this$0:Lcom/google/android/gsf/loginservice/TestActivity;

    iget-object v4, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->val$icicle:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;->runInBackground(Lcom/google/android/gsf/loginservice/TestActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    .end local v0           #res:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v0       #res:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 118
    .local v1, t:Ljava/lang/Throwable;
    goto :goto_0
.end method
