.class Lcom/android/phone/assist/EnhancedPlusCodeActivity$4;
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
    .line 108
    iput-object p1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$4;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    iput-object p2, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$4;->val$countryIso:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 112
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$4;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    #getter for: Lcom/android/phone/assist/EnhancedPlusCodeActivity;->dropDown:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->access$000(Lcom/android/phone/assist/EnhancedPlusCodeActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, value:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->retrievePrefixNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setPlusCodePrefixNumber(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->getInstance()Lcom/android/phone/assist/EnhancedPlusCodeUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$4;->val$countryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/assist/EnhancedPlusCodeUtils;->setCurrentPrefixCountryIso(Ljava/lang/String;)V

    .line 118
    .end local v0           #number:Ljava/lang/String;
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$4;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-virtual {v2}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->finish()V

    .line 119
    return-void
.end method
