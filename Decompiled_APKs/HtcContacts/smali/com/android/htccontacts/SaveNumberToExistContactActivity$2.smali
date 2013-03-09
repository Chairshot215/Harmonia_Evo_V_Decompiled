.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$2;
.super Ljava/lang/Object;
.source "SaveNumberToExistContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$2;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$2;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->doSaveAction()V
    invoke-static {v0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$300(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    .line 215
    return-void
.end method
