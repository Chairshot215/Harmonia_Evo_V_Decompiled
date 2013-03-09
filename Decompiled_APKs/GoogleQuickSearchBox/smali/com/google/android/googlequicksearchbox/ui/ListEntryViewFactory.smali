.class public interface abstract Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;
.super Ljava/lang/Object;
.source "ListEntryViewFactory.java"


# virtual methods
.method public abstract getView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Ljava/lang/String;
.end method

.method public abstract getViewTypes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
