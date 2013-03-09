.class Lcom/m0narx/tweaks/RosieHideApps$4;
.super Ljava/lang/Object;
.source "RosieHideApps.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/RosieHideApps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/widget/HtcAdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/RosieHideApps;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/RosieHideApps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/RosieHideApps$4;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$4;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    iget-object v0, v0, Lcom/m0narx/tweaks/RosieHideApps;->mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$4;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    iget-object v0, v0, Lcom/m0narx/tweaks/RosieHideApps;->mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->isChecked:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$4;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    iget-object v0, v0, Lcom/m0narx/tweaks/RosieHideApps;->mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    invoke-virtual {v0}, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->notifyDataSetChanged()V

    .line 108
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$4;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    iget-object v0, v0, Lcom/m0narx/tweaks/RosieHideApps;->mAdapter:Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;

    iget-object v0, v0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->isChecked:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
