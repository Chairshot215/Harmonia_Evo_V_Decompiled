.class Lcom/android/mms/ui/SmsSentNoServiceDialog$2;
.super Ljava/lang/Object;
.source "SmsSentNoServiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsSentNoServiceDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSentNoServiceDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$2;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$2;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    #calls: Lcom/android/mms/ui/SmsSentNoServiceDialog;->executeCancelListener()V
    invoke-static {v0}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->access$000(Lcom/android/mms/ui/SmsSentNoServiceDialog;)V

    .line 98
    return-void
.end method
