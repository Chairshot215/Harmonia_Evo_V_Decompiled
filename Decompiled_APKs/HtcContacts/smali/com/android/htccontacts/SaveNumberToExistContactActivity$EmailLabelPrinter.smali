.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$EmailLabelPrinter;
.super Ljava/lang/Object;
.source "SaveNumberToExistContactActivity.java"

# interfaces
.implements Lcom/android/htccontacts/SaveNumberToExistContactActivity$LabelPrinter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmailLabelPrinter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$EmailLabelPrinter;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public printLabel(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$EmailLabelPrinter;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getMailTypeString(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$600(Lcom/android/htccontacts/SaveNumberToExistContactActivity;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
