.class Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$2;
.super Ljava/lang/Object;
.source "UninstallSubscriptionsTracker.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->checkAndNotifyActiveSubscriptions(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$2;->this$0:Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

    iput-object p2, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 7

    .prologue
    .line 65
    iget-object v2, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$2;->this$0:Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

    #getter for: Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v2}, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->access$100(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$2;->this$0:Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

    #getter for: Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v2}, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->access$100(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 67
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    .line 68
    .local v1, notifier:Lcom/google/android/finsky/utils/Notifier;
    iget-object v2, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$2;->this$0:Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

    #getter for: Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->access$200(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07010e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$2;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker$2;->this$0:Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

    #getter for: Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;->access$200(Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07010f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/utils/Notifier;->showSubscriptionsWarningMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v0           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v1           #notifier:Lcom/google/android/finsky/utils/Notifier;
    :cond_0
    return-void
.end method
