.class public Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;
.super Ljava/lang/Object;
.source "HtcSimpleSeparable.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# instance fields
.field public bottomSeparator:Landroid/widget/ImageView;

.field item:Lcom/htc/providers/uploads/UploadItem;

.field protected mDrawOnThis:Z

.field protected mSeparateID:Ljava/lang/String;

.field public topSeparator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "drawOnThis"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 50
    iput-boolean p2, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 51
    return-void
.end method


# virtual methods
.method public final getSeparateID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public getUploadItem()Lcom/htc/providers/uploads/UploadItem;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->item:Lcom/htc/providers/uploads/UploadItem;

    return-object v0
.end method

.method public setSeparateID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setSeparateID(Z)V
    .locals 0
    .parameter "drawOnThis"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 67
    return-void
.end method

.method public setUploadItem(Lcom/htc/providers/uploads/UploadItem;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->item:Lcom/htc/providers/uploads/UploadItem;

    .line 116
    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 5
    .parameter "listitem"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 76
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v4, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v2

    .line 79
    :cond_1
    if-nez p1, :cond_2

    move v2, v3

    .line 80
    goto :goto_0

    .line 83
    :cond_2
    instance-of v4, p1, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;

    if-nez v4, :cond_3

    move v2, v3

    .line 84
    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 86
    check-cast v1, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;

    .line 87
    .local v1, nextTag:Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;
    invoke-virtual {v1}, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, nextID:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_4

    if-eqz v0, :cond_0

    .line 91
    :cond_4
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_5

    if-nez v0, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    :cond_6
    move v2, v3

    .line 93
    goto :goto_0

    .line 96
    :cond_7
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    :cond_8
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v2, v3

    .line 103
    goto :goto_0

    .line 105
    :cond_b
    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 106
    goto :goto_0
.end method
