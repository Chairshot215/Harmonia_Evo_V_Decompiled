.class public Lcom/android/htccontacts/group/FrequencyObservable;
.super Landroid/database/DataSetObservable;
.source "FrequencyObservable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 9
    return-void
.end method
