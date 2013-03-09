.class Lcom/htc/android/qxdm2sd/QXDM2SD$3;
.super Ljava/lang/Object;
.source "QXDM2SD.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    .line 191
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$3;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 195
    packed-switch p2, :pswitch_data_0

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$3;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$3;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$3;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$3;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$600(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$502(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$3;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$3;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$700(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$502(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x7f050004
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
