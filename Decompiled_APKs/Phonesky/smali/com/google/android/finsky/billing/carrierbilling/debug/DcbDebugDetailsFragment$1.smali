.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment$1;
.super Ljava/lang/Object;
.source "DcbDebugDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 71
    return-void
.end method
