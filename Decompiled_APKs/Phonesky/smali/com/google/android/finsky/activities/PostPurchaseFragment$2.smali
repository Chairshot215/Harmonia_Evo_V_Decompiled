.class Lcom/google/android/finsky/activities/PostPurchaseFragment$2;
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
    .line 192
    iput-object p1, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PostPurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PostPurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PostPurchaseFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->access$100(Lcom/google/android/finsky/activities/PostPurchaseFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PostPurchaseFragment;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PostPurchaseFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PostPurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PostPurchaseFragment;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->access$200(Lcom/google/android/finsky/activities/PostPurchaseFragment;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/PostPurchaseFragment$2;->this$0:Lcom/google/android/finsky/activities/PostPurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PostPurchaseFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v4}, Lcom/google/android/finsky/activities/PostPurchaseFragment;->access$300(Lcom/google/android/finsky/activities/PostPurchaseFragment;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->openItem(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 198
    return-void
.end method
