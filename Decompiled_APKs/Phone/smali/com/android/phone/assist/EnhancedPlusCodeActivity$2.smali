.class Lcom/android/phone/assist/EnhancedPlusCodeActivity$2;
.super Ljava/lang/Object;
.source "EnhancedPlusCodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic val$countryIso:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/assist/EnhancedPlusCodeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$2;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    iput-object p2, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$2;->val$countryIso:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 132
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$2;->val$countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setCurrentPrefixCountryIso(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$2;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-virtual {v0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->finish()V

    .line 134
    return-void
.end method
