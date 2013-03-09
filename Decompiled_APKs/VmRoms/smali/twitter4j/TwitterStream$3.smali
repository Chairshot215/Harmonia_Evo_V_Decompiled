.class Ltwitter4j/TwitterStream$3;
.super Ltwitter4j/TwitterStream$StreamHandlingThread;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->sample()V
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
    .line 148
    iput-object p1, p0, Ltwitter4j/TwitterStream$3;->this$0:Ltwitter4j/TwitterStream;

    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterStream$StreamHandlingThread;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StatusStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Ltwitter4j/TwitterStream$3;->this$0:Ltwitter4j/TwitterStream;

    invoke-virtual {v0}, Ltwitter4j/TwitterStream;->getSampleStream()Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method
