.class Lcom/htc/home/personalize/opensense/Gesture$SelectBehavior;
.super Lcom/htc/home/personalize/opensense/Gesture$Behavior;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectBehavior"
.end annotation


# instance fields
.field gesture:I

.field final synthetic this$0:Lcom/htc/home/personalize/opensense/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/Gesture;)V
    .locals 1
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/Gesture$SelectBehavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    .line 700
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/home/personalize/opensense/Gesture$SelectBehavior;->gesture:I

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V
    .locals 0
    .parameter "me"

    .prologue
    .line 711
    invoke-super {p0, p1}, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V

    .line 712
    return-void
.end method

.method public gesture()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$SelectBehavior;->gesture:I

    return v0
.end method

.method public gestureStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 703
    iget v0, p0, Lcom/htc/home/personalize/opensense/Gesture$SelectBehavior;->gesture:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "Gesture_Select"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Gesture_Select_Holad"

    goto :goto_0
.end method
