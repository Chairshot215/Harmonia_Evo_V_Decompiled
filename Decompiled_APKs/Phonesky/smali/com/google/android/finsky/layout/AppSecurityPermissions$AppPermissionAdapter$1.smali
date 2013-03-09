.class Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getPermissionView(Landroid/view/ViewGroup;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

.field final synthetic val$detailsEntry:Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;->this$1:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;->val$detailsEntry:Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;->this$1:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    iget-object v0, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    #getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-static {v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$700(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;->val$detailsEntry:Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    iget-object v1, v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->headerText:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;->val$detailsEntry:Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    iget-object v2, v2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->detailedDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->showInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method
