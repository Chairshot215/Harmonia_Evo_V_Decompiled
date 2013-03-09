.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$PostalLabelPrinter;
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
    name = "PostalLabelPrinter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$PostalLabelPrinter;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public printLabel(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$PostalLabelPrinter;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getPostalTypeString(I)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$700(Lcom/android/htccontacts/SaveNumberToExistContactActivity;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
