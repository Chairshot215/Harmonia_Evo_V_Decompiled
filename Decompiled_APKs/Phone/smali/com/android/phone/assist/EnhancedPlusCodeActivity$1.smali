.class Lcom/android/phone/assist/EnhancedPlusCodeActivity$1;
.super Ljava/lang/Object;
.source "EnhancedPlusCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/assist/EnhancedPlusCodeActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/assist/EnhancedPlusCodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$1;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, countryListIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$1;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-virtual {v1}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    const-string v1, "diagId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$1;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-virtual {v1, v0, v3}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    return-void
.end method
