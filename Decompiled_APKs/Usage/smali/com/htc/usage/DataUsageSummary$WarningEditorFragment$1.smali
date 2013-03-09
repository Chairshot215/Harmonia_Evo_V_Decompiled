.class Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;

.field final synthetic val$bytesPicker:Lcom/htc/usage/widget/NumberPicker;

.field final synthetic val$editor:Lcom/htc/usage/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/htc/usage/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;Lcom/htc/usage/widget/NumberPicker;Lcom/htc/usage/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;->this$0:Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;

    iput-object p2, p0, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Lcom/htc/usage/widget/NumberPicker;

    iput-object p3, p0, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/htc/usage/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1937
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Lcom/htc/usage/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/htc/usage/widget/NumberPicker;->clearFocus()V

    .line 1939
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Lcom/htc/usage/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/htc/usage/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x100000

    mul-long v0, v2, v4

    .line 1940
    .local v0, bytes:J
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/htc/usage/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/htc/usage/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1941
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/htc/usage/DataUsageSummary;

    const/4 v3, 0x0

    #calls: Lcom/htc/usage/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/htc/usage/DataUsageSummary;->access$2100(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 1942
    return-void
.end method
