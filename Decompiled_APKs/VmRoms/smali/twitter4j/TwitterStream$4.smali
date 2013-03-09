.class Ltwitter4j/TwitterStream$4;
.super Ltwitter4j/TwitterStream$StreamHandlingThread;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->filter(I[I[Ljava/lang/String;)V
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
    .line 186
    iput-object p1, p0, Ltwitter4j/TwitterStream$4;->this$0:Ltwitter4j/TwitterStream;

    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterStream$StreamHandlingThread;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StatusStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v1, p0, Ltwitter4j/TwitterStream$4;->this$0:Ltwitter4j/TwitterStream;

    iget-object v0, p0, Ltwitter4j/TwitterStream$4;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Ltwitter4j/TwitterStream$4;->args:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    check-cast v0, [I

    check-cast v0, [I

    iget-object v3, p0, Ltwitter4j/TwitterStream$4;->args:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object p0, v3, v4

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Ltwitter4j/TwitterStream;->getFilterStream(I[I[Ljava/lang/String;)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method
