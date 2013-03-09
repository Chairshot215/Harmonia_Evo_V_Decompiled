.class Lcom/google/android/finsky/layout/ExplorePanel$3;
.super Ljava/lang/Object;
.source "ExplorePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ExplorePanel;->setupExplorer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ExplorePanel;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ExplorePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/finsky/layout/ExplorePanel$3;->this$0:Lcom/google/android/finsky/layout/ExplorePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/android/finsky/layout/ExplorePanel$3;->this$0:Lcom/google/android/finsky/layout/ExplorePanel;

    #getter for: Lcom/google/android/finsky/layout/ExplorePanel;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ExplorePanel;->access$200(Lcom/google/android/finsky/layout/ExplorePanel;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/ExplorePanel$3;->this$0:Lcom/google/android/finsky/layout/ExplorePanel;

    #getter for: Lcom/google/android/finsky/layout/ExplorePanel;->mDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2}, Lcom/google/android/finsky/layout/ExplorePanel;->access$300(Lcom/google/android/finsky/layout/ExplorePanel;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->createIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/finsky/layout/ExplorePanel$3;->this$0:Lcom/google/android/finsky/layout/ExplorePanel;

    #getter for: Lcom/google/android/finsky/layout/ExplorePanel;->mFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ExplorePanel;->access$200(Lcom/google/android/finsky/layout/ExplorePanel;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method
