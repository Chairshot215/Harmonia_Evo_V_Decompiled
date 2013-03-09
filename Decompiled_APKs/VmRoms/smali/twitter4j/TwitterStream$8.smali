.class Ltwitter4j/TwitterStream$8;
.super Ltwitter4j/TwitterStream$StreamHandlingThread;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->shadow(I[I)V
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
    .line 332
    iput-object p1, p0, Ltwitter4j/TwitterStream$8;->this$0:Ltwitter4j/TwitterStream;

    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterStream$StreamHandlingThread;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StatusStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v1, p0, Ltwitter4j/TwitterStream$8;->this$0:Ltwitter4j/TwitterStream;

    iget-object v0, p0, Ltwitter4j/TwitterStream$8;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Ltwitter4j/TwitterStream$8;->args:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object p0, v2, v3

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    invoke-virtual {v1, v0, p0}, Ltwitter4j/TwitterStream;->getShadowStream(I[I)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method
