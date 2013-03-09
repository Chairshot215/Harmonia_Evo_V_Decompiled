.class Lcom/android/settings/HtcCdmaDisclaimerReminder$1;
.super Ljava/lang/Object;
.source "HtcCdmaDisclaimerReminder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HtcCdmaDisclaimerReminder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcCdmaDisclaimerReminder;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcCdmaDisclaimerReminder;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/HtcCdmaDisclaimerReminder$1;->this$0:Lcom/android/settings/HtcCdmaDisclaimerReminder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/HtcCdmaDisclaimerReminder$1;->this$0:Lcom/android/settings/HtcCdmaDisclaimerReminder;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/HtcCdmaDisclaimerReminder;->setResult(ILandroid/content/Intent;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/HtcCdmaDisclaimerReminder$1;->this$0:Lcom/android/settings/HtcCdmaDisclaimerReminder;

    invoke-virtual {v0}, Lcom/android/settings/HtcCdmaDisclaimerReminder;->finish()V

    .line 61
    return-void
.end method
