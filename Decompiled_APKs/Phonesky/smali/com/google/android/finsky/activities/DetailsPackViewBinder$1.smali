.class Lcom/google/android/finsky/activities/DetailsPackViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsPackViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsPackViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    #getter for: Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->retryLoadItems()V

    .line 133
    return-void
.end method
