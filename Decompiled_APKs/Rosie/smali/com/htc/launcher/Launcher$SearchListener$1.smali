.class Lcom/htc/launcher/Launcher$SearchListener$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher$SearchListener;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/Launcher$SearchListener;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher$SearchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2752
    iput-object p1, p0, Lcom/htc/launcher/Launcher$SearchListener$1;->this$1:Lcom/htc/launcher/Launcher$SearchListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2756
    iget-object v2, p0, Lcom/htc/launcher/Launcher$SearchListener$1;->this$1:Lcom/htc/launcher/Launcher$SearchListener;

    iget-object v2, v2, Lcom/htc/launcher/Launcher$SearchListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Lcom/htc/launcher/AllAppsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/AllAppsGridView;

    .line 2757
    .local v0, gridView:Lcom/htc/launcher/AllAppsGridView;
    iget-object v2, p0, Lcom/htc/launcher/Launcher$SearchListener$1;->this$1:Lcom/htc/launcher/Launcher$SearchListener;

    iget-object v2, v2, Lcom/htc/launcher/Launcher$SearchListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mAllAppsView:Lcom/htc/launcher/AllAppsView;

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Lcom/htc/launcher/AllAppsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/AllAppsListView;

    .line 2758
    .local v1, listView:Lcom/htc/launcher/AllAppsListView;
    invoke-virtual {v0, v4}, Lcom/htc/launcher/AllAppsGridView;->setSelection(I)V

    .line 2759
    invoke-virtual {v1, v4}, Lcom/htc/launcher/AllAppsListView;->setSelection(I)V

    .line 2760
    return-void
.end method
