.class Lcom/android/camera/EventManager$EventProfilingInfo;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventProfilingInfo"
.end annotation


# instance fields
.field public final eventName:Ljava/lang/String;

.field public final handlerInfos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/camera/IEventHandler;",
            "Lcom/android/camera/EventManager$EventHandlerProfilingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public raisingCount:J

.field public totalHandlerCount:J

.field public totalHandlingTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EventManager$EventProfilingInfo;->handlerInfos:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/android/camera/EventManager$EventProfilingInfo;->eventName:Ljava/lang/String;

    return-void
.end method
