.class Lcom/android/phone/assist/EnhancedPlusCodeActivity$3;
.super Ljava/lang/Object;
.source "EnhancedPlusCodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 121
    iput-object p1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$3;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    iput-object p2, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$3;->val$countryIso:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 125
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$3;->val$countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setCurrentPrefixCountryIso(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$3;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-virtual {v0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->finish()V

    .line 127
    return-void
.end method
