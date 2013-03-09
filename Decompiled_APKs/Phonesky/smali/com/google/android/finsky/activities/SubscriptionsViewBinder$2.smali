.class Lcom/google/android/finsky/activities/SubscriptionsViewBinder$2;
.super Ljava/lang/Object;
.source "SubscriptionsViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->cancelSubscription(Lcom/google/android/finsky/api/model/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$2;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$2;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    #calls: Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->rebindViews()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->access$100(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$2;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    #getter for: Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->access$200(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07014a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    return-void
.end method
