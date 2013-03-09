.class Ltwitter4j/TwitterStream$10;
.super Ltwitter4j/TwitterStream$StreamHandlingThread;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->track([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/TwitterStream;

.field private final val$keywords:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Ltwitter4j/TwitterStream$10;->this$0:Ltwitter4j/TwitterStream;

    iput-object p3, p0, Ltwitter4j/TwitterStream$10;->val$keywords:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterStream$StreamHandlingThread;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StatusStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Ltwitter4j/TwitterStream$10;->this$0:Ltwitter4j/TwitterStream;

    iget-object v1, p0, Ltwitter4j/TwitterStream$10;->val$keywords:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltwitter4j/TwitterStream;->getTrackStream([Ljava/lang/String;)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method
