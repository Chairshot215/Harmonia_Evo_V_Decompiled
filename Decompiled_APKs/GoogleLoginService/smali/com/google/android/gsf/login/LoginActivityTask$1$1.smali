.class Lcom/google/android/gsf/login/LoginActivityTask$1$1;
.super Ljava/lang/Object;
.source "LoginActivityTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/LoginActivityTask$1;->runInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/LoginActivityTask$1;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    iget-object v0, v0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/LoginActivityTask;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 140
    return-void
.end method
