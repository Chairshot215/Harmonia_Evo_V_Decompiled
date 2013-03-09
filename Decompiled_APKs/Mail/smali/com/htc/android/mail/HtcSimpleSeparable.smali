.class public Lcom/htc/android/mail/HtcSimpleSeparable;
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
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "drawOnThis"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 47
    return-void
.end method


# virtual methods
.method public final getSeparateID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public setSeparateID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSeparateID(Z)V
    .locals 0
    .parameter "drawOnThis"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mDrawOnThis:Z

    .line 63
    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mDrawOnThis:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 5
    .parameter "listitem"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 71
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v2

    .line 75
    :cond_1
    instance-of v4, p1, Lcom/htc/android/mail/HtcSimpleSeparable;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 78
    check-cast v1, Lcom/htc/android/mail/HtcSimpleSeparable;

    .line 79
    .local v1, nextTag:Lcom/htc/android/mail/HtcSimpleSeparable;
    invoke-virtual {v1}, Lcom/htc/android/mail/HtcSimpleSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, nextID:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    move v2, v3

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-nez v4, :cond_3

    if-nez v0, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_0

    .line 88
    :cond_4
    iget-object v4, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 89
    goto :goto_0

    .line 92
    :cond_5
    iget-object v4, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    :cond_7
    iget-object v4, p0, Lcom/htc/android/mail/HtcSimpleSeparable;->mSeparateID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 99
    goto :goto_0
.end method
