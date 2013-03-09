.class public Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;
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
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 42
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "drawOnThis"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 48
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 49
    iput-boolean p2, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 50
    return-void
.end method


# virtual methods
.method public final getSeparateID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 54
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 64
    iget-boolean v0, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public setSeparateID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 58
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 59
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setSeparateID(Z)V
    .locals 0
    .parameter "drawOnThis"

    .prologue
    .line 68
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 69
    iput-boolean p1, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 70
    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 75
    iget-boolean v0, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 5
    .parameter "listitem"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 82
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v2

    .line 86
    :cond_1
    instance-of v4, p1, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 89
    check-cast v1, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;

    .line 90
    .local v1, nextTag:Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;
    invoke-virtual {v1}, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, nextID:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    move v2, v3

    .line 92
    goto :goto_0

    .line 94
    :cond_2
    iget-object v4, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_3

    if-nez v0, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_0

    .line 99
    :cond_4
    iget-object v4, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 100
    goto :goto_0

    .line 103
    :cond_5
    iget-object v4, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    :cond_7
    iget-object v4, p0, Lcom/htc/android/worldclock/widget/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 110
    goto :goto_0
.end method
