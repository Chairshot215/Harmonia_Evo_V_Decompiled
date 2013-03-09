.class Lcom/android/providers/htcCheckin/htcCheckinService$2;
.super Ljava/lang/Object;
.source "htcCheckinService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/htcCheckin/htcCheckinService;->_intf_reportCrashAsync([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

.field final synthetic val$data:[B

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/providers/htcCheckin/htcCheckinService;I[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$2;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    iput p2, p0, Lcom/android/providers/htcCheckin/htcCheckinService$2;->val$uid:I

    iput-object p3, p0, Lcom/android/providers/htcCheckin/htcCheckinService$2;->val$data:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService$2;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    iget v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$2;->val$uid:I

    iget-object v2, p0, Lcom/android/providers/htcCheckin/htcCheckinService$2;->val$data:[B

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->reportCrashInternal(I[B)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$300(Lcom/android/providers/htcCheckin/htcCheckinService;I[B)V

    .line 509
    return-void
.end method
