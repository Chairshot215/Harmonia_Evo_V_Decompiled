.class Lcom/google/android/finsky/navigationmanager/NavigationManager$5;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    #getter for: Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;
    invoke-static {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->access$000(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    #getter for: Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-static {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->access$100(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$account:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->openItem(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 678
    return-void
.end method
