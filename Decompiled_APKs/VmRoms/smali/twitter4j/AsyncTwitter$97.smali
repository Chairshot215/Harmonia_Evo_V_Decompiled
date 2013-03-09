.class Ltwitter4j/AsyncTwitter$97;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->updateProfileColorsAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/TwitterListener;)V
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
    .line 2327
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$97;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-direct {p0, p1, p2, p3, p4}, Ltwitter4j/AsyncTwitter$AsyncTask;-><init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public invoke(Ltwitter4j/TwitterListener;[Ljava/lang/Object;)V
    .locals 6
    .parameter "listener"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2330
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$97;->this$0:Ltwitter4j/AsyncTwitter;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Ltwitter4j/AsyncTwitter;->updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->updatedProfileColors(Ltwitter4j/User;)V

    .line 2333
    return-void
.end method
