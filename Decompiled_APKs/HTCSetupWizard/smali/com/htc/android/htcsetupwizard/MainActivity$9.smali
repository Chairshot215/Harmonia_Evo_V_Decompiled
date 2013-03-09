.class Lcom/htc/android/htcsetupwizard/MainActivity$9;
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
    .line 2694
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$9;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$9;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->goToNextActivityByDialog()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1000(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    .line 2698
    return-void
.end method
