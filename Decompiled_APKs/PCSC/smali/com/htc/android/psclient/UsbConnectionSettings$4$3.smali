.class Lcom/htc/android/psclient/UsbConnectionSettings$4$3;
.super Ljava/lang/Object;
.source "UsbConnectionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/UsbConnectionSettings$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/psclient/UsbConnectionSettings$4;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/UsbConnectionSettings$4;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$4$3;->this$1:Lcom/htc/android/psclient/UsbConnectionSettings$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 626
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 627
    return-void
.end method
