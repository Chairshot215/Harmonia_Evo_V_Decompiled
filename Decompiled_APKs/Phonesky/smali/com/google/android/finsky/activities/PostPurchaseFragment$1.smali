.class Lcom/google/android/finsky/activities/PostPurchaseFragment$1;
.super Ljava/lang/Object;
.source "PostPurchaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PostPurchaseFragment;->rebindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PostPurchaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PostPurchaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment$1;->this$0:Lcom/google/android/finsky/activities/PostPurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment$1;->this$0:Lcom/google/android/finsky/activities/PostPurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PostPurchaseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;
    invoke-static {v0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->access$000(Lcom/google/android/finsky/activities/PostPurchaseFragment;)Lcom/google/android/finsky/fragments/PageFragmentHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    .line 181
    return-void
.end method
