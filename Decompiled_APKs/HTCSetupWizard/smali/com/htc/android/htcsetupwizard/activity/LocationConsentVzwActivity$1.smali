.class Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;
.super Ljava/lang/Object;
.source "LocationConsentVzwActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 133
    move v0, p2

    .line 134
    .local v0, enable:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00c0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00c2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1$2;

    invoke-direct {v3, p0, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1$2;-><init>(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1$1;

    invoke-direct {v3, p0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->set_GPS_One_enable(Z)V
    invoke-static {v1, v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;Z)V

    goto :goto_0
.end method
