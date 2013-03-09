.class Lcom/google/android/finsky/layout/AccountSelectorView$1;
.super Ljava/lang/Object;
.source "AccountSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AccountSelectorView;->configure(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AccountSelectorView;

.field final synthetic val$authenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AccountSelectorView;Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/finsky/layout/AccountSelectorView$1;->this$0:Lcom/google/android/finsky/layout/AccountSelectorView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/AccountSelectorView$1;->val$authenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/layout/AccountSelectorView$1;->val$authenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->chooseAccount(Z)V

    .line 53
    return-void
.end method
