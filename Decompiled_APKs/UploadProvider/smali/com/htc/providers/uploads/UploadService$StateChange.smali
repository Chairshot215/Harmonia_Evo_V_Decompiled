.class Lcom/htc/providers/uploads/UploadService$StateChange;
.super Ljava/lang/Object;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChange"
.end annotation


# instance fields
.field public id:I

.field public newState:I

.field final synthetic this$0:Lcom/htc/providers/uploads/UploadService;

.field public updateTime:J


# direct methods
.method public constructor <init>(Lcom/htc/providers/uploads/UploadService;IIJ)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "newState"
    .parameter "updateTime"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadService$StateChange;->this$0:Lcom/htc/providers/uploads/UploadService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p2, p0, Lcom/htc/providers/uploads/UploadService$StateChange;->id:I

    .line 106
    iput p3, p0, Lcom/htc/providers/uploads/UploadService$StateChange;->newState:I

    .line 107
    iput-wide p4, p0, Lcom/htc/providers/uploads/UploadService$StateChange;->updateTime:J

    .line 108
    return-void
.end method
