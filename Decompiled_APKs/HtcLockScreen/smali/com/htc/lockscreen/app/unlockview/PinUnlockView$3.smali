.class Lcom/htc/lockscreen/app/unlockview/PinUnlockView$3;
.super Ljava/lang/Object;
.source "PinUnlockView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/unlockview/PinUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$3;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$3;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->access$000(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$3;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->access$000(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$3;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    #getter for: Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;->access$000(Lcom/htc/lockscreen/app/unlockview/PinUnlockView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$3;->this$0:Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    iget-object v0, v0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 330
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 334
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 338
    return-void
.end method
