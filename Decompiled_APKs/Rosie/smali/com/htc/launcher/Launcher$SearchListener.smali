.class Lcom/htc/launcher/Launcher$SearchListener;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 2734
    iput-object p1, p0, Lcom/htc/launcher/Launcher$SearchListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2734
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$SearchListener;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 2738
    iget-object v2, p0, Lcom/htc/launcher/Launcher$SearchListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->isShowAllProgramSearchBar:Z
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$3000(Lcom/htc/launcher/Launcher;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2764
    :cond_0
    :goto_0
    return-void

    .line 2741
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/Launcher$SearchListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->getKeywords()Ljava/lang/String;

    move-result-object v1

    .line 2745
    .local v1, keyword:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 2747
    .local v0, back2Top:Z
    :goto_1
    iget-object v2, p0, Lcom/htc/launcher/Launcher$SearchListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->search(Ljava/lang/String;)V

    .line 2748
    iget-object v2, p0, Lcom/htc/launcher/Launcher$SearchListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, v2, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/htc/launcher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 2750
    if-eqz v0, :cond_0

    .line 2751
    iget-object v2, p0, Lcom/htc/launcher/Launcher$SearchListener;->this$0:Lcom/htc/launcher/Launcher;

    new-instance v3, Lcom/htc/launcher/Launcher$SearchListener$1;

    invoke-direct {v3, p0}, Lcom/htc/launcher/Launcher$SearchListener$1;-><init>(Lcom/htc/launcher/Launcher$SearchListener;)V

    const-wide/16 v4, 0x0

    #calls: Lcom/htc/launcher/Launcher;->runDelayed(Ljava/lang/Runnable;J)V
    invoke-static {v2, v3, v4, v5}, Lcom/htc/launcher/Launcher;->access$3100(Lcom/htc/launcher/Launcher;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 2745
    .end local v0           #back2Top:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2770
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2776
    return-void
.end method
