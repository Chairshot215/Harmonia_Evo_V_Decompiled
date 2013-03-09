.class Lcom/htc/opensense/widget/Gesture$Event;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Event"
.end annotation


# instance fields
.field mAction:I

.field mFingers:I

.field mTime:J

.field mX:F

.field mX2:F

.field mY:F

.field mY2:F

.field final synthetic this$0:Lcom/htc/opensense/widget/Gesture;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/widget/Gesture;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 238
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$Event;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput v1, p0, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    .line 240
    iput v1, p0, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    .line 241
    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    .line 242
    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    .line 243
    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mX2:F

    .line 244
    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mY2:F

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mTime:J

    .line 246
    return-void
.end method


# virtual methods
.method copy(Lcom/htc/opensense/widget/Gesture$Event;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 229
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    .line 230
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    .line 231
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    .line 232
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    .line 233
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mX2:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mX2:F

    .line 234
    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mY2:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mY2:F

    .line 235
    iget-wide v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mTime:J

    iput-wide v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mTime:J

    .line 236
    return-void
.end method
