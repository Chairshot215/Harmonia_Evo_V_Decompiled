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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    return-void
.end method


# virtual methods
.method public final getSeparateID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldDrawOnThis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public setSeparateID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    return-void
.end method

.method public setSeparateID(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v4, p1, Lcom/htc/widget/SimpleHtcListItemSeparable;

    if-eqz v4, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/htc/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v1}, Lcom/htc/widget/SimpleHtcListItemSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_3

    if-nez v0, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    goto :goto_0

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

    :cond_7
    iget-object v4, p0, Lcom/htc/widget/SimpleHtcListItemSeparable;->mSeparateID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method
