.class Lcom/android/htcdialer/HomeDialingActivity$1;
.super Ljava/lang/Object;
.source "HomeDialingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/HomeDialingActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/HomeDialingActivity;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/HomeDialingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/htcdialer/HomeDialingActivity$1;->this$0:Lcom/android/htcdialer/HomeDialingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/htcdialer/HomeDialingActivity$1;->this$0:Lcom/android/htcdialer/HomeDialingActivity;

    invoke-virtual {v0}, Lcom/android/htcdialer/HomeDialingActivity;->finish()V

    .line 76
    return-void
.end method
