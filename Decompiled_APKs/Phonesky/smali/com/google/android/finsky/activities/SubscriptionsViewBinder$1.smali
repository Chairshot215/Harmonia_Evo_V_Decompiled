.class Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;
.super Ljava/lang/Object;
.source "SubscriptionsViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->cancelSubscription(Lcom/google/android/finsky/api/model/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/RevokeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/RevokeResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    #getter for: Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->access$000(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070149

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 219
    check-cast p1, Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;->onResponse(Lcom/google/android/finsky/remoting/protos/RevokeResponse;)V

    return-void
.end method
