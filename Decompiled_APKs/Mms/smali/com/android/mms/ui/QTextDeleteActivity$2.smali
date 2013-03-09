.class Lcom/android/mms/ui/QTextDeleteActivity$2;
.super Ljava/lang/Object;
.source "QTextDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/QTextDeleteActivity;->initDeleteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/QTextDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/QTextDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/mms/ui/QTextDeleteActivity$2;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity$2;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    const v1, 0x7f09013c

    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$2;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mConfirmDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$400(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    #calls: Lcom/android/mms/ui/QTextDeleteActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$500(Lcom/android/mms/ui/QTextDeleteActivity;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 205
    return-void
.end method
