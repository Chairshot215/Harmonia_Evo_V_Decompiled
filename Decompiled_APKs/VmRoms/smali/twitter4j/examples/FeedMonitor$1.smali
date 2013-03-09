.class Ltwitter4j/examples/FeedMonitor$1;
.super Ljava/lang/Object;
.source "FeedMonitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/examples/FeedMonitor;->check()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sun/syndication/feed/synd/SyndEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/examples/FeedMonitor;


# direct methods
.method constructor <init>(Ltwitter4j/examples/FeedMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Ltwitter4j/examples/FeedMonitor$1;->this$0:Ltwitter4j/examples/FeedMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sun/syndication/feed/synd/SyndEntry;Lcom/sun/syndication/feed/synd/SyndEntry;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 137
    invoke-interface {p1}, Lcom/sun/syndication/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p2}, Lcom/sun/syndication/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    check-cast p1, Lcom/sun/syndication/feed/synd/SyndEntry;

    .end local p1
    check-cast p2, Lcom/sun/syndication/feed/synd/SyndEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ltwitter4j/examples/FeedMonitor$1;->compare(Lcom/sun/syndication/feed/synd/SyndEntry;Lcom/sun/syndication/feed/synd/SyndEntry;)I

    move-result v0

    return v0
.end method
