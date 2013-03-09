.class Lcom/google/android/gsf/login/ChoosePasswordActivity$5;
.super Lcom/google/android/gsf/login/ChoosePasswordActivity$GaiaPasswordFilter;
.source "ChoosePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/ChoosePasswordActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$5;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/ChoosePasswordActivity$GaiaPasswordFilter;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onInvalidCharacter(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$5;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmError:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$902(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)Z

    .line 235
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$5;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordConfirmError:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$902(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)Z

    .line 230
    return-void
.end method
