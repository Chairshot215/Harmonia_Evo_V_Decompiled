.class Lcom/htc/android/qxdm2sd/QXDM2SD$1;
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
    .line 146
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelectedView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$000(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelItems:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$200(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelItems:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$200(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_2

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelectedView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$000(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    move-result-object v1

    aget-object v2, v1, v0

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->setMask(Ljava/lang/String;)V

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 164
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 165
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #setter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;
    invoke-static {v1, v4}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$102(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/util/List;)Ljava/util/List;

    .line 166
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #setter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelItems:[Ljava/lang/CharSequence;
    invoke-static {v1, v4}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$202(Lcom/htc/android/qxdm2sd/QXDM2SD;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 167
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #setter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelectedView:Landroid/view/View;
    invoke-static {v1, v4}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$002(Lcom/htc/android/qxdm2sd/QXDM2SD;Landroid/view/View;)Landroid/view/View;

    .line 169
    .end local v0           #i:I
    :cond_2
    return-void
.end method
