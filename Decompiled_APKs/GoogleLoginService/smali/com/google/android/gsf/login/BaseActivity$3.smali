.class Lcom/google/android/gsf/login/BaseActivity$3;
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
    .line 308
    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity$3;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$3;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/BaseActivity;->setResult(I)V

    .line 312
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$3;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BaseActivity;->finish()V

    .line 313
    return-void
.end method
