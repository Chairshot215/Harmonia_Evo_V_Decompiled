.class Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;
.super Ljava/lang/Object;
.source "UploadsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/uploadUI/UploadsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeStatus"
.end annotation


# instance fields
.field status:I

.field final synthetic this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

.field time:J


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/uploadUI/UploadsObserver;JI)V
    .locals 0
    .parameter
    .parameter "time"
    .parameter "status"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-wide p2, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;->time:J

    .line 264
    iput p4, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;->status:I

    .line 265
    return-void
.end method
