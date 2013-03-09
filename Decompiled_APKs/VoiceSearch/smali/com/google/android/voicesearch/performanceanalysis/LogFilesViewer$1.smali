.class Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$1;
.super Ljava/lang/Object;
.source "LogFilesViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;

    const-class v3, Lcom/google/android/voicesearch/performanceanalysis/LogTextViewer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_filename_key"

    iget-object v3, p0, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;

    #getter for: Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->access$000(Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/performanceanalysis/LogFilesViewer;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
