.class Lcom/google/android/gsf/login/UsernameActivity$1;
.super Landroid/text/LoginFilter$UsernameFilterGMail;
.source "UsernameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/UsernameActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/UsernameActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/UsernameActivity;Z)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/gsf/login/UsernameActivity$1;->this$0:Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {p0, p2}, Landroid/text/LoginFilter$UsernameFilterGMail;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onInvalidCharacter(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernameActivity$1;->this$0:Lcom/google/android/gsf/login/UsernameActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/gsf/login/UsernameActivity;->mUsernameError:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->access$002(Lcom/google/android/gsf/login/UsernameActivity;Z)Z

    .line 65
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernameActivity$1;->this$0:Lcom/google/android/gsf/login/UsernameActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gsf/login/UsernameActivity;->mUsernameError:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/login/UsernameActivity;->access$002(Lcom/google/android/gsf/login/UsernameActivity;Z)Z

    .line 60
    return-void
.end method
