.class Lcom/google/android/gm/WaitActivity$4$1;
.super Ljava/lang/Object;
.source "WaitActivity.java"

# interfaces
.implements Lcom/google/android/gm/AccountHelper$AddAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/WaitActivity$4;->exec([Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/WaitActivity$4;


# direct methods
.method constructor <init>(Lcom/google/android/gm/WaitActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/android/gm/WaitActivity$4$1;->this$1:Lcom/google/android/gm/WaitActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/accounts/Account;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity$4$1;->this$1:Lcom/google/android/gm/WaitActivity$4;

    iget-object v0, v0, Lcom/google/android/gm/WaitActivity$4;->this$0:Lcom/google/android/gm/WaitActivity;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #calls: Lcom/google/android/gm/WaitActivity;->onAccountsLoaded(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/gm/WaitActivity;->access$300(Lcom/google/android/gm/WaitActivity;Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity$4$1;->this$1:Lcom/google/android/gm/WaitActivity$4;

    iget-object v0, v0, Lcom/google/android/gm/WaitActivity$4;->this$0:Lcom/google/android/gm/WaitActivity;

    invoke-virtual {v0}, Lcom/google/android/gm/WaitActivity;->finish()V

    goto :goto_0
.end method
