.class Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2$2;
.super Ljava/lang/Object;
.source "LocationConsentVzwActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2$2;->this$1:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2;

    iput-boolean p2, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2$2;->val$enable:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2$2;->this$1:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2;

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity$2$2;->val$enable:Z

    #calls: Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->set_GPS_Satellites_enable(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;->access$300(Lcom/htc/android/htcsetupwizard/activity/LocationConsentVzwActivity;Z)V

    .line 173
    return-void
.end method
