.class Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$5;
.super Ljava/lang/Object;
.source "SocialNetworkSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$5;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$5;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    invoke-static {}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->access$100()I

    move-result v1

    #calls: Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->removeAccountInAccountManager(I)V
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->access$200(Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;I)V

    .line 771
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity$5;->this$0:Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;

    invoke-static {}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SocialNetworkSetupActivity;->logoutSocialNetwork(I)V

    .line 772
    return-void
.end method
