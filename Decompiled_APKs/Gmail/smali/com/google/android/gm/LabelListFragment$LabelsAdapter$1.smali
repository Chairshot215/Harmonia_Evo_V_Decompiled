.class Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;
.super Landroid/database/DataSetObserver;
.source "LabelListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LabelListFragment$LabelsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/gm/LabelListFragment$LabelsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;->this$1:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;->this$1:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    #getter for: Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->mData:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->access$200(Lcom/google/android/gm/LabelListFragment$LabelsAdapter;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;->this$1:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    #calls: Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->extractLabelList()V
    invoke-static {v0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->access$300(Lcom/google/android/gm/LabelListFragment$LabelsAdapter;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$LabelsAdapter$1;->this$1:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->notifyDataSetChanged()V

    .line 314
    :cond_0
    return-void
.end method
