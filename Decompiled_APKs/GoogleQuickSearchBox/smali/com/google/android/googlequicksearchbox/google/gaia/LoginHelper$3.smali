.class Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;
.super Ljava/lang/Thread;
.source "LoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getGaiaUberAuthToken(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field final synthetic val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    #getter for: Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->access$400(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 358
    .local v0, token:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    #getter for: Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mUiThread:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->access$600(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3$1;-><init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    return-void

    .line 355
    .end local v0           #token:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;->this$0:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    #getter for: Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->access$400(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    #calls: Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->blockingGetUberAuthToken(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->access$500(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
