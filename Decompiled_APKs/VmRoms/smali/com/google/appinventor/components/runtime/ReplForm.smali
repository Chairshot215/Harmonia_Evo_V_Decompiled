.class public Lcom/google/appinventor/components/runtime/ReplForm;
.super Lcom/google/appinventor/components/runtime/Form;


# instance fields
.field private formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;-><init>()V

    return-void
.end method


# virtual methods
.method protected closeApplicationFromBlocks()V
    .locals 1

    new-instance v0, Lcom/google/appinventor/components/runtime/ReplForm$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm$3;-><init>(Lcom/google/appinventor/components/runtime/ReplForm;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/google/appinventor/components/runtime/ReplForm$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm$2;-><init>(Lcom/google/appinventor/components/runtime/ReplForm;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v0, Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onDestroy()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->destroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onResume()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->startListening(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onStop()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formReplCommController:Lcom/google/appinventor/components/runtime/util/ReplCommController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/ReplCommController;->stopListening(Z)V

    return-void
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/google/appinventor/components/runtime/ReplForm$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm$1;-><init>(Lcom/google/appinventor/components/runtime/ReplForm;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
