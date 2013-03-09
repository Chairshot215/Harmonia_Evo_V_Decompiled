.class public interface abstract Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;
.super Ljava/lang/Object;
.source "RlzDebugViewListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzDebugViewListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewInfo"
.end annotation


# virtual methods
.method public abstract buildItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method public abstract getActivityTitleResource()I
.end method

.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract getDefaultSortOrder()I
.end method

.method public abstract getListEmptyStringResource()I
.end method

.method public abstract getOutColumns()[I
.end method

.method public abstract getProjection()[Ljava/lang/String;
.end method

.method public abstract getSortColumns()[Ljava/lang/String;
.end method

.method public abstract getSortOrderMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;
.end method
