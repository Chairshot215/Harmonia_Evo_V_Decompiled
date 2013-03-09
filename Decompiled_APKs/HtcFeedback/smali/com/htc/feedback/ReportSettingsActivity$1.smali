.class Lcom/htc/feedback/ReportSettingsActivity$1;
.super Ljava/lang/Object;
.source "ReportSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/feedback/ReportSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/feedback/ReportSettingsActivity;


# direct methods
.method constructor <init>(Lcom/htc/feedback/ReportSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/feedback/ReportSettingsActivity$1;->this$0:Lcom/htc/feedback/ReportSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 66
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity$1;->this$0:Lcom/htc/feedback/ReportSettingsActivity;

    const-string v1, "send_htc_error_report"

    const-string v2, "0"

    #calls: Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/htc/feedback/ReportSettingsActivity;->access$000(Lcom/htc/feedback/ReportSettingsActivity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity$1;->this$0:Lcom/htc/feedback/ReportSettingsActivity;

    #calls: Lcom/htc/feedback/ReportSettingsActivity;->lockUI()V
    invoke-static {v0}, Lcom/htc/feedback/ReportSettingsActivity;->access$100(Lcom/htc/feedback/ReportSettingsActivity;)V

    .line 73
    return-void

    .line 68
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity$1;->this$0:Lcom/htc/feedback/ReportSettingsActivity;

    const-string v1, "send_htc_error_report"

    const-string v2, "1"

    #calls: Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/htc/feedback/ReportSettingsActivity;->access$000(Lcom/htc/feedback/ReportSettingsActivity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    iget-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity$1;->this$0:Lcom/htc/feedback/ReportSettingsActivity;

    iget-object v0, v0, Lcom/htc/feedback/ReportSettingsActivity;->mErrorReportPreference:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
