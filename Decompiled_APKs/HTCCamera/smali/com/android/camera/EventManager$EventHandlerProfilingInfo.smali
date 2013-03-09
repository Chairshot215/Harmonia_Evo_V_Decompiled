.class Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandlerProfilingInfo"
.end annotation


# instance fields
.field public callingCount:J

.field public final eventName:Ljava/lang/String;

.field public final handler:Lcom/android/camera/IEventHandler;

.field public totalHandlingTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->eventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->handler:Lcom/android/camera/IEventHandler;

    return-void
.end method
