.class Lcom/android/mms/ui/ExtractObjectViewActivity$1;
.super Ljava/lang/Object;
.source "ExtractObjectViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ExtractObjectViewActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ExtractObjectViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$1;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$1;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ExtractObjectViewActivity;->saveAttachments(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ExtractObjectViewActivity;->access$000(Lcom/android/mms/ui/ExtractObjectViewActivity;Z)V

    .line 225
    return-void
.end method
