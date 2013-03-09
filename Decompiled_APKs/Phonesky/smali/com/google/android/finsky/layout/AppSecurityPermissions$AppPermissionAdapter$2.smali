.class Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getTogglerView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

.field final synthetic val$expander:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;->this$1:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;->val$expander:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;->this$1:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    iget-object v1, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;->this$1:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    iget-object v0, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #calls: Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z
    invoke-static {v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$900(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    #setter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I
    invoke-static {v1, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$802(Lcom/google/android/finsky/layout/AppSecurityPermissions;I)I

    .line 573
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;->this$1:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;->val$expander:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->configureExpander(Landroid/widget/TextView;)V

    .line 574
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;->this$1:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    iget-object v0, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #calls: Lcom/google/android/finsky/layout/AppSecurityPermissions;->setNormalPermissionsVisibility()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$1000(Lcom/google/android/finsky/layout/AppSecurityPermissions;)V

    .line 575
    return-void

    .line 571
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
