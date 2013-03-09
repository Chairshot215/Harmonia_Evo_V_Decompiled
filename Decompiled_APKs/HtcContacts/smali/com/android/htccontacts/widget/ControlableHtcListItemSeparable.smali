.class Lcom/android/htccontacts/widget/ControlableHtcListItemSeparable;
.super Lcom/htc/widget/SimpleHtcListItemSeparable;
.source "SeparatorControlInsertNewListAdapter.java"


# instance fields
.field protected mEnableSeparable:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/ControlableHtcListItemSeparable;->mEnableSeparable:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "id"
    .parameter "drawOnThis"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/ControlableHtcListItemSeparable;->mEnableSeparable:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "id"
    .parameter "drawOnThis"
    .parameter "enableSeparable"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/ControlableHtcListItemSeparable;->mEnableSeparable:Z

    .line 84
    iput-boolean p3, p0, Lcom/android/htccontacts/widget/ControlableHtcListItemSeparable;->mEnableSeparable:Z

    .line 85
    return-void
.end method


# virtual methods
.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "listitem"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/ControlableHtcListItemSeparable;->mEnableSeparable:Z

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/SimpleHtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
