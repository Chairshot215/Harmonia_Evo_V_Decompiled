.class Ltwitter4j/TwitterStream$9;
.super Ltwitter4j/TwitterStream$StreamHandlingThread;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->follow([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/TwitterStream;


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 366
    iput-object p1, p0, Ltwitter4j/TwitterStream$9;->this$0:Ltwitter4j/TwitterStream;

    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterStream$StreamHandlingThread;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StatusStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Ltwitter4j/TwitterStream$9;->this$0:Ltwitter4j/TwitterStream;

    iget-object v1, p0, Ltwitter4j/TwitterStream$9;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object p0, v1, v2

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    invoke-virtual {v0, p0}, Ltwitter4j/TwitterStream;->getFollowStream([I)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method
