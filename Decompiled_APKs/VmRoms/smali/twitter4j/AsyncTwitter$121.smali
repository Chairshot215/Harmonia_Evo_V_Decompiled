.class Ltwitter4j/AsyncTwitter$121;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->getBlockingUsersIDsAsync(Ltwitter4j/TwitterListener;)V
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
    .line 2867
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$121;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-direct {p0, p1, p2, p3, p4}, Ltwitter4j/AsyncTwitter$AsyncTask;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public invoke(Ltwitter4j/TwitterListener;[Ljava/lang/Object;)V
    .locals 1
    .parameter "listener"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2869
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$121;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-virtual {v0}, Ltwitter4j/AsyncTwitter;->getBlockingUsersIDs()Ltwitter4j/IDs;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->gotBlockingUsersIDs(Ltwitter4j/IDs;)V

    .line 2870
    return-void
.end method
