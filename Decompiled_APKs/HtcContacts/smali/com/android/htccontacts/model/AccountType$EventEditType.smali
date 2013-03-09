.class public Lcom/android/htccontacts/model/AccountType$EventEditType;
.super Lcom/android/htccontacts/model/AccountType$EditType;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventEditType"
.end annotation


# instance fields
.field private mYearOptional:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "rawValue"
    .parameter "labelRes"

    .prologue
    .line 360
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/model/AccountType$EditType;-><init>(II)V

    .line 361
    return-void
.end method


# virtual methods
.method public isYearOptional()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/htccontacts/model/AccountType$EventEditType;->mYearOptional:Z

    return v0
.end method

.method public setYearOptional(Z)Lcom/android/htccontacts/model/AccountType$EventEditType;
    .locals 0
    .parameter "yearOptional"

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/android/htccontacts/model/AccountType$EventEditType;->mYearOptional:Z

    .line 369
    return-object p0
.end method
