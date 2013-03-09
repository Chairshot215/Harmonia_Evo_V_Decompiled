.class Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1$1;
.super Ljava/lang/Object;
.source "LocationConsentVzwActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1$1;->this$1:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1$1;->this$1:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->mVzwCheckLocation:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->access$000(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 147
    return-void
.end method
