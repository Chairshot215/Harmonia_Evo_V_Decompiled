.class public Lcom/android/mms/transaction/SmsReceiverService$SenderObject;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SenderObject"
.end annotation


# instance fields
.field groupMsg:Lcom/android/mms/transaction/GroupMessage;

.field grpFirst:Z

.field grpLast:Z

.field needAck:I


# direct methods
.method constructor <init>(ILcom/android/mms/transaction/GroupMessage;)V
    .locals 2
    .parameter "ack"
    .parameter "gmsg"

    .prologue
    const/4 v1, 0x0

    .line 4376
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4372
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->needAck:I

    .line 4373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->groupMsg:Lcom/android/mms/transaction/GroupMessage;

    .line 4374
    iput-boolean v1, p0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->grpFirst:Z

    .line 4375
    iput-boolean v1, p0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->grpLast:Z

    .line 4377
    iput p1, p0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->needAck:I

    .line 4378
    iput-object p2, p0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->groupMsg:Lcom/android/mms/transaction/GroupMessage;

    .line 4379
    return-void
.end method
