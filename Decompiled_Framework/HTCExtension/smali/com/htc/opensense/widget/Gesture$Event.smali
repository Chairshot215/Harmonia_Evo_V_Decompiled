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

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$Event;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    iput v1, p0, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mX2:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mY2:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mTime:J

    return-void
.end method


# virtual methods
.method copy(Lcom/htc/opensense/widget/Gesture$Event;)V
    .locals 2

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mX2:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mX2:F

    iget v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mY2:F

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mY2:F

    iget-wide v0, p1, Lcom/htc/opensense/widget/Gesture$Event;->mTime:J

    iput-wide v0, p0, Lcom/htc/opensense/widget/Gesture$Event;->mTime:J

    return-void
.end method
