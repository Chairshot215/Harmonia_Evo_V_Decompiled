.class public Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;
.super Ljava/lang/Object;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/widget/GroupingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PositionMetadata"
.end annotation


# instance fields
.field private listPosition:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->listPosition:I

    return-void
.end method
