.class Lcom/android/phone/EntitlementCheckFailDialog$3;
.super Ljava/lang/Object;
.source "EntitlementCheckFailDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EntitlementCheckFailDialog;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EntitlementCheckFailDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EntitlementCheckFailDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/phone/EntitlementCheckFailDialog$3;->this$0:Lcom/android/phone/EntitlementCheckFailDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v0, settingPage:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.WirelessSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/android/phone/EntitlementCheckFailDialog$3;->this$0:Lcom/android/phone/EntitlementCheckFailDialog;

    invoke-virtual {v1}, Lcom/android/phone/EntitlementCheckFailDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    iget-object v1, p0, Lcom/android/phone/EntitlementCheckFailDialog$3;->this$0:Lcom/android/phone/EntitlementCheckFailDialog;

    invoke-virtual {v1}, Lcom/android/phone/EntitlementCheckFailDialog;->finish()V

    .line 182
    return-void
.end method
