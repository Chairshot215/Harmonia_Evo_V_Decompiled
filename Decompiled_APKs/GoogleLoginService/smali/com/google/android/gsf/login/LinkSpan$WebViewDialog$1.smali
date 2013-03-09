.class Lcom/google/android/gsf/login/LinkSpan$WebViewDialog$1;
.super Ljava/lang/Object;
.source "LinkSpan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/LinkSpan$WebViewDialog;-><init>(Lcom/google/android/gsf/login/BaseActivity;Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/LinkSpan$WebViewDialog;

.field final synthetic val$activity:Lcom/google/android/gsf/login/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/LinkSpan$WebViewDialog;Lcom/google/android/gsf/login/BaseActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/gsf/login/LinkSpan$WebViewDialog$1;->this$0:Lcom/google/android/gsf/login/LinkSpan$WebViewDialog;

    iput-object p2, p0, Lcom/google/android/gsf/login/LinkSpan$WebViewDialog$1;->val$activity:Lcom/google/android/gsf/login/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/gsf/login/LinkSpan$WebViewDialog$1;->val$activity:Lcom/google/android/gsf/login/BaseActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/login/BaseActivity;->mAgreementView:Landroid/app/AlertDialog;

    .line 228
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 229
    return-void
.end method
