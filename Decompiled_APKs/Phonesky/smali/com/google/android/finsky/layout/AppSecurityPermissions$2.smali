.class Lcom/google/android/finsky/layout/AppSecurityPermissions$2;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions;->setNormalPermissionsVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

.field final synthetic val$scrollTarget:I

.field final synthetic val$scroller:Lcom/google/android/finsky/layout/ObservableScrollView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Lcom/google/android/finsky/layout/ObservableScrollView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$2;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    iput-object p2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$2;->val$scroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    iput p3, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$2;->val$scrollTarget:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$2;->val$scroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$2;->val$scrollTarget:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/ObservableScrollView;->smoothScrollTo(II)V

    .line 204
    return-void
.end method
