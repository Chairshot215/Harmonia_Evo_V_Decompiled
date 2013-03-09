.class public Lcom/htc/launcher/widget/HtcSimpleSeparable;
.super Ljava/lang/Object;
.source "HtcSimpleSeparable.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# instance fields
.field protected mDrawOnThis:Z

.field protected mSeparateID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "drawOnThis"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 44
    iput-boolean p2, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 45
    return-void
.end method


# virtual methods
.method public final getSeparateID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public setSeparateID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setSeparateID(Z)V
    .locals 0
    .parameter "drawOnThis"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 61
    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 5
    .parameter "listitem"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 69
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    instance-of v4, p1, Lcom/htc/launcher/widget/HtcSimpleSeparable;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 76
    check-cast v1, Lcom/htc/launcher/widget/HtcSimpleSeparable;

    .line 77
    .local v1, nextTag:Lcom/htc/launcher/widget/HtcSimpleSeparable;
    invoke-virtual {v1}, Lcom/htc/launcher/widget/HtcSimpleSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, nextID:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    move v2, v3

    .line 79
    goto :goto_0

    .line 81
    :cond_2
    iget-object v4, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_3

    if-nez v0, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_0

    .line 86
    :cond_4
    iget-object v4, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 87
    goto :goto_0

    .line 90
    :cond_5
    iget-object v4, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    :cond_7
    iget-object v4, p0, Lcom/htc/launcher/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 97
    goto :goto_0
.end method
