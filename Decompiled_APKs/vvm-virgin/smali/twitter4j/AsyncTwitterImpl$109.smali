.class Ltwitter4j/AsyncTwitterImpl$109;
.super Ltwitter4j/AsyncTwitterImpl$AsyncTask;
.source "AsyncTwitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitterImpl;->updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitterImpl;

.field private final val$profileBackgroundColor:Ljava/lang/String;

.field private final val$profileLinkColor:Ljava/lang/String;

.field private final val$profileSidebarBorderColor:Ljava/lang/String;

.field private final val$profileSidebarFillColor:Ljava/lang/String;

.field private final val$profileTextColor:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1960
    .local p3, x1:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iput-object p1, p0, Ltwitter4j/AsyncTwitterImpl$109;->this$0:Ltwitter4j/AsyncTwitterImpl;

    iput-object p4, p0, Ltwitter4j/AsyncTwitterImpl$109;->val$profileBackgroundColor:Ljava/lang/String;

    iput-object p5, p0, Ltwitter4j/AsyncTwitterImpl$109;->val$profileTextColor:Ljava/lang/String;

    iput-object p6, p0, Ltwitter4j/AsyncTwitterImpl$109;->val$profileLinkColor:Ljava/lang/String;

    iput-object p7, p0, Ltwitter4j/AsyncTwitterImpl$109;->val$profileSidebarFillColor:Ljava/lang/String;

    iput-object p8, p0, Ltwitter4j/AsyncTwitterImpl$109;->val$profileSidebarBorderColor:Ljava/lang/String;

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
    .line 1963
    .local p1, listeners:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl$109;->this$0:Ltwitter4j/AsyncTwitterImpl;

    invoke-static {v0}, Ltwitter4j/AsyncTwitterImpl;->access$000(Ltwitter4j/AsyncTwitterImpl;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitterImpl$109;->val$profileBackgroundColor:Ljava/lang/String;

    iget-object v2, p0, Ltwitter4j/AsyncTwitterImpl$109;->val$profileTextColor:Ljava/lang/String;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$109;->val$profileLinkColor:Ljava/lang/String;

    iget-object v4, p0, Ltwitter4j/AsyncTwitterImpl$109;->val$profileSidebarFillColor:Ljava/lang/String;

    iget-object v5, p0, Ltwitter4j/AsyncTwitterImpl$109;->val$profileSidebarBorderColor:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Ltwitter4j/Twitter;->updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;

    move-result-object v8

    .line 1967
    .local v8, user:Ltwitter4j/User;
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

    .line 1969
    .local v7, listener:Ltwitter4j/TwitterListener;
    :try_start_0
    invoke-interface {v7, v8}, Ltwitter4j/TwitterListener;->updatedProfileColors(Ltwitter4j/User;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1970
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1973
    .end local v7           #listener:Ltwitter4j/TwitterListener;
    :cond_0
    return-void
.end method
