.class Lcom/google/android/partnersetup/RlzDebugActivity$5;
.super Ljava/lang/Object;
.source "RlzDebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/partnersetup/RlzDebugActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/partnersetup/RlzDebugActivity;


# direct methods
.method constructor <init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$5;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$5;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$5;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    invoke-virtual {v1}, Lcom/google/android/partnersetup/RlzDebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$5;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    invoke-static {v1}, Lcom/google/android/partnersetup/ClientId;->getClientIdData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$5;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    invoke-virtual {v1}, Lcom/google/android/partnersetup/RlzDebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 129
    return-void
.end method
