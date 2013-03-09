.class Ltwitter4j/AsyncTwitterImpl$67;
.super Ltwitter4j/AsyncTwitterImpl$AsyncTask;
.source "AsyncTwitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitterImpl;->getUserListMembers(JIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitterImpl;

.field private final val$cursor:J

.field private final val$listId:I

.field private final val$listOwnerId:J


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JIJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1227
    .local p3, x1:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iput-object p1, p0, Ltwitter4j/AsyncTwitterImpl$67;->this$0:Ltwitter4j/AsyncTwitterImpl;

    iput-wide p4, p0, Ltwitter4j/AsyncTwitterImpl$67;->val$listOwnerId:J

    iput p6, p0, Ltwitter4j/AsyncTwitterImpl$67;->val$listId:I

    iput-wide p7, p0, Ltwitter4j/AsyncTwitterImpl$67;->val$cursor:J

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitterImpl$AsyncTask;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/TwitterListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1229
    .local p1, listeners:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl$67;->this$0:Ltwitter4j/AsyncTwitterImpl;

    invoke-static {v0}, Ltwitter4j/AsyncTwitterImpl;->access$000(Ltwitter4j/AsyncTwitterImpl;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/AsyncTwitterImpl$67;->val$listOwnerId:J

    iget v3, p0, Ltwitter4j/AsyncTwitterImpl$67;->val$listId:I

    iget-wide v4, p0, Ltwitter4j/AsyncTwitterImpl$67;->val$cursor:J

    invoke-interface/range {v0 .. v5}, Ltwitter4j/Twitter;->getUserListMembers(JIJ)Ltwitter4j/PagableResponseList;

    move-result-object v8

    .line 1230
    .local v8, users:Ltwitter4j/PagableResponseList;,"Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltwitter4j/TwitterListener;

    .line 1232
    .local v7, listener:Ltwitter4j/TwitterListener;
    :try_start_0
    invoke-interface {v7, v8}, Ltwitter4j/TwitterListener;->gotUserListMembers(Ltwitter4j/PagableResponseList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1233
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1236
    .end local v7           #listener:Ltwitter4j/TwitterListener;
    :cond_0
    return-void
.end method
