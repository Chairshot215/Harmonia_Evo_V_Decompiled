.class Lcom/android/mms/transaction/SmsReceiverService$3;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 2525
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$3;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 2527
    invoke-static {}, Lcom/android/mms/util/SpaceBufferUtil;->createBufferFile()V

    .line 2528
    return-void
.end method
