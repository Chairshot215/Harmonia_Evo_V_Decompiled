.class Lcom/google/android/gsf/login/UsernamePasswordActivity$1;
.super Landroid/text/LoginFilter$UsernameFilterGeneric;
.source "UsernamePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/UsernamePasswordActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {p0, p2}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onInvalidCharacter(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameError:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->access$002(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z

    .line 182
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gsf/login/UsernamePasswordActivity;->mUsernameError:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->access$002(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z

    .line 177
    return-void
.end method
