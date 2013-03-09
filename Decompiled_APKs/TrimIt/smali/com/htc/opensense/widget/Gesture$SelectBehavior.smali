.class Lcom/htc/opensense/widget/Gesture$SelectBehavior;
.super Lcom/htc/opensense/widget/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectBehavior"
.end annotation


# instance fields
.field gesture:I

.field final synthetic this$0:Lcom/htc/opensense/widget/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/Gesture;)V
    .locals 1
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$SelectBehavior;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    .line 686
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$SelectBehavior;->gesture:I

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/opensense/widget/Gesture$Event;)V
    .locals 0
    .parameter "me"

    .prologue
    .line 697
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/Gesture$Behavior;->analysis(Lcom/htc/opensense/widget/Gesture$Event;)V

    .line 698
    return-void
.end method

.method public gesture()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$SelectBehavior;->gesture:I

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 689
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$SelectBehavior;->gesture:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "Gesture_Select"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Gesture_Select_Holad"

    goto :goto_0
.end method
