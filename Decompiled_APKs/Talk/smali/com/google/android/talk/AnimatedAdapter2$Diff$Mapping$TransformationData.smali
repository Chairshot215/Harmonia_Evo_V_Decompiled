.class Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformationData"
.end annotation


# instance fields
.field mAnimatingOut:Z

.field mRowId:J

.field mRowPosition:I

.field final synthetic this$2:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;IJZ)V
    .locals 0
    .parameter
    .parameter "rowPosition"
    .parameter "rowId"
    .parameter "animatingOut"

    .prologue
    .line 890
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->this$2:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    iput p2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowPosition:I

    .line 892
    iput-wide p3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowId:J

    .line 893
    iput-boolean p5, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mAnimatingOut:Z

    .line 894
    return-void
.end method
