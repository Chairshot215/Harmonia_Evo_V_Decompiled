.class Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$1;
.super Ljava/lang/Object;
.source "CollectDiagnosticsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 128
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 129
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    #calls: Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->toggleCIQ(Z)V
    invoke-static {v1, v2}, Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;->access$000(Lcom/htc/android/htcsetupwizard/activity/CollectDiagnosticsActivity;Z)V

    .line 130
    return-void
.end method
