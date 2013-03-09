.class Lcom/android/mms/ui/CmasDialogActivity$3;
.super Ljava/lang/Object;
.source "CmasDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CmasDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CmasDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CmasDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/mms/ui/CmasDialogActivity$3;->this$0:Lcom/android/mms/ui/CmasDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/mms/ui/CmasDialogActivity$3;->this$0:Lcom/android/mms/ui/CmasDialogActivity;

    #calls: Lcom/android/mms/ui/CmasDialogActivity;->viewOneCmas()V
    invoke-static {v0}, Lcom/android/mms/ui/CmasDialogActivity;->access$200(Lcom/android/mms/ui/CmasDialogActivity;)V

    .line 281
    return-void
.end method
