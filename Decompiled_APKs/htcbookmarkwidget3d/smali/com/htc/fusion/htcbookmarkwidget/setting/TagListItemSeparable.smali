.class public Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;
.super Ljava/lang/Object;
.source "TagListItemSeparable.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# instance fields
.field private bShouldDrawOnThis:Z

.field private mSeparateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "shouldDrawOnThis"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;->mSeparateId:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;->bShouldDrawOnThis:Z

    .line 14
    return-void
.end method


# virtual methods
.method public getSeparateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;->mSeparateId:Ljava/lang/String;

    return-object v0
.end method

.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;->bShouldDrawOnThis:Z

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 4
    .parameter "listitem"

    .prologue
    const/4 v2, 0x1

    .line 21
    if-nez p1, :cond_1

    .line 38
    .end local p1
    :cond_0
    :goto_0
    return v2

    .line 26
    .restart local p1
    :cond_1
    instance-of v3, p1, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;

    if-eqz v3, :cond_0

    .line 29
    check-cast p1, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;->getSeparateId()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, nextId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;->getSeparateId()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, myId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
