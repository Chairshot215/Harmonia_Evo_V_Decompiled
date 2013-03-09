.class public abstract Lcom/htc/opensense/playground/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract parseFeedFromJson(Ljava/lang/String;)Lcom/htc/opensense/social/data/Feed;
.end method

.method public abstract parseMediumFromJson(Ljava/lang/String;)Lcom/htc/opensense/social/data/Medium;
.end method

.method public abstract parsePersonFromJson(Ljava/lang/String;)Lcom/htc/opensense/social/data/Person;
.end method

.method public abstract parseProfileFromJson(Ljava/lang/String;)Lcom/htc/opensense/social/data/Profile;
.end method
