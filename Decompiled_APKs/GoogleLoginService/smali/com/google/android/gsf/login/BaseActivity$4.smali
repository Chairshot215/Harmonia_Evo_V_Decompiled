.class Lcom/google/android/gsf/login/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    iget-object v0, v0, Lcom/google/android/gsf/login/BaseActivity;->mPrimaryButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    iget-object v0, v0, Lcom/google/android/gsf/login/BaseActivity;->mPrimaryButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    goto :goto_0
.end method
