.class Lcom/htc/android/qxdm2sd/QXDM2SD$4;
.super Ljava/lang/Object;
.source "QXDM2SD.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/qxdm2sd/QXDM2SD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;


# direct methods
.method constructor <init>(Lcom/htc/android/qxdm2sd/QXDM2SD;)V
    .locals 0
    .parameter

    .prologue
    .line 855
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$4;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 858
    const-string v0, "QXDM2SD"

    const-string v1, "close app."

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 860
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$4;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    invoke-virtual {v0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->finish()V

    .line 861
    return-void
.end method
