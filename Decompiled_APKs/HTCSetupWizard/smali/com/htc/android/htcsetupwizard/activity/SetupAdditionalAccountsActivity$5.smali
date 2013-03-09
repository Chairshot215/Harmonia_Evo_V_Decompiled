.class Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$5;
.super Ljava/lang/Object;
.source "SetupAdditionalAccountsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchGetPINErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$5;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$5;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchGetPINWarningDialog()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$1400(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    .line 987
    return-void
.end method
