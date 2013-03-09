.class abstract Ltwitter4j/AsyncTwitter$AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTwitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/AsyncTwitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AsyncTask"
.end annotation


# instance fields
.field args:[Ljava/lang/Object;

.field listener:Ltwitter4j/TwitterListener;

.field method:I

.field private final this$0:Ltwitter4j/AsyncTwitter;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;ILtwitter4j/TwitterListener;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "method"
    .parameter "listener"
    .parameter "args"

    .prologue
    .line 2948
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2949
    iput p2, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->method:I

    .line 2950
    iput-object p3, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->listener:Ltwitter4j/TwitterListener;

    .line 2951
    iput-object p4, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->args:[Ljava/lang/Object;

    .line 2952
    return-void
.end method


# virtual methods
.method abstract invoke(Ltwitter4j/TwitterListener;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public run()V
    .locals 3

    .prologue
    .line 2958
    :try_start_0
    iget-object v1, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->listener:Ltwitter4j/TwitterListener;

    iget-object v2, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->args:[Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ltwitter4j/AsyncTwitter$AsyncTask;->invoke(Ltwitter4j/TwitterListener;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2964
    :cond_0
    :goto_0
    return-void

    .line 2959
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2960
    .local v0, te:Ltwitter4j/TwitterException;
    iget-object v1, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->listener:Ltwitter4j/TwitterListener;

    if-eqz v1, :cond_0

    .line 2961
    iget-object v1, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->listener:Ltwitter4j/TwitterListener;

    iget v2, p0, Ltwitter4j/AsyncTwitter$AsyncTask;->method:I

    invoke-interface {v1, v0, v2}, Ltwitter4j/TwitterListener;->onException(Ltwitter4j/TwitterException;I)V

    goto :goto_0
.end method
