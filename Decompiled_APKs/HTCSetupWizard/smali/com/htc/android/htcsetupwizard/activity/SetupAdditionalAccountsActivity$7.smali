.class Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$7;
.super Ljava/lang/Object;
.source "SetupAdditionalAccountsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->showVMMSubscribeErrorDialog(Ljava/lang/String;)V
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
    .line 1004
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$7;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$7;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->setResult(I)V

    .line 1008
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$7;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->finish()V

    .line 1009
    return-void
.end method
