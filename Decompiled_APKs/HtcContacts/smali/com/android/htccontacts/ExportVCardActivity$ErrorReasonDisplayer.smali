.class Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;
.super Ljava/lang/Object;
.source "ExportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorReasonDisplayer"
.end annotation


# instance fields
.field private final mResId:I

.field final synthetic this$0:Lcom/android/htccontacts/ExportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "errorReason"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const v0, 0x7f070012

    iput v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;->mResId:I

    .line 142
    #setter for: Lcom/android/htccontacts/ExportVCardActivity;->mErrorReason:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/htccontacts/ExportVCardActivity;->access$202(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    iget v1, p0, Lcom/android/htccontacts/ExportVCardActivity$ErrorReasonDisplayer;->mResId:I

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ExportVCardActivity;->showDialog(I)V

    .line 149
    :cond_0
    return-void
.end method
