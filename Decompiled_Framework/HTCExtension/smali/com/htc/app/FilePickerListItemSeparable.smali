.class public Lcom/htc/app/FilePickerListItemSeparable;
.super Ljava/lang/Object;
.source "FilePickerListItemSeparable.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# instance fields
.field isSeparator:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/htc/widget/HtcListItemSeparable;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/htc/app/FilePickerListItemSeparable;

    iget-boolean v0, v0, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    if-nez v0, :cond_4

    check-cast p1, Lcom/htc/app/FilePickerListItemSeparable;

    iget-boolean v0, p1, Lcom/htc/app/FilePickerListItemSeparable;->isSeparator:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
