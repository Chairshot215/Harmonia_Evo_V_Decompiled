.class public Lcom/android/htccontacts/widget/BaseContactListItemCache;
.super Lcom/htc/widget/HtcListItemSeparableType;
.source "BaseContactListItemCache.java"


# instance fields
.field public mHtcListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

.field public mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

.field public mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

.field public mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

.field public mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

.field public primaryBuffer:Landroid/database/CharArrayBuffer;

.field public secondaryBuffer:Landroid/database/CharArrayBuffer;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2
    .parameter "is_top_round"
    .parameter "is_bottom_round"

    .prologue
    const/16 v1, 0x80

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    .line 13
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    .line 14
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/BaseContactListItemCache;->secondaryBuffer:Landroid/database/CharArrayBuffer;

    .line 27
    return-void
.end method
