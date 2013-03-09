.class Lcom/android/settings/ConfirmLockPassword$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$1;->this$0:Lcom/android/settings/ConfirmLockPassword;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$1;->this$0:Lcom/android/settings/ConfirmLockPassword;

    #getter for: Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword;->access$000(Lcom/android/settings/ConfirmLockPassword;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0aa8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    return-void
.end method
