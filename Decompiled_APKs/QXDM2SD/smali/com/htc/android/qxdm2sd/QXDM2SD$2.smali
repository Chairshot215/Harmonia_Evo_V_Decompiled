.class Lcom/htc/android/qxdm2sd/QXDM2SD$2;
.super Ljava/lang/Object;
.source "QXDM2SD.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/qxdm2sd/QXDM2SD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;


# direct methods
.method constructor <init>(Lcom/htc/android/qxdm2sd/QXDM2SD;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$2;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$2;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$2;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelectedView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$000(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$2;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 181
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$2;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->cleanProp()V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$2;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$2;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
