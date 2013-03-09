.class public final Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;
.super Lcom/htc/widget/HtcListItemSeparableType;
.source "DisplaySuggestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplaySuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListItemCache"
.end annotation


# instance fields
.field public mHtcListItem2LineText:Lcom/htc/widget/HtcListItem2LineText;

.field public mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

.field public mHtcListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

.field public mLeftSpaceView:Landroid/view/View;

.field public mPos:I

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0, v0}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    .line 165
    iput v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mType:I

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$ListItemCache;->mPos:I

    .line 168
    return-void
.end method
