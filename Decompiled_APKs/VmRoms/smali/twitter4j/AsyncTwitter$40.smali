.class Ltwitter4j/AsyncTwitter$40;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->updateStatusAsync(Ljava/lang/String;JLtwitter4j/TwitterListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1011
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$40;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-direct {p0, p1, p2, p3, p4}, Ltwitter4j/AsyncTwitter$AsyncTask;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public invoke(Ltwitter4j/TwitterListener;[Ljava/lang/Object;)V
    .locals 4
    .parameter "listener"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1013
    iget-object v1, p0, Ltwitter4j/AsyncTwitter$40;->this$0:Ltwitter4j/AsyncTwitter;

    const/4 v0, 0x0

    aget-object p0, p2, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitter;->updateStatus(Ljava/lang/String;J)Ltwitter4j/Status;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->updatedStatus(Ltwitter4j/Status;)V

    .line 1014
    return-void
.end method
