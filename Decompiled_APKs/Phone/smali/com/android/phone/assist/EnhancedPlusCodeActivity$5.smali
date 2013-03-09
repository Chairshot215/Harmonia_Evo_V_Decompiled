.class Lcom/android/phone/assist/EnhancedPlusCodeActivity$5;
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


# direct methods
.method constructor <init>(Lcom/android/phone/assist/EnhancedPlusCodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$5;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$5;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-virtual {v0}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->finish()V

    .line 146
    return-void
.end method
