.class Lcom/htc/feedback/ReportSettingsActivity$2;
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
    .line 76
    iput-object p1, p0, Lcom/htc/feedback/ReportSettingsActivity$2;->this$0:Lcom/htc/feedback/ReportSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 79
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity$2;->this$0:Lcom/htc/feedback/ReportSettingsActivity;

    const-string v1, "htc_error_report_prefer_network"

    const-string v2, "0"

    #calls: Lcom/htc/feedback/ReportSettingsActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/htc/feedback/ReportSettingsActivity;->access$000(Lcom/htc/feedback/ReportSettingsActivity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    iget-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity$2;->this$0:Lcom/htc/feedback/ReportSettingsActivity;

    iget-object v0, v0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/htc/feedback/ReportSettingsActivity$2;->this$0:Lcom/htc/feedback/ReportSettingsActivity;

    iget-object v0, v0, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/feedback/ReportSettingsActivity$2;->this$0:Lcom/htc/feedback/ReportSettingsActivity;

    iget-object v1, v1, Lcom/htc/feedback/ReportSettingsActivity;->mPreferNetworkPreference:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method
