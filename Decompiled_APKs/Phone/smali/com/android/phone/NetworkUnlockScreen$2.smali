.class Lcom/android/phone/NetworkUnlockScreen$2;
.super Ljava/lang/Object;
.source "NetworkUnlockScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkUnlockScreen;->showErrorDialog(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/phone/NetworkUnlockScreen$2;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$2;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/phone/NetworkUnlockScreen;->access$400(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 423
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$2;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/NetworkUnlockScreen;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkUnlockScreen;->access$1202(Lcom/android/phone/NetworkUnlockScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 424
    return-void
.end method
