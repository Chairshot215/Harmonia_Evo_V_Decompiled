.class Lcom/google/android/voicesearch/SendSmsActivity$3;
.super Ljava/lang/Object;
.source "SendSmsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/SendSmsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/SendSmsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/SendSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/voicesearch/SendSmsActivity$3;->this$0:Lcom/google/android/voicesearch/SendSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 242
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 243
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity$3;->this$0:Lcom/google/android/voicesearch/SendSmsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SendSmsActivity;->setResult(I)V

    .line 244
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity$3;->this$0:Lcom/google/android/voicesearch/SendSmsActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/SendSmsActivity;->finish()V

    .line 245
    return-void
.end method
