.class Lcom/htc/opensense/widget/Gesture$Vector2;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Vector2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/Gesture;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense/widget/Gesture;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$Vector2;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Vector2;->y:I

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$Vector2;->x:I

    .line 208
    return-void
.end method


# virtual methods
.method public sub(Lcom/htc/opensense/widget/Gesture$Vector2;)Lcom/htc/opensense/widget/Gesture$Vector2;
    .locals 3
    .parameter "mv"

    .prologue
    .line 211
    new-instance v0, Lcom/htc/opensense/widget/Gesture$Vector2;

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$Vector2;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/Gesture$Vector2;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    .line 212
    .local v0, ret:Lcom/htc/opensense/widget/Gesture$Vector2;
    iget v1, p0, Lcom/htc/opensense/widget/Gesture$Vector2;->x:I

    iget v2, p1, Lcom/htc/opensense/widget/Gesture$Vector2;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/htc/opensense/widget/Gesture$Vector2;->x:I

    .line 213
    iget v1, p0, Lcom/htc/opensense/widget/Gesture$Vector2;->y:I

    iget v2, p1, Lcom/htc/opensense/widget/Gesture$Vector2;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/htc/opensense/widget/Gesture$Vector2;->y:I

    .line 214
    return-object v0
.end method
