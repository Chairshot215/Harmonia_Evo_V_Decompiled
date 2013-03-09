.class Lcom/htc/android/epst/HtcGroupEPST$1;
.super Ljava/lang/Object;
.source "HtcGroupEPST.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/HtcGroupEPST;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/HtcGroupEPST;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/HtcGroupEPST;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/htc/android/epst/HtcGroupEPST$1;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 251
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->PortRebootDevice()V

    .line 252
    iget-object v0, p0, Lcom/htc/android/epst/HtcGroupEPST$1;->this$0:Lcom/htc/android/epst/HtcGroupEPST;

    invoke-virtual {v0}, Lcom/htc/android/epst/HtcGroupEPST;->finish()V

    .line 253
    return-void
.end method
