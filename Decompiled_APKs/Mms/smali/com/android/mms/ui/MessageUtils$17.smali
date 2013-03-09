.class final Lcom/android/mms/ui/MessageUtils$17;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 4045
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$17;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4048
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4049
    .local v0, lowMemIntent:Landroid/content/Intent;
    const-string v1, "com.htc.lmw"

    const-string v2, "com.htc.lmw.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4050
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4008

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$17;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4051
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$17;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4062
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$17;->val$context:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v1, :cond_2

    .line 4063
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$17;->val$context:Landroid/content/Context;

    check-cast v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 4067
    :cond_0
    :goto_1
    return-void

    .line 4054
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #lowMemIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4055
    .restart local v0       #lowMemIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4056
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ManageApplications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4057
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$17;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4064
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$17;->val$context:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/mms/ui/AlertDialogActivity;

    if-eqz v1, :cond_0

    .line 4065
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$17;->val$context:Landroid/content/Context;

    check-cast v1, Lcom/android/mms/ui/AlertDialogActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/AlertDialogActivity;->finish()V

    goto :goto_1
.end method
