.class interface abstract Lcom/google/android/gm/FilterPopup$SearchWrapper;
.super Ljava/lang/Object;
.source "FilterPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/FilterPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SearchWrapper"
.end annotation


# virtual methods
.method public abstract addToQuery(Ljava/lang/String;)V
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public abstract removeFromQuery(Ljava/lang/String;)V
.end method
