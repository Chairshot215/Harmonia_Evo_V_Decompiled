.class Lcom/htc/android/htcsetupwizard/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/MainActivity;->createWIFIConfirmation()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/MainActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2689
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$10;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$10;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->callWIFISetting()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1100(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    .line 2692
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$10;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeDialog(I)V

    .line 2693
    return-void
.end method
