.class Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;

.field final synthetic val$cycleDayPicker:Lcom/htc/usage/widget/NumberPicker;

.field final synthetic val$editor:Lcom/htc/usage/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/htc/usage/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;Lcom/htc/usage/widget/NumberPicker;Lcom/htc/usage/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1874
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;->this$0:Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;

    iput-object p2, p0, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Lcom/htc/usage/widget/NumberPicker;

    iput-object p3, p0, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/htc/usage/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1876
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;->val$cycleDayPicker:Lcom/htc/usage/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/htc/usage/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1877
    .local v0, cycleDay:I
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;->val$editor:Lcom/htc/usage/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2, v0}, Lcom/htc/usage/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;I)V

    .line 1878
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;->val$target:Lcom/htc/usage/DataUsageSummary;

    const/4 v2, 0x1

    #calls: Lcom/htc/usage/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v1, v2}, Lcom/htc/usage/DataUsageSummary;->access$2100(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 1879
    return-void
.end method
