.class public Lcom/htc/widget/SimpleHtcListItemSeparable;
.super Ljava/lang/Object;
.source "SimpleHtcListItemSeparable.java"

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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "drawOnThis"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    .line 41
    return-void
.end method


# virtual methods
.method public final getSeparateID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public setSeparateID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSeparateID(Z)V
    .locals 0
    .parameter "drawOnThis"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    .line 57
    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 5
    .parameter "listitem"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v2

    .line 69
    :cond_1
    instance-of v4, p1, Lcom/htc/widget/SimpleHtcListItemSeparable;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 72
    check-cast v1, Lcom/htc/widget/SimpleHtcListItemSeparable;

    .line 73
    .local v1, nextTag:Lcom/htc/widget/SimpleHtcListItemSeparable;
    invoke-virtual {v1}, Lcom/htc/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, nextID:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    move v2, v3

    .line 75
    goto :goto_0

    .line 77
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_3

    if-nez v0, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_0

    .line 82
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 84
    goto :goto_0

    .line 87
    :cond_5
    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    :cond_7
    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 94
    goto :goto_0
.end method
