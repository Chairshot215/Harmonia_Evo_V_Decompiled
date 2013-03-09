.class Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog$1;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog$1;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog$1;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;->dismiss()V

    .line 278
    return-void
.end method
