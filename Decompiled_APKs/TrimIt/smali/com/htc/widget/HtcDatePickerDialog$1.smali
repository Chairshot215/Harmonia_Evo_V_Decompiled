.class Lcom/htc/widget/HtcDatePickerDialog$1;
.super Ljava/lang/Object;
.source "HtcDatePickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcDatePickerDialog;->updateDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcDatePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/htc/widget/HtcDatePickerDialog$1;->this$0:Lcom/htc/widget/HtcDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog$1;->this$0:Lcom/htc/widget/HtcDatePickerDialog;

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog$1;->this$0:Lcom/htc/widget/HtcDatePickerDialog;

    #getter for: Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I
    invoke-static {v1}, Lcom/htc/widget/HtcDatePickerDialog;->access$000(Lcom/htc/widget/HtcDatePickerDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog$1;->this$0:Lcom/htc/widget/HtcDatePickerDialog;

    #getter for: Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I
    invoke-static {v2}, Lcom/htc/widget/HtcDatePickerDialog;->access$100(Lcom/htc/widget/HtcDatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog$1;->this$0:Lcom/htc/widget/HtcDatePickerDialog;

    #getter for: Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I
    invoke-static {v3}, Lcom/htc/widget/HtcDatePickerDialog;->access$200(Lcom/htc/widget/HtcDatePickerDialog;)I

    move-result v3

    #calls: Lcom/htc/widget/HtcDatePickerDialog;->updateDateInternal(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/widget/HtcDatePickerDialog;->access$300(Lcom/htc/widget/HtcDatePickerDialog;III)V

    .line 257
    return-void
.end method
