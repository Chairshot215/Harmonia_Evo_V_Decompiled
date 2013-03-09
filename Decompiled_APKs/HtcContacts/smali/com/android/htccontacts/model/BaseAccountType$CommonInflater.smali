.class public abstract Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;
.super Ljava/lang/Object;
.source "BaseAccountType.java"

# interfaces
.implements Lcom/android/htccontacts/model/AccountType$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CommonInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 660
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    const-string v0, "data3"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    const-string v0, "data2"

    return-object v0
.end method

.method protected getTypeLabel(Landroid/content/res/Resources;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 676
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;->getTypeLabelResource(Ljava/lang/Integer;)I

    move-result v0

    .line 677
    .local v0, labelRes:I
    if-nez p2, :cond_0

    .line 678
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 682
    .end local p3
    :goto_0
    return-object v1

    .line 679
    .restart local p3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;->isCustom(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 680
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez p3, :cond_1

    const-string p3, ""

    .end local p3
    :cond_1
    aput-object p3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 682
    .restart local p3
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getTypeLabelResource(Ljava/lang/Integer;)I
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "values"

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;->getTypeColumn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 694
    .local v1, type:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;->getLabelColumn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, label:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;->getTypeLabel(Landroid/content/res/Resources;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;->getTypeColumn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 688
    .local v1, type:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;->getLabelColumn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, label:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;->getTypeLabel(Landroid/content/res/Resources;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 664
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
