.class Lcom/htc/android/mail/easclient/OutOfOffice$2$1;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/OutOfOffice$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/OutOfOffice$2;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice$2;)V
    .locals 0
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$2$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$2$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$2;

    iget-object v0, v0, Lcom/htc/android/mail/easclient/OutOfOffice$2;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->oofOperation(I)V

    .line 737
    return-void
.end method
