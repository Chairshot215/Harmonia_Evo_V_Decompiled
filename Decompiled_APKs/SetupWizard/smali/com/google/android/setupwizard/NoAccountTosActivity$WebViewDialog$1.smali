.class Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog$1;
.super Ljava/lang/Object;
.source "NoAccountTosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;-><init>(Lcom/google/android/setupwizard/NoAccountTosActivity;Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog$1;->this$0:Lcom/google/android/setupwizard/NoAccountTosActivity$WebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 201
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 202
    return-void
.end method
