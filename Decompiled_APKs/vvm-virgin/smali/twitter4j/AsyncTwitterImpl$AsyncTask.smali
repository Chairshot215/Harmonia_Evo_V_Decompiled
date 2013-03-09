.class abstract Ltwitter4j/AsyncTwitterImpl$AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTwitterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/AsyncTwitterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AsyncTask"
.end annotation


# instance fields
.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/TwitterListener;",
            ">;"
        }
    .end annotation
.end field

.field method:Ltwitter4j/TwitterMethod;

.field private final this$0:Ltwitter4j/AsyncTwitterImpl;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "method"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/TwitterMethod;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/TwitterListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2740
    .local p3, listeners:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iput-object p1, p0, Ltwitter4j/AsyncTwitterImpl$AsyncTask;->this$0:Ltwitter4j/AsyncTwitterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2741
    iput-object p2, p0, Ltwitter4j/AsyncTwitterImpl$AsyncTask;->method:Ltwitter4j/TwitterMethod;

    .line 2742
    iput-object p3, p0, Ltwitter4j/AsyncTwitterImpl$AsyncTask;->listeners:Ljava/util/List;

    .line 2743
    return-void
.end method


# virtual methods
.method abstract invoke(Ljava/util/List;)V
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
.end method

.method public run()V
    .locals 4

    .prologue
    .line 2749
    :try_start_0
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$AsyncTask;->listeners:Ljava/util/List;

    invoke-virtual {p0, v3}, Ltwitter4j/AsyncTwitterImpl$AsyncTask;->invoke(Ljava/util/List;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2760
    :cond_0
    return-void

    .line 2750
    :catch_0
    move-exception v2

    .line 2751
    .local v2, te:Ltwitter4j/TwitterException;
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$AsyncTask;->listeners:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 2752
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$AsyncTask;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/TwitterListener;

    .line 2754
    .local v1, listener:Ltwitter4j/TwitterListener;
    :try_start_1
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$AsyncTask;->method:Ltwitter4j/TwitterMethod;

    invoke-interface {v1, v2, v3}, Ltwitter4j/TwitterListener;->onException(Ltwitter4j/TwitterException;Ltwitter4j/TwitterMethod;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2755
    :catch_1
    move-exception v3

    goto :goto_0
.end method
