.class Lcom/android/phone/SimUnlockScreen$4;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimUnlockScreen;->showUnblockErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/SimUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 979
    iput-object p1, p0, Lcom/android/phone/SimUnlockScreen$4;->this$0:Lcom/android/phone/SimUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$4;->this$0:Lcom/android/phone/SimUnlockScreen;

    #getter for: Lcom/android/phone/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/phone/SimUnlockScreen;->access$500(Lcom/android/phone/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 982
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$4;->this$0:Lcom/android/phone/SimUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/SimUnlockScreen;->mUnlockErrorDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/SimUnlockScreen;->access$1502(Lcom/android/phone/SimUnlockScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 983
    return-void
.end method
