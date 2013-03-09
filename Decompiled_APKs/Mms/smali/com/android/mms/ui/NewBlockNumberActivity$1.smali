.class Lcom/android/mms/ui/NewBlockNumberActivity$1;
.super Ljava/lang/Object;
.source "NewBlockNumberActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewBlockNumberActivity;->warningInvalidNumber(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewBlockNumberActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewBlockNumberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/mms/ui/NewBlockNumberActivity$1;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity$1;->this$0:Lcom/android/mms/ui/NewBlockNumberActivity;

    #getter for: Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->access$000(Lcom/android/mms/ui/NewBlockNumberActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 103
    return-void
.end method
