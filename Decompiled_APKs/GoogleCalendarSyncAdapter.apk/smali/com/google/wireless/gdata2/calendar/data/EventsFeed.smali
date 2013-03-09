.class public Lcom/google/wireless/gdata2/calendar/data/EventsFeed;
.super Lcom/google/wireless/gdata2/data/Feed;
.source "EventsFeed.java"


# instance fields
.field private timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/wireless/gdata2/data/Feed;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;->timezone:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .parameter "timezone"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/EventsFeed;->timezone:Ljava/lang/String;

    .line 32
    return-void
.end method
