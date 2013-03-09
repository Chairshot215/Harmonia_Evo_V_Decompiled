.class public interface abstract Ltwitter4j/api/SavedSearchesMethods;
.super Ljava/lang/Object;
.source "SavedSearchesMethods.java"


# virtual methods
.method public abstract createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract destroySavedSearch(I)Ltwitter4j/SavedSearch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract getSavedSearches()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract showSavedSearch(I)Ltwitter4j/SavedSearch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method
