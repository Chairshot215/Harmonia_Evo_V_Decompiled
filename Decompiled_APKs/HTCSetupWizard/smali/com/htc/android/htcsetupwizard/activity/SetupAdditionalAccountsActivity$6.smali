.class Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$6;
.super Ljava/lang/Object;
.source "SetupAdditionalAccountsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 977
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$6;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 980
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$6;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchGetPINWarningDialog()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->access$1400(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    .line 981
    return-void
.end method
