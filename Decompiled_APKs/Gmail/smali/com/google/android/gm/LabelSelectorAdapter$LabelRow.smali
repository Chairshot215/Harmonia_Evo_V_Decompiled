.class public Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;
.super Ljava/lang/Object;
.source "LabelSelectorAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LabelSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LabelRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsPresent:Z

.field private final mLabel:Lcom/google/android/gm/provider/Label;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/Label;Z)V
    .locals 0
    .parameter "label"
    .parameter "isPresent"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mLabel:Lcom/google/android/gm/provider/Label;

    .line 37
    iput-boolean p2, p0, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mIsPresent:Z

    .line 38
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;)I
    .locals 4
    .parameter "another"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mIsPresent:Z

    iget-boolean v3, p1, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mIsPresent:Z

    if-eq v2, v3, :cond_2

    .line 57
    iget-boolean v2, p0, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mIsPresent:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->isSystemLabel()Z

    move-result v2

    iget-object v3, p1, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Label;->isSystemLabel()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 59
    iget-object v2, p0, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->isSystemLabel()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->compareTo(Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;)I

    move-result v0

    return v0
.end method

.method public getLabel()Lcom/google/android/gm/provider/Label;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mLabel:Lcom/google/android/gm/provider/Label;

    return-object v0
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mIsPresent:Z

    return v0
.end method

.method public setIsPresent(Z)V
    .locals 0
    .parameter "isPresent"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->mIsPresent:Z

    .line 50
    return-void
.end method
