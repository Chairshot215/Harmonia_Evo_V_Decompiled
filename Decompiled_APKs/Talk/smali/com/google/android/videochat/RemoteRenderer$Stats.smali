.class Lcom/google/android/videochat/RemoteRenderer$Stats;
.super Ljava/lang/Object;
.source "RemoteRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/RemoteRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stats"
.end annotation


# instance fields
.field dropped:I

.field pushed:I

.field rendererCalls:I

.field renderered:I

.field final synthetic this$0:Lcom/google/android/videochat/RemoteRenderer;

.field time:J


# direct methods
.method private constructor <init>(Lcom/google/android/videochat/RemoteRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/videochat/RemoteRenderer$Stats;->this$0:Lcom/google/android/videochat/RemoteRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/videochat/RemoteRenderer;Lcom/google/android/videochat/RemoteRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/videochat/RemoteRenderer$Stats;-><init>(Lcom/google/android/videochat/RemoteRenderer;)V

    return-void
.end method
